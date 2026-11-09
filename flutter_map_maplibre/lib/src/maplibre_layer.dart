import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map_maplibre/src/extensions.dart';
import 'package:maplibre/maplibre.dart';

/// Use the [MapLibreLayer] to embed [MapLibreMap] as a layer in
/// [fm.FlutterMap.children].
///
/// The camera of the [MapLibreMap] follows the camera of the surrounding
/// [fm.FlutterMap], and all gestures are handled by `flutter_map`. Therefore
/// the camera pitch (tilt), the gesture options and the initial camera of
/// [MapOptions] are not configurable.
class MapLibreLayer extends StatefulWidget {
  /// Create a new [MapLibreLayer] to use it as a layer in
  /// [fm.FlutterMap.children].
  const new({
    this.style = const MapStyle.url(defaultStyleUrl),
    this.minZoom = 0,
    this.maxZoom = 22,
    this.maxBounds,
    this.layers = const [],
    this.children = const [],
    this.paused = false,
    this.onMapCreated,
    this.onStyleLoaded,
    this.onClick,
    this.onDoubleClick,
    this.onSecondaryClick,
    this.onLongClick,
    this.onDragStart,
    this.onDrag,
    this.onDragEnd,
    this.onPointerMove,
    this.onPointerLeave,
    this.onCameraMoveStart,
    this.onCameraMove,
    this.onCameraMoveEnd,
    this.onIdle,
    this.onError,
    this.onStyleImageMissing,
    this.onLoadingStarted,
    this.onLoadingFinished,
    this.onSourceChanged,
    this.onTile,
    this.onRenderFrame,
    this.onRenderMap,
    this.onGlyphs,
    this.onSprite,
    this.onRenderingChanged,
    this.onResize,
    this.onContextLost,
    this.onContextRestored,
    this.onProjectionChanged,
    super.key,
  });

  /// The URL of the OpenFreeMap liberty style that is used by default.
  static const defaultStyleUrl = 'https://tiles.openfreemap.org/styles/liberty';

  /// The style of the map, see [MapOptions.style].
  ///
  /// Defaults to the OpenFreeMap liberty style.
  final MapStyle style;

  /// The minimum zoom level of the MapLibre map, see [MapOptions.minZoom].
  ///
  /// Note that MapLibre zoom levels are one level lower than the zoom levels
  /// of `flutter_map`. Use [fm.MapOptions.minZoom] to restrict the camera.
  final double minZoom;

  /// The maximum zoom level of the MapLibre map, see [MapOptions.maxZoom].
  ///
  /// Note that MapLibre zoom levels are one level lower than the zoom levels
  /// of `flutter_map`. Use [fm.MapOptions.maxZoom] to restrict the camera.
  final double maxZoom;

  /// The bounds the camera is restricted to, see [MapOptions.maxBounds].
  final GeoBox? maxBounds;

  /// The [MapLibreMap.layers] list.
  final List<Layer> layers;

  /// The [MapLibreMap.children] list.
  final List<Widget> children;

  /// Pauses the rendering of the map, see [MapLibreMap.paused].
  final bool paused;

  /// The [MapLibreMap.onMapCreated] callback.
  final MapCreatedCallback? onMapCreated;

  /// The [MapLibreMap.onStyleLoaded] callback.
  final StyleLoadedCallback? onStyleLoaded;

  /// The [MapLibreMap.onClick] callback.
  final MapEventCallback<MapEventClick>? onClick;

  /// The [MapLibreMap.onDoubleClick] callback.
  final FutureOr<void> Function(MapEventDoubleClick event)? onDoubleClick;

  /// The [MapLibreMap.onSecondaryClick] callback.
  final MapEventCallback<MapEventSecondaryClick>? onSecondaryClick;

  /// The [MapLibreMap.onLongClick] callback.
  final MapEventCallback<MapEventLongClick>? onLongClick;

  /// The [MapLibreMap.onDragStart] callback.
  final FutureOr<void> Function(MapEventDragStart event)? onDragStart;

  /// The [MapLibreMap.onDrag] callback.
  final MapEventCallback<MapEventDrag>? onDrag;

  /// The [MapLibreMap.onDragEnd] callback.
  final MapEventCallback<MapEventDragEnd>? onDragEnd;

  /// The [MapLibreMap.onPointerMove] callback.
  final MapEventCallback<MapEventPointerMove>? onPointerMove;

  /// The [MapLibreMap.onPointerLeave] callback.
  final MapEventCallback<MapEventPointerLeave>? onPointerLeave;

  /// The [MapLibreMap.onCameraMoveStart] callback.
  final MapEventCallback<MapEventCameraMoveStart>? onCameraMoveStart;

  /// The [MapLibreMap.onCameraMove] callback.
  final MapEventCallback<MapEventCameraMove>? onCameraMove;

  /// The [MapLibreMap.onCameraMoveEnd] callback.
  final MapEventCallback<MapEventCameraMoveEnd>? onCameraMoveEnd;

  /// The [MapLibreMap.onIdle] callback.
  final MapEventCallback<MapEventIdle>? onIdle;

  /// The [MapLibreMap.onError] callback.
  final MapEventCallback<MapEventError>? onError;

  /// The [MapLibreMap.onStyleImageMissing] callback.
  final MapEventCallback<MapEventStyleImageMissing>? onStyleImageMissing;

  /// The [MapLibreMap.onLoadingStarted] callback.
  final MapEventCallback<MapEventLoadingStarted>? onLoadingStarted;

  /// The [MapLibreMap.onLoadingFinished] callback.
  final MapEventCallback<MapEventLoadingFinished>? onLoadingFinished;

  /// The [MapLibreMap.onSourceChanged] callback.
  final MapEventCallback<MapEventSourceChanged>? onSourceChanged;

  /// The [MapLibreMap.onTile] callback.
  final MapEventCallback<MapEventTile>? onTile;

  /// The [MapLibreMap.onRenderFrame] callback.
  final MapEventCallback<MapEventRenderFrame>? onRenderFrame;

  /// The [MapLibreMap.onRenderMap] callback.
  final MapEventCallback<MapEventRenderMap>? onRenderMap;

  /// The [MapLibreMap.onGlyphs] callback.
  final MapEventCallback<MapEventGlyphs>? onGlyphs;

  /// The [MapLibreMap.onSprite] callback.
  final MapEventCallback<MapEventSprite>? onSprite;

  /// The [MapLibreMap.onRenderingChanged] callback.
  final MapEventCallback<MapEventRenderingChanged>? onRenderingChanged;

  /// The [MapLibreMap.onResize] callback.
  final MapEventCallback<MapEventResize>? onResize;

  /// The [MapLibreMap.onContextLost] callback.
  final MapEventCallback<MapEventContextLost>? onContextLost;

  /// The [MapLibreMap.onContextRestored] callback.
  final MapEventCallback<MapEventContextRestored>? onContextRestored;

  /// The [MapLibreMap.onProjectionChanged] callback.
  final MapEventCallback<MapEventProjectionChanged>? onProjectionChanged;

  @override
  State<MapLibreLayer> createState() => _MapLibreLayerState();
}

class _MapLibreLayerState extends State<MapLibreLayer> {
  MapController? _controller;
  StreamSubscription<fm.MapEvent>? _streamSub;

  @override
  Widget build(BuildContext context) {
    final fmCamera = fm.MapCamera.of(context);
    final fmController = fm.MapController.of(context);
    // final fmOptions = fm.MapOptions.of(context);

    // sync the FlutterMap movement with MapLibreMap
    _streamSub ??= fmController.mapEventStream.listen((event) {
      if (event case fm.MapEventWithMove()) {
        _controller?.moveCamera(
          CameraUpdate.position(
            center: event.camera.center.toPosition(),
            zoom: event.camera.zoom - 1,
            bearing: -event.camera.rotation,
          ),
        );
      }
    });

    return MapLibreMap(
      options: MapOptions(
        initCamera: CameraUpdate.position(
          center: fmCamera.center.toPosition(),
          bearing: -fmCamera.rotation,
          zoom: fmCamera.zoom - 1,
        ),
        style: widget.style,
        minZoom: widget.minZoom,
        maxZoom: widget.maxZoom,
        maxPitch: 0,
        maxBounds: widget.maxBounds,
        gestures: const MapGestures.none(),
      ),
      gestureRecognizers: const {},
      layers: widget.layers,
      paused: widget.paused,
      onStyleLoaded: widget.onStyleLoaded,
      onClick: widget.onClick,
      onDoubleClick: widget.onDoubleClick,
      onSecondaryClick: widget.onSecondaryClick,
      onLongClick: widget.onLongClick,
      onDragStart: widget.onDragStart,
      onDrag: widget.onDrag,
      onDragEnd: widget.onDragEnd,
      onPointerMove: widget.onPointerMove,
      onPointerLeave: widget.onPointerLeave,
      onCameraMoveStart: widget.onCameraMoveStart,
      onCameraMove: widget.onCameraMove,
      onCameraMoveEnd: widget.onCameraMoveEnd,
      onIdle: widget.onIdle,
      onError: widget.onError,
      onStyleImageMissing: widget.onStyleImageMissing,
      onLoadingStarted: widget.onLoadingStarted,
      onLoadingFinished: widget.onLoadingFinished,
      onSourceChanged: widget.onSourceChanged,
      onTile: widget.onTile,
      onRenderFrame: widget.onRenderFrame,
      onRenderMap: widget.onRenderMap,
      onGlyphs: widget.onGlyphs,
      onSprite: widget.onSprite,
      onRenderingChanged: widget.onRenderingChanged,
      onResize: widget.onResize,
      onContextLost: widget.onContextLost,
      onContextRestored: widget.onContextRestored,
      onProjectionChanged: widget.onProjectionChanged,
      onMapCreated: (controller) {
        _controller = controller;
        widget.onMapCreated?.call(controller);
      },
      children: widget.children,
    );
  }

  @override
  void dispose() {
    _streamSub?.cancel();
    super.dispose();
  }
}
