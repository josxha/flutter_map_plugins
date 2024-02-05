import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/src/layer/tile_layer/tile_range.dart';

class VectorTilesPainter extends CustomPainter {
  final MapCamera camera;
  final DiscreteTileRange tileRange;

  const VectorTilesPainter({
    required this.camera,
    required this.tileRange,
  });

  @override
  void paint(Canvas canvas, Size size) {
    for (final _ in tileRange.coordinates) {}
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
