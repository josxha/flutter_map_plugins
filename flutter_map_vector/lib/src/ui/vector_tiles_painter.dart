import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';

class VectorTilesPainter extends CustomPainter {
  final MapCamera camera;

  const VectorTilesPainter({required this.camera});

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
