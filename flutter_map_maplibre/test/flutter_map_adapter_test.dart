import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart';
import 'package:maplibre_platform_interface/maplibre_platform_interface.dart'
    show MapLibrePlatform;

import 'fake_maplibre_platform.dart';

/// Records the flutter_map camera and controller of each build.
class _Probe extends StatelessWidget {
  const new(this.builds);

  final List<(fm.MapCamera, fm.MapController)> builds;

  @override
  Widget build(BuildContext context) {
    builds.add((fm.MapCamera.of(context), fm.MapController.of(context)));
    return const SizedBox.expand();
  }
}

void main() {
  late FakeMapLibrePlatform platform;

  setUp(() {
    platform = FakeMapLibrePlatform();
    MapLibrePlatform.instance = platform;
  });

  testWidgets('renders nothing outside of a MapLibreMap', (tester) async {
    const childKey = ValueKey('child');
    await tester.pumpWidget(
      const Directionality(
        textDirection: TextDirection.ltr,
        child: FlutterMapAdapter(child: SizedBox(key: childKey)),
      ),
    );
    expect(find.byKey(childKey), findsNothing);
  });

  Future<List<(fm.MapCamera, fm.MapController)>> pumpAdapter(
    WidgetTester tester,
  ) async {
    final builds = <(fm.MapCamera, fm.MapController)>[];
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: MapLibreMap(
          children: [FlutterMapAdapter(child: _Probe(builds))],
        ),
      ),
    );
    return builds;
  }

  testWidgets('draws the layer at the camera of the frame on screen', (
    tester,
  ) async {
    final builds = await pumpAdapter(tester);
    platform.lastState!.showCamera(
      const CameraPosition(
        center: Geographic(lon: 10, lat: 20),
        zoom: 3,
        bearing: 30,
        pitch: 0,
      ),
    );
    await tester.pump();

    final camera = builds.last.$1;
    expect(camera.center, const LatLng(20, 10));
    expect(camera.zoom, 4);
    expect(camera.rotation, -30);
    expect(camera.nonRotatedSize, const Size(800, 600));
  });

  testWidgets('keeps one flutter_map controller while the camera moves', (
    tester,
  ) async {
    final builds = await pumpAdapter(tester);
    for (var i = 1; i <= 3; i++) {
      platform.lastState!.showCamera(
        CameraPosition(
          center: Geographic(lon: i.toDouble(), lat: 0),
          zoom: 2,
          bearing: 0,
          pitch: 0,
        ),
      );
      await tester.pump();
    }
    expect(builds.length, greaterThanOrEqualTo(4));
    expect(builds.map((b) => b.$2).toSet(), hasLength(1));
  });

  testWidgets('the flutter_map controller moves the MapLibre camera', (
    tester,
  ) async {
    final builds = await pumpAdapter(tester);
    final controller = builds.last.$2;
    final state = platform.lastState!..moveCameraCalls.clear();

    expect(controller.move(const LatLng(30, 40), 7), isTrue);
    expect(controller.rotate(90), isTrue);

    expect(state.moveCameraCalls, hasLength(2));
    final move = state.moveCameraCalls.first;
    expect(move.center?.lat, closeTo(30, 1e-9));
    expect(move.center?.lon, closeTo(40, 1e-9));
    expect(move.zoom, 6);
    expect(state.moveCameraCalls.last.bearing, -90);
  });

  testWidgets('the flutter_map controller emits the MapLibre camera changes', (
    tester,
  ) async {
    final builds = await pumpAdapter(tester);
    final events = <fm.MapEvent>[];
    final sub = builds.last.$2.mapEventStream.listen(events.add);
    addTearDown(sub.cancel);

    platform.lastState!.showCamera(
      const CameraPosition(
        center: Geographic(lon: 5, lat: 5),
        zoom: 2,
        bearing: 0,
        pitch: 0,
      ),
    );
    await tester.pump();

    expect(events.whereType<fm.MapEventMove>(), hasLength(1));
    expect(
      events.whereType<fm.MapEventMove>().single.camera.center,
      const LatLng(5, 5),
    );
  });

  testWidgets('uses the FlutterMap controller inside a MapLibreLayer', (
    tester,
  ) async {
    final builds = <(fm.MapCamera, fm.MapController)>[];
    final fmController = fm.MapController();
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: fm.FlutterMap(
          mapController: fmController,
          options: const fm.MapOptions(
            initialCenter: LatLng(10, 20),
            initialZoom: 5,
            maxZoom: 18,
          ),
          children: [
            MapLibreLayer(children: [FlutterMapAdapter(child: _Probe(builds))]),
          ],
        ),
      ),
    );
    await tester.pump();

    expect(builds.last.$2, same(fmController));
    // The layer is drawn at the camera of the MapLibre frame on screen, with
    // the zoom limits of the FlutterMap.
    final camera = builds.last.$1;
    expect(camera.center, const LatLng(0, 0));
    expect(camera.maxZoom, 18);
  });
}
