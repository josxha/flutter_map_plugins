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
    this.layers = const [],
    this.initStyle = 'https://demotiles.maplibre.org/style.json',
    this.onEvent,
    super.key,
  });

  /// The [MapLibreMap.children] list supports Flutter widgets on top of the
  /// [MapLibreMap] widget.
  final List<Widget> children;

  /// The [MapLibreMap.layers] list provides a convenient way to add
  /// performant layers to the map. Those layers will always be displayed
  /// underneath [MapLibreLayer.children].
  final List<AnnotationLayer<GeometryType<Object>>> layers;

  /// The [MapLibreMap.onEvent] callback.
  final MapEventCallback? onEvent;

  /// The style URL that should get used. Replace this with the style URL you
  /// get from your tile provider.
  ///
  /// If not set, the default MapLibre style
  /// gets used: [demotiles.maplibre.org/style.json](https://demotiles.maplibre.org/style.json).
  final String initStyle;

  @override
  State<MapLibreLayer> createState() => _MapLibreLayerState();
}

class _MapLibreLayerState extends State<MapLibreLayer> {
  MapController? _controller;
  StreamSubscription<fm.MapEvent>? _streamSub;

  MapLibreMap? _map;

  Position? initCenter;
  double? initZoom;
  double? initBearing;

  @override
  void initState() {
    print('initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final fmCamera = fm.MapCamera.of(context);
    final fmController = fm.MapController.of(context);

    /*_controller?.moveCamera(
      center: fmCamera.center.toPosition(),
      zoom: fmCamera.zoom - 1,
      bearing: -fmCamera.rotation,
    );*/

    // sync the FlutterMap movement with MapLibreMap
    _streamSub ??= fmController.mapEventStream.listen((event) {
      print('${DateTime.now()} MapLibreLayer stream event: $event');
      // can't filter by MapEventWithMove, because it is not consistent
      try {
        _controller?.moveCamera(
          center: event.camera.center.toPosition(),
          zoom: event.camera.zoom - 1,
          bearing: -event.camera.rotation,
        );
      } catch (error, stack) {
        print(error);
        debugPrintStack(stackTrace: stack);
      }
    });

    print('${DateTime.now()} MapLibreLayer build');
    return MapLibreMap(
      options: MapOptions(
        initCenter: initCenter ??= fmCamera.center.toPosition(),
        initZoom: initZoom ??= fmCamera.zoom - 1,
        initBearing: initBearing ??= -fmCamera.rotation,
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
      layers: widget.layers,
      children: widget.children,
    );
  }

  @override
  void dispose() {
    _streamSub?.cancel();
    super.dispose();
  }
}
