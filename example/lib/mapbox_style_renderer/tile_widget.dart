import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter_map_plugins_example/mapbox_style_renderer/tile_painter.dart';
import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:vector_tile/vector_tile.dart';

class TileWidget extends StatelessWidget {
  final VectorTheme style;
  final VectorTile tileData;
  final Uint8List bytes;
  final int tileSize;

  TileWidget({
    super.key,
    required this.style,
    required this.bytes,
    this.tileSize = 512,
  }) : tileData = VectorTile.fromBytes(bytes: bytes);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: tileSize.toDouble(),
      width: tileSize.toDouble(),
      color: Colors.grey,
      child: ClipRect(
        child: CustomPaint(
          painter:
              TilePainter(style: style, tile: tileData, tileSize: tileSize),
        ),
      ),
    );
  }
}
