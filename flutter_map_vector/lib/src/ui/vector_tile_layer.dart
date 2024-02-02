import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_vector/src/ui/vector_tiles_painter.dart';

class VectorTileLayer extends StatelessWidget {
  const VectorTileLayer({super.key});

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);
    return MobileLayerTransformer(
      child: CustomPaint(
        painter: VectorTilesPainter(
          camera: camera,
        ),
      ),
    );
  }
}
