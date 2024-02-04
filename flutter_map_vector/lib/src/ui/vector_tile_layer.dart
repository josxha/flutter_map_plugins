import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:flutter_map_vector/src/ui/vector_tiles_painter.dart';

class VectorTileLayer extends StatelessWidget {
  final VectorTheme style;
  late final List<VectorTileProvider> providers;

  VectorTileLayer({super.key, required this.style}) {
    providers = style.sources.values
        .whereType<ThemeVectorSource>()
        .where((element) => element.url != null)
        .map(
          (source) => NetworkVectorTileProvider(
            urlTemplate: source.url!,
          ),
        )
        .toList(growable: false);
  }

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);
    print(style.sources);

    return MobileLayerTransformer(
      child: CustomPaint(
        painter: VectorTilesPainter(
          camera: camera,
        ),
      ),
    );
  }
}
