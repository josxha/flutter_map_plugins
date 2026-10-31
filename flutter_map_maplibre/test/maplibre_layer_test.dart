import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:latlong2/latlong.dart';
import 'package:maplibre/maplibre.dart' as ml;
import 'package:maplibre_platform_interface/maplibre_platform_interface.dart'
    show MapLibrePlatform;

import 'fake_maplibre_platform.dart';

void main() {
  late FakeMapLibrePlatform platform;

  setUp(() {
    platform = FakeMapLibrePlatform();
    MapLibrePlatform.instance = platform;
  });

  Future<MapController> pumpLayer(
    WidgetTester tester, {
    MapLibreLayer layer = const MapLibreLayer(),
  }) async {
    final controller = MapController();
    await tester.pumpWidget(
      Directionality(
        textDirection: TextDirection.ltr,
        child: FlutterMap(
          mapController: controller,
          options: const MapOptions(
            initialCenter: LatLng(10, 20),
            initialZoom: 5,
            initialRotation: 40,
          ),
          children: [layer],
        ),
      ),
    );
    await tester.pump();
    return controller;
  }

  testWidgets('uses the OpenFreeMap liberty style by default', (tester) async {
    await pumpLayer(tester);
    final options = platform.lastState!.widget.options;
    expect(options.style, const ml.MapStyle.url(MapLibreLayer.defaultStyleUrl));
    expect(
      MapLibreLayer.defaultStyleUrl,
      'https://tiles.openfreemap.org/styles/liberty',
    );
  });

  testWidgets('disables tilting and gestures', (tester) async {
    await pumpLayer(tester);
    final options = platform.lastState!.widget.options;
    expect(options.maxPitch, 0);
    expect(options.gestures, const ml.MapGestures.none());
    expect(platform.lastState!.widget.gestureRecognizers, isEmpty);
  });

  testWidgets('initial camera follows the flutter_map camera', (tester) async {
    await pumpLayer(tester);
    final camera = platform.lastState!.widget.options.initCamera;
    expect(camera, isA<ml.InitialCamera>());
    final position = (camera! as dynamic).center as ml.Geographic?;
    expect(position?.lat, 10);
    expect(position?.lon, 20);
  });

  testWidgets('passes all parameters to MapLibreMap', (tester) async {
    const bounds = ml.GeoBox(west: -10, south: -10, east: 10, north: 10);
    ml.MapController? createdController;
    const childKey = ValueKey('child');

    await pumpLayer(
      tester,
      layer: MapLibreLayer(
        style: const ml.MapStyle.json('{}'),
        minZoom: 2,
        maxZoom: 12,
        maxBounds: bounds,
        paused: true,
        children: const [SizedBox(key: childKey)],
        onMapCreated: (controller) => createdController = controller,
        onStyleLoaded: (_) {},
        onEvent: (_) {},
      ),
    );

    final widget = platform.lastState!.widget;
    expect(widget.options.style, const ml.MapStyle.json('{}'));
    expect(widget.options.minZoom, 2);
    expect(widget.options.maxZoom, 12);
    expect(widget.options.maxBounds, bounds);
    expect(widget.paused, isTrue);
    expect(find.byKey(childKey), findsOneWidget);
    expect(createdController, same(platform.lastState));

    expect(widget.onStyleLoaded, isNotNull);
    expect(widget.onEvent, isNotNull);
  });

  testWidgets('moving the flutter_map camera moves the MapLibre camera', (
    tester,
  ) async {
    final controller = await pumpLayer(tester);
    final state = platform.lastState!;
    state.moveCameraCalls.clear();

    controller.moveAndRotate(const LatLng(30, 40), 7, 90);
    await tester.pump();

    expect(state.moveCameraCalls, isNotEmpty);
    final call = state.moveCameraCalls.last;
    expect(call.center?.lat, closeTo(30, 0.0001));
    expect(call.center?.lon, closeTo(40, 0.0001));
    // MapLibre zoom is one level lower and the bearing is inverted.
    expect(call.zoom, closeTo(6, 0.0001));
    expect(call.bearing, closeTo(-90, 0.0001));
  });
}
