import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_compass/src/utils.dart';

class MapCompass extends StatelessWidget {
  /// This child widget, for example a [Icon] width with a compass icon.
  final Widget icon;

  /// Sometimes icons are rotated itself. Use this to fix the rotation offset.
  final double rotationOffset;

  /// Overrides the default behaviour for a tap or click event
  ///
  /// This will override the default behaviour.
  final VoidCallback? onPressed;

  /// Set to true to hide the compass while the map is not rotated.
  ///
  /// Defaults to false (always visible).
  final bool hideIfRotatedNorth;

  /// The [Alignment] of the compass on the map.
  ///
  /// Default to [Alignment.topRight].
  final Alignment alignment;

  /// The padding of the compass widget.
  ///
  /// Defaults to 10px on all sides.
  final EdgeInsets padding;

  const MapCompass({
    super.key,
    required this.icon,
    this.rotationOffset = 0,
    this.onPressed,
    this.hideIfRotatedNorth = false,
    this.alignment = Alignment.topRight,
    this.padding = const EdgeInsets.all(10),
  });

  const MapCompass.cupertino({
    super.key,
    this.onPressed,
    this.hideIfRotatedNorth = false,
    this.alignment = Alignment.topRight,
    this.padding = const EdgeInsets.all(10),
  })  : rotationOffset = -45,
        icon = const Icon(
          CupertinoIcons.compass,
          color: Colors.black,
          size: 50,
        );

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);

    if (hideIfRotatedNorth && camera.rotation == 0) {
      return const SizedBox.shrink();
    }

    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: padding,
        child: Transform.rotate(
          angle: (camera.rotation + rotationOffset) * deg2Rad,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: icon,
            onPressed: onPressed ?? () => _resetRotation(context),
          ),
        ),
      ),
    );
  }

  void _resetRotation(BuildContext context) {
    final controller = MapController.of(context);
    controller.rotate(0);
  }
}
