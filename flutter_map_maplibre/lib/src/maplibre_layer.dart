import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map_maplibre/src/extensions.dart';
import 'package:maplibre/maplibre.dart';

/// Use the [MapLibreLayer] to embedd [MapLibreMap] as a layer in
/// [fm.FlutterMap.children].
class MapLibreLayer extends StatefulWidget {
  /// Create a new [MapLibreLayer] to use it as a layer in
  /// [fm.FlutterMap.children].
  const MapLibreLayer({
    this.children = const [],
    this.initStyle = 'https://demotiles.maplibre.org/style.json',
    this.onEvent,
    super.key,
  });

  /// The [MapLibreMap.children] list.
  final List<Widget> children;

  /// The [MapLibreMap.onEvent] callback.
  final MapEventCallback? onEvent;

  /// The style URL that should get used. If not set, the default MapLibre style
  /// is used (https://demotiles.maplibre.org/style.json).
  final String initStyle;

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
        initCenter: fmCamera.center.toPosition(),
        initBearing: -fmCamera.rotation,
        initZoom: fmCamera.zoom - 1,
        initStyle: widget.initStyle,
        attribution: false,
        maxPitch: 0,
        nativeCompass: false,
        nativeLogo: false,
        gestures: const MapGestures.none(),
      ),
      gestureRecognizers: const {},
      onEvent: widget.onEvent,
      onMapCreated: (controller) => _controller = controller,
      children: widget.children,
    );
  }

  @override
  void dispose() {
    _streamSub?.cancel();
    super.dispose();
  }
}
