import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
import 'package:flutter_map/src/map/inherited_model.dart' as fm;
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:flutter_map_maplibre/src/flutter_map_controller.dart';
import 'package:maplibre/maplibre.dart';

/// Wrap a flutter_map layer with a [FlutterMapAdapter] to use it as a layer
/// in the [MapLibreMap.children] list as a layer.
///
/// The layer is drawn at the camera of the map frame that is on screen, so it
/// stays on the map while the camera moves. That also holds inside the
/// [MapLibreLayer.children] of a [MapLibreLayer]: use it there for
/// `flutter_map` layers that must not float above the map while the
/// `FlutterMap` camera moves.
///
/// Inside a [MapLibreMap], [fm.MapController.of] returns a controller that
/// moves the MapLibre camera. Inside a [MapLibreLayer], it returns the
/// controller of the surrounding [fm.FlutterMap].
class FlutterMapAdapter extends StatefulWidget {
  /// Create a new [FlutterMapAdapter] to use flutter_map layers inside of
  /// [MapLibreMap.children].
  const new({required this.child, super.key});

  /// The flutter_map layer widget.
  final Widget child;

  @override
  State<FlutterMapAdapter> createState() => _FlutterMapAdapterState();
}

class _FlutterMapAdapterState extends State<FlutterMapAdapter> {
  static const _options = fm.MapOptions(
    interactionOptions: fm.InteractionOptions(flags: fm.InteractiveFlag.none),
  );

  MapLibreFlutterMapController? _controller;

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final controller = MapController.maybeOf(context);
    final camera = CameraPosition.maybeOf(context);
    if (controller == null || camera == null) return const SizedBox.shrink();

    // Inside a MapLibreLayer, the layers keep the controller, options and
    // camera limits of the surrounding FlutterMap.
    final outerController = fm.MapController.maybeOf(context);
    final outerOptions = fm.MapOptions.maybeOf(context);
    final outerCamera = fm.MapCamera.maybeOf(context);

    final fm.MapController fmController;
    if (outerController != null) {
      fmController = outerController;
    } else {
      final forwarding = _controller ??= MapLibreFlutterMapController(
        controller,
      );
      forwarding.mapController = controller;
      fmController = forwarding;
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        final fmCamera = camera.toFlutterMapCamera(
          constraints,
          minZoom: outerCamera?.minZoom,
          maxZoom: outerCamera?.maxZoom,
        );
        if (outerController == null) _controller!.updateCamera(fmCamera);
        return fm.MapInheritedModel(
          options: outerOptions ?? _options,
          controller: fmController,
          camera: fmCamera,
          child: widget.child,
        );
      },
    );
  }
}
