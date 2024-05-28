import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_compass/src/utils.dart';

/// A compass for flutter_map that shows the map rotation and allows to reset
/// the rotation back to 0.
class MapCompass extends StatefulWidget {
  /// Use this constructor if you want to customize your compass.
  ///
  /// Use [MapCompass.cupertino] to use the default.
  const MapCompass({
    required this.icon,
    super.key,
    this.rotationOffset = 0,
    this.rotationDuration = const Duration(seconds: 1),
    this.animationCurve = Curves.fastOutSlowIn,
    this.onPressed,
    this.hideIfRotatedNorth = false,
    this.alignment = Alignment.topRight,
    this.padding = const EdgeInsets.all(10),
  });

  /// The default map compass based on the cupertino compass icon
  const MapCompass.cupertino({
    super.key,
    this.onPressed,
    this.hideIfRotatedNorth = false,
    this.rotationDuration = const Duration(seconds: 1),
    this.animationCurve = Curves.fastOutSlowIn,
    this.alignment = Alignment.topRight,
    this.padding = const EdgeInsets.all(10),
  })  : rotationOffset = -45,
        icon = const Stack(
          children: [
            Icon(CupertinoIcons.compass, color: Colors.red, size: 50),
            Icon(CupertinoIcons.compass_fill, color: Colors.white54, size: 50),
            Icon(CupertinoIcons.circle, color: Colors.black, size: 50),
          ],
        );

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

  /// The duration of the rotation animation.
  ///
  /// Default to 1 second.
  final Duration rotationDuration;

  /// The curve of the rotation animation.
  final Curve animationCurve;

  @override
  State<MapCompass> createState() => _MapCompassState();
}

class _MapCompassState extends State<MapCompass> with TickerProviderStateMixin {
  AnimationController? _animationController;
  late Animation<double> _rotateAnimation;

  late Tween<double> _rotationTween;

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);

    if (widget.hideIfRotatedNorth && camera.rotation == 0) {
      return const SizedBox.shrink();
    }

    return Align(
      alignment: widget.alignment,
      child: Padding(
        padding: widget.padding,
        child: Transform.rotate(
          angle: (camera.rotation + widget.rotationOffset) * deg2Rad,
          child: IconButton(
            alignment: Alignment.center,
            padding: EdgeInsets.zero,
            icon: widget.icon,
            onPressed:
                widget.onPressed ?? () => _resetRotation(context, camera),
          ),
        ),
      ),
    );
  }

  void _resetRotation(BuildContext context, MapCamera camera) {
    // current rotation of the map
    final rotation = camera.rotation;
    // nearest north (0°, 360°, -360°, ...)
    final endRotation = (rotation / 360).round() * 360.0;
    // don't start animation if rotation doesn't need to change
    if (rotation == endRotation) return;

    _animationController = AnimationController(
      duration: widget.rotationDuration,
      vsync: this,
    )..addListener(_handleAnimation);
    _rotateAnimation = CurvedAnimation(
      parent: _animationController!,
      curve: widget.animationCurve,
    );

    _rotationTween = Tween<double>(begin: rotation, end: endRotation);
    _animationController!.forward(from: 0);
  }

  void _handleAnimation() {
    final controller = MapController.of(context);
    controller.rotate(_rotationTween.evaluate(_rotateAnimation));
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }
}
