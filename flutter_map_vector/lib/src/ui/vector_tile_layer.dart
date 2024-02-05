import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/src/layer/tile_layer/tile_range_calculator.dart';
import 'package:flutter_map/src/layer/tile_layer/tile_scale_calculator.dart';
import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:flutter_map_vector/src/ui/vector_tiles_painter.dart';

class VectorTileLayer extends StatefulWidget {
  final VectorTheme style;
  final Map<String, VectorTileProvider> providers;
  final int minNativeZoom;
  final int maxNativeZoom;
  final double tileSize;
  final LatLngBounds? tileBounds;

  const VectorTileLayer({
    super.key,
    required this.style,
    required this.providers,
    this.minNativeZoom = 0,
    this.maxNativeZoom = 22,
    this.tileBounds,
    this.tileSize = 256,
  });

  @override
  State<VectorTileLayer> createState() => VectorTileLayerState();
}

class VectorTileLayerState extends State<VectorTileLayer> {
  TileScaleCalculator? _tileScaleCalculator;
  late final _tileRangeCalculator = TileRangeCalculator(
    tileSize: widget.tileSize,
  );

  @override
  void initState() {
    print(widget.style.layers.map((e) => e.type.name).join(', '));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final camera = MapCamera.of(context);

    _tileScaleCalculator ??= TileScaleCalculator(
      crs: camera.crs,
      tileSize: widget.tileSize,
    );

    final tileRange = _tileRangeCalculator.calculate(
      camera: camera,
      tileZoom:
          camera.zoom.round().clamp(widget.minNativeZoom, widget.maxNativeZoom),
    );

    final background =
        widget.style.layers.firstWhere((layer) => layer is ThemeBackgroundLayer)
            as ThemeBackgroundLayer;
    return ColoredBox(
      color: background.backgroundColor,
      child: MobileLayerTransformer(
        child: CustomPaint(
          painter: VectorTilesPainter(
            camera: camera,
            tileRange: tileRange,
          ),
        ),
      ),
    );
  }
}
