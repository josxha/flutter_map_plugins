import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart' as fm;
// ignore: implementation_imports
import 'package:flutter_map/src/map/inherited_model.dart' as fm;
import 'package:flutter_map_maplibre/flutter_map_maplibre.dart';
import 'package:maplibre/maplibre.dart';

/// Wrap a flutter_map layer with a [FlutterMapAdapter] to use it as a layer
/// in the [MapLibreMap.children] list as a layer.
class FlutterMapAdapter extends StatelessWidget {
  /// Create a new [FlutterMapAdapter] to use flutter_map layers inside of
  /// [MapLibreMap.children].
  const FlutterMapAdapter({required this.child, super.key});

  /// The flutter_map layer widget.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final controller = MapController.maybeOf(context);
    final camera = MapCamera.maybeOf(context);
    if (controller == null || camera == null) return const SizedBox.shrink();

    return fm.TranslucentPointer(
      child: RepaintBoundary(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return fm.MapInheritedModel(
              options: const fm.MapOptions(
                interactionOptions: fm.InteractionOptions(
                  flags: fm.InteractiveFlag.none,
                ),
              ),
              controller: controller.toFlutterMapController(),
              camera: camera.toFlutterMapCamera(constraints),
              child: child,
            );
          },
        ),
      ),
    );
  }
}
