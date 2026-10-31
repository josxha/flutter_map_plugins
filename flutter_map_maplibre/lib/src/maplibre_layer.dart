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
    this.onEvent,
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

  /// The [MapLibreMap.onEvent] callback.
  final MapEventCallback? onEvent;

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
          center: event.camera.center.toPosition(),
          zoom: event.camera.zoom - 1,
          bearing: -event.camera.rotation,
        );
      }
    });

    return MapLibreMap(
      options: MapOptions(
        initCamera: InitialCamera.position(
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
      onEvent: widget.onEvent,
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
