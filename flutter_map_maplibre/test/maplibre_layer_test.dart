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
    expect(camera, isA<ml.CameraUpdatePosition>());
    final position = (camera! as ml.CameraUpdatePosition).center;
    expect(position?.lat, 10);
    expect(position?.lon, 20);
  });

  testWidgets('passes all typed event callbacks', (tester) async {
    const bounds = ml.GeoBox(west: -10, south: -10, east: 10, north: 10);
    ml.MapController? createdController;
    const childKey = ValueKey('child');

    final events = <ml.MapEvent>[];
    void record(ml.MapEvent event) {
      events.add(event);
    }

    Future<void> recordAsync(ml.MapEvent event) async {
      events.add(event);
    }

    const point = ml.Geographic(lon: 1, lat: 2);
    const camera = ml.CameraPosition(
      center: point,
      zoom: 3,
      bearing: 4,
      pitch: 0,
    );
    const reason = ml.CameraChangeReason.programmatic;

    const click = ml.MapEventClick(point: point, screenPoint: Offset.zero);
    final doubleClick = ml.MapEventDoubleClick(
      point: point,
      screenPoint: Offset.zero,
    );
    const secondaryClick = ml.MapEventSecondaryClick(
      point: point,
      screenPoint: Offset.zero,
    );
    const longClick = ml.MapEventLongClick(
      point: point,
      screenPoint: Offset.zero,
    );
    final dragStart = ml.MapEventDragStart(
      point: point,
      screenPoint: Offset.zero,
    );
    const drag = ml.MapEventDrag(point: point, screenPoint: Offset.zero);
    const dragEnd = ml.MapEventDragEnd(point: point, screenPoint: Offset.zero);
    const pointerMove = ml.MapEventPointerMove(
      point: point,
      screenPoint: Offset.zero,
    );
    const pointerLeave = ml.MapEventPointerLeave();
    const cameraMoveStart = ml.MapEventCameraMoveStart(reason: reason);
    const cameraMove = ml.MapEventCameraMove(camera: camera, reason: reason);
    const cameraMoveEnd = ml.MapEventCameraMoveEnd(
      camera: camera,
      reason: reason,
    );
    const idle = ml.MapEventIdle();
    const error = ml.MapEventError(
      kind: ml.MapErrorKind.other,
      message: 'test error',
    );
    const styleImageMissing = ml.MapEventStyleImageMissing(id: 'missing');
    const loadingStarted = ml.MapEventLoadingStarted();
    const loadingFinished = ml.MapEventLoadingFinished();
    const sourceChanged = ml.MapEventSourceChanged(sourceId: 'source');
    const tile = ml.MapEventTile(
      operation: ml.MapTileOperation.startParse,
      sourceId: 'source',
      z: 1,
      x: 2,
      y: 3,
      overscaledZ: 1,
      wrap: 0,
    );
    const renderFrame = ml.MapEventRenderFrame(fullyRendered: true);
    const renderMap = ml.MapEventRenderMap(fullyRendered: true);
    const glyphs = ml.MapEventGlyphs(
      state: ml.MapResourceState.requested,
      fontStack: ['test'],
      first: 0,
      last: 1,
    );
    const sprite = ml.MapEventSprite(
      state: ml.MapResourceState.loaded,
      id: 'sprite',
      url: 'sprite.json',
    );
    const renderingChanged = ml.MapEventRenderingChanged(paused: true);
    const resize = ml.MapEventResize(size: Size(800, 600));
    const contextLost = ml.MapEventContextLost();
    const contextRestored = ml.MapEventContextRestored();
    const projectionChanged = ml.MapEventProjectionChanged(
      projection: ml.MapProjection.mercator,
    );

    await pumpLayer(
      tester,
      layer: MapLibreLayer(
        style: const ml.MapStyle.json('{}'),
        minZoom: 2,
        maxZoom: 12,
        maxBounds: bounds,
        paused: true,
        onMapCreated: (controller) => createdController = controller,
        onStyleLoaded: (_) {},
        onClick: record,
        onDoubleClick: recordAsync,
        onSecondaryClick: record,
        onLongClick: record,
        onDragStart: recordAsync,
        onDrag: record,
        onDragEnd: record,
        onPointerMove: record,
        onPointerLeave: record,
        onCameraMoveStart: record,
        onCameraMove: record,
        onCameraMoveEnd: record,
        onIdle: record,
        onError: record,
        onStyleImageMissing: record,
        onLoadingStarted: record,
        onLoadingFinished: record,
        onSourceChanged: record,
        onTile: record,
        onRenderFrame: record,
        onRenderMap: record,
        onGlyphs: record,
        onSprite: record,
        onRenderingChanged: record,
        onResize: record,
        onContextLost: record,
        onContextRestored: record,
        onProjectionChanged: record,
        children: const [SizedBox(key: childKey)],
      ),
    );

    expect(events, hasLength(1));
    final initialRenderingEvent = events.single as ml.MapEventRenderingChanged;
    expect(initialRenderingEvent.paused, isTrue);
    events.clear();

    final widget = platform.lastState!.widget;
    expect(widget.options.style, const ml.MapStyle.json('{}'));
    expect(widget.options.minZoom, 2);
    expect(widget.options.maxZoom, 12);
    expect(widget.options.maxBounds, bounds);
    expect(widget.paused, isTrue);
    expect(find.byKey(childKey), findsOneWidget);
    expect(createdController, same(platform.lastState));
    expect(widget.onStyleLoaded, isNotNull);

    widget.onClick!(click);
    await widget.onDoubleClick!(doubleClick);
    widget.onSecondaryClick!(secondaryClick);
    widget.onLongClick!(longClick);
    await widget.onDragStart!(dragStart);
    widget.onDrag!(drag);
    widget.onDragEnd!(dragEnd);
    widget.onPointerMove!(pointerMove);
    widget.onPointerLeave!(pointerLeave);
    widget.onCameraMoveStart!(cameraMoveStart);
    widget.onCameraMove!(cameraMove);
    widget.onCameraMoveEnd!(cameraMoveEnd);
    widget.onIdle!(idle);
    widget.onError!(error);
    widget.onStyleImageMissing!(styleImageMissing);
    widget.onLoadingStarted!(loadingStarted);
    widget.onLoadingFinished!(loadingFinished);
    widget.onSourceChanged!(sourceChanged);
    widget.onTile!(tile);
    widget.onRenderFrame!(renderFrame);
    widget.onRenderMap!(renderMap);
    widget.onGlyphs!(glyphs);
    widget.onSprite!(sprite);
    widget.onRenderingChanged!(renderingChanged);
    widget.onResize!(resize);
    widget.onContextLost!(contextLost);
    widget.onContextRestored!(contextRestored);
    widget.onProjectionChanged!(projectionChanged);

    final expectedEvents = [
      click,
      doubleClick,
      secondaryClick,
      longClick,
      dragStart,
      drag,
      dragEnd,
      pointerMove,
      pointerLeave,
      cameraMoveStart,
      cameraMove,
      cameraMoveEnd,
      idle,
      error,
      styleImageMissing,
      loadingStarted,
      loadingFinished,
      sourceChanged,
      tile,
      renderFrame,
      renderMap,
      glyphs,
      sprite,
      renderingChanged,
      resize,
      contextLost,
      contextRestored,
      projectionChanged,
    ];
    expect(events, hasLength(expectedEvents.length));
    for (var i = 0; i < expectedEvents.length; i++) {
      expect(events[i], same(expectedEvents[i]));
    }
  });

  testWidgets('leaves event callbacks unset when omitted', (tester) async {
    await pumpLayer(tester);
    final widget = platform.lastState!.widget;
    expect(<Object?>[
      widget.onClick,
      widget.onDoubleClick,
      widget.onSecondaryClick,
      widget.onLongClick,
      widget.onDragStart,
      widget.onDrag,
      widget.onDragEnd,
      widget.onPointerMove,
      widget.onPointerLeave,
      widget.onCameraMoveStart,
      widget.onCameraMove,
      widget.onCameraMoveEnd,
      widget.onIdle,
      widget.onError,
      widget.onStyleImageMissing,
      widget.onLoadingStarted,
      widget.onLoadingFinished,
      widget.onSourceChanged,
      widget.onTile,
      widget.onRenderFrame,
      widget.onRenderMap,
      widget.onGlyphs,
      widget.onSprite,
      widget.onRenderingChanged,
      widget.onResize,
      widget.onContextLost,
      widget.onContextRestored,
      widget.onProjectionChanged,
    ], everyElement(isNull));
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
