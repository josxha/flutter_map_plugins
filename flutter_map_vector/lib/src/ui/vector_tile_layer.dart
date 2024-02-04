import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:flutter_map_vector/src/ui/vector_tiles_painter.dart';

class VectorTileLayer extends StatelessWidget {
  final VectorTheme style;
  final Map<String, VectorTileProvider> providers;

  const VectorTileLayer({
    super.key,
    required this.style,
    required this.providers,
  });

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);
    final background =
        style.layers.firstWhere((layer) => layer is ThemeBackgroundLayer)
            as ThemeBackgroundLayer;
    return ColoredBox(
      color: Colors.blue,
      child: MobileLayerTransformer(
        child: CustomPaint(
          painter: VectorTilesPainter(
            camera: camera,
          ),
        ),
      ),
    );
  }
}
