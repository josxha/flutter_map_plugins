import 'package:flutter/material.dart';
import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:vector_tile/vector_tile.dart';

class TilePainter extends CustomPainter {
  final VectorTheme style;
  final VectorTile tile;

  TilePainter({super.repaint, required this.style, required this.tile});

  @override
  void paint(Canvas canvas, Size size) {
    for (final layer in tile.layers) {
      for (final feature in layer.features) {
        switch (feature.type) {
          case VectorTileGeomType.POLYGON:
            if (feature.geometryList == null) break;
            final paint = Paint()
              ..color = Colors.red
              ..strokeWidth = 1;
            for (var i = 3; i < feature.geometryList!.length; i += 4) {
              final p0 = Offset(
                feature.geometryList![i - 3] / 10.0,
                feature.geometryList![i - 2] / 10.0,
              );
              final p1 = Offset(
                feature.geometryList![i - 1] / 10.0,
                feature.geometryList![i] / 10.0,
              );
              canvas.drawLine(p0, p1, paint);
            }
          case VectorTileGeomType.UNKNOWN:
            break;
          case VectorTileGeomType.POINT:
            if (feature.geometryList == null) break;
            final paint = Paint()
              ..color = Colors.blue
              ..strokeWidth = 1;
            final path = Path();
            for (var i = 1; i < feature.geometryList!.length; i += 2) {
              final x = feature.geometryList![i - 1] / 100.0;
              final y = feature.geometryList![i] / 100.0;
              path.lineTo(x, y);
            }
            canvas.drawPath(path, paint);
          case VectorTileGeomType.LINESTRING:
            if (feature.geometryList == null) break;
            final paint = Paint()
              ..color = Colors.blue
              ..strokeWidth = 1;
            final path = Path();
            for (var i = 1; i < feature.geometryList!.length; i += 2) {
              final x = feature.geometryList![i - 1] / 100.0;
              final y = feature.geometryList![i] / 100.0;
              path.lineTo(x, y);
            }
            canvas.drawPath(path, paint);
          case null:
            debugPrint('feature cannot be rendered: $feature');
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
