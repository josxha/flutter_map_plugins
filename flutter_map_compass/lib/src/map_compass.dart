import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_compass/src/utils.dart';

class MapCompass extends StatelessWidget {
  final Icon icon;
  final double rotationOffset;

  /// Overrides the default behaviour for a tap or click event
  final VoidCallback? onPressed;

  final bool hideIfRotatedNorth;

  const MapCompass({
    super.key,
    this.rotationOffset = 0,
    this.onPressed,
    this.hideIfRotatedNorth = false,
    this.icon = const Icon(
      Icons.north,
      size: 70,
    ),
  });

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);

    if (hideIfRotatedNorth && camera.rotation == 0) {
      return const SizedBox.shrink();
    }

    return Transform.rotate(
      angle: (camera.rotation + rotationOffset) * deg2Rad,
      child: IconButton(
        padding: EdgeInsets.zero,
        icon: icon,
        onPressed: onPressed ?? () => _resetRotation(context),
      ),
    );
  }

  void _resetRotation(BuildContext context) {
    final controller = MapController.of(context);
    controller.rotate(0);
  }
}
