import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart' as ml;

/// A style without network resources, so that the tests run offline.
const _style = ml.MapStyle.json('''
{
  "version": 8,
  "sources": {},
  "layers": [
    {"id": "background", "type": "background",
     "paint": {"background-color": "#ddeeff"}}
  ]
}
''');

const _markerKey = ValueKey<String>('marker');
const _marker = LatLng(48.2, 16.4);

/// A flutter_map marker layer with one 20x20 marker centered on [_marker].
const fm.MarkerLayer _markerLayer = fm.MarkerLayer(
  markers: [
    fm.Marker(
      point: _marker,
      width: 20,
      height: 20,
      child: SizedBox.expand(key: _markerKey),
    ),
  ],
);

/// Records in each build where the `flutter_map` camera of the layers puts
/// [_marker], and where MapLibre draws it in the map frame on screen.
class _AlignmentProbe extends StatelessWidget {
  const new(this.samples);

  final List<(Offset, Offset)> samples;

  @override
  Widget build(BuildContext context) {
    final layer = fm.MapCamera.of(context).latLngToScreenOffset(_marker);
    final map = ml.MapController.of(context)
        .toScreenLocation(_marker.toPosition());
    samples.add((layer, map));
    return const SizedBox.shrink();
  }
}

/// Fails if a sample of [_AlignmentProbe] is off by a pixel or more.
void _expectAligned(List<(Offset, Offset)> samples) {
  expect(samples, isNotEmpty);
  for (final (i, (layer, map)) in samples.indexed) {
    expect(
      (layer - map).distance,
      lessThan(1),
      reason: 'build $i: layer puts the marker at $layer, map at $map',
    );
  }
}

/// Runs [body] as a test that [_testEnded] can recognize.
void _testWidgets(String description, WidgetTesterCallback body) {
  testWidgets(description, (tester) {
    final test = _runningTest = Object();
    // Runs when the test ends, also when it fails while its code still runs.
    addTearDown(() {
      if (_runningTest == test) _runningTest = null;
    });
    return runZoned(() => body(tester), zoneValues: {#mapTest: test});
  });
}

/// Identifies the running test, see [_testWidgets].
Object? _runningTest;

/// Whether the test that runs this code has already ended, for example
/// because it failed. Its code must then stop pumping frames, because the
/// frames belong to the next test, and the conflict would hide the error that
/// failed the test.
bool _testEnded(WidgetTester tester) =>
    !tester.binding.inTest || Zone.current[#mapTest] != _runningTest;

/// Pumps frames until [condition] holds, for up to [timeout] of real time.
Future<void> _pumpUntil(
  WidgetTester tester,
  bool Function() condition, {
  Duration timeout = const Duration(seconds: 20),
  String? reason,
}) async {
  final stopwatch = Stopwatch()..start();
  while (!condition()) {
    if (_testEnded(tester)) return;
    if (stopwatch.elapsed > timeout) {
      fail('Timed out after $timeout${reason == null ? '' : ': $reason'}');
    }
    await tester.pump(const Duration(milliseconds: 16));
    await Future<void>.delayed(const Duration(milliseconds: 16));
  }
}

/// Pumps frames for [duration] of real time.
Future<void> _pumpFor(WidgetTester tester, Duration duration) async {
  final stopwatch = Stopwatch()..start();
  while (stopwatch.elapsed < duration && !_testEnded(tester)) {
    await tester.pump(const Duration(milliseconds: 16));
    await Future<void>.delayed(const Duration(milliseconds: 16));
  }
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('MapLibreLayer inside FlutterMap', () {
    late fm.MapController fmController;
    late ml.MapController mapController;

    Future<void> pumpMap(
      WidgetTester tester, {
      List<Widget> children = const [],
    }) async {
      fmController = fm.MapController();
      final created = Completer<ml.MapController>();
      final styleLoaded = Completer<void>();
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          // A new map for each test.
          child: fm.FlutterMap(
            key: UniqueKey(),
            mapController: fmController,
            options: const fm.MapOptions(
              initialCenter: LatLng(48, 16),
              initialZoom: 6,
              initialRotation: 30,
            ),
            children: [
              MapLibreLayer(
                style: _style,
                onMapCreated: (controller) {
                  if (!created.isCompleted) created.complete(controller);
                },
                onStyleLoaded: (_) {
                  if (!styleLoaded.isCompleted) styleLoaded.complete();
                },
                children: [
                  const FlutterMapAdapter(child: _markerLayer),
                  ...children,
                ],
              ),
            ],
          ),
        ),
      );
      await _pumpUntil(tester, () => created.isCompleted, reason: 'map');
      mapController = await created.future;
      await _pumpUntil(tester, () => styleLoaded.isCompleted, reason: 'style');
    }

    _testWidgets('the MapLibre camera follows the flutter_map camera', (
      tester,
    ) async {
      await pumpMap(tester);

      fmController.moveAndRotate(const LatLng(40, 10), 8, 30);
      await _pumpUntil(tester, () {
        final camera = mapController.getCamera();
        return (camera.center.lat - 40).abs() < 1e-6 &&
            (camera.center.lon - 10).abs() < 1e-6 &&
            (camera.zoom - 7).abs() < 1e-6 &&
            (camera.bearing + 30).abs() < 1e-6;
      }, reason: 'camera');
    });

    _testWidgets('layers in its children stay on the map frame on screen', (
      tester,
    ) async {
      final samples = <(Offset, Offset)>[];
      await pumpMap(
        tester,
        children: [FlutterMapAdapter(child: _AlignmentProbe(samples))],
      );

      // Pan with flutter_map's gestures.
      final center = tester.getCenter(find.byType(fm.FlutterMap));
      final gesture = await tester.startGesture(center);
      for (var i = 0; i < 30; i++) {
        await gesture.moveBy(const Offset(-8, 4));
        await tester.pump(const Duration(milliseconds: 16));
        await Future<void>.delayed(const Duration(milliseconds: 16));
      }
      await gesture.up();
      await _pumpFor(tester, const Duration(milliseconds: 500));

      _expectAligned(samples);
      // The map followed the pan.
      expect(samples.map((s) => s.$2).toSet().length, greaterThan(10));
    });
  });

  group('FlutterMapAdapter inside MapLibreMap', () {
    late ml.MapController mapController;
    fm.MapController? builtController;

    Future<void> pumpMap(
      WidgetTester tester, {
      List<Widget> children = const [],
    }) async {
      builtController = null;
      final created = Completer<ml.MapController>();
      final styleLoaded = Completer<void>();
      await tester.pumpWidget(
        Directionality(
          textDirection: TextDirection.ltr,
          // A new map for each test.
          child: ml.MapLibreMap(
            key: UniqueKey(),
            options: const ml.MapOptions(
              style: _style,
              initCamera: ml.CameraUpdate.position(
                center: ml.Geographic(lon: 16, lat: 48),
                zoom: 5,
              ),
              maxPitch: 0,
            ),
            onMapCreated: (controller) {
              if (!created.isCompleted) created.complete(controller);
            },
            onStyleLoaded: (_) {
              if (!styleLoaded.isCompleted) styleLoaded.complete();
            },
            children: [
              FlutterMapAdapter(
                child: Builder(
                  builder: (context) {
                    builtController = fm.MapController.of(context);
                    return _markerLayer;
                  },
                ),
              ),
              ...children,
            ],
          ),
        ),
      );
      await _pumpUntil(tester, () => created.isCompleted, reason: 'map');
      mapController = await created.future;
      await _pumpUntil(tester, () => styleLoaded.isCompleted, reason: 'style');
      await _pumpUntil(
        tester,
        () => builtController != null,
        reason: 'flutter_map layers',
      );
    }

    _testWidgets('a drag moves the map as far as the pointer', (tester) async {
      await pumpMap(tester);
      final mapFinder = find.byType(ml.MapLibreMap);
      final topLeft = tester.getTopLeft(mapFinder);
      final gesture = await tester.startGesture(tester.getCenter(mapFinder));
      // The drag starts after the touch slop.
      var pointer = tester.getCenter(mapFinder);
      for (var i = 0; i < 5; i++) {
        await gesture.moveBy(const Offset(-10, 5));
        pointer += const Offset(-10, 5);
        await tester.pump(const Duration(milliseconds: 16));
        await Future<void>.delayed(const Duration(milliseconds: 16));
      }
      await _pumpFor(tester, const Duration(milliseconds: 100));
      final grabbed = mapController.toLngLat(pointer - topLeft);

      for (var i = 0; i < 20; i++) {
        await gesture.moveBy(const Offset(-10, 5));
        pointer += const Offset(-10, 5);
        await tester.pump(const Duration(milliseconds: 16));
        await Future<void>.delayed(const Duration(milliseconds: 16));
      }
      // Wait before lifting the finger so that the drag doesn't fling.
      await _pumpFor(tester, const Duration(milliseconds: 300));
      await gesture.up();
      await _pumpFor(tester, const Duration(milliseconds: 300));

      final grabbedNow = mapController.toScreenLocation(grabbed) + topLeft;
      expect(
        (grabbedNow - pointer).distance,
        lessThan(2),
        reason: 'the grabbed location is at $grabbedNow, pointer at $pointer',
      );
    });

    _testWidgets('flutter_map layers stay on the map frame on screen', (
      tester,
    ) async {
      final samples = <(Offset, Offset)>[];
      await pumpMap(
        tester,
        children: [FlutterMapAdapter(child: _AlignmentProbe(samples))],
      );
      final mapFinder = find.byType(ml.MapLibreMap);
      final gesture = await tester.startGesture(tester.getCenter(mapFinder));
      for (var i = 0; i < 30; i++) {
        await gesture.moveBy(const Offset(8, -6));
        await tester.pump(const Duration(milliseconds: 16));
        await Future<void>.delayed(const Duration(milliseconds: 16));
      }
      await gesture.up();
      await _pumpFor(tester, const Duration(milliseconds: 500));

      _expectAligned(samples);
      expect(samples.map((s) => s.$2).toSet().length, greaterThan(10));
    });

    _testWidgets('the flutter_map controller moves the MapLibre camera', (
      tester,
    ) async {
      await pumpMap(tester);
      final fmController = builtController!;
      expect(fmController.move(const LatLng(30, 20), 9), isTrue);
      await _pumpUntil(tester, () {
        final camera = mapController.getCamera();
        return (camera.center.lat - 30).abs() < 1e-6 &&
            (camera.center.lon - 20).abs() < 1e-6 &&
            (camera.zoom - 8).abs() < 1e-6;
      }, reason: 'camera');
      // The layers see the new camera once the map shows it.
      await _pumpUntil(
        tester,
        () => (fmController.camera.zoom - 9).abs() < 1e-6,
        reason: 'flutter_map camera',
      );
    });
  });
}
