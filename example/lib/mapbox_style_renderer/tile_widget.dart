import 'dart:math';
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
    return StreamBuilder(
      initialData: Offset.zero,
      stream: _randomOffset(),
      builder: (context, snapshot) {
        final offset = snapshot.data!;
        return Padding(
          padding: EdgeInsets.only(left: offset.dx, top: offset.dy),
          child: SizedBox.square(
            dimension: tileSize.toDouble(),
            child: ClipRect(
              child: CustomPaint(
                painter: TilePainter(
                    style: style, tile: tileData, tileSize: tileSize),
              ),
            ),
          ),
        );
      },
    );
  }

  final _rnd = Random(1234);

  Stream<Offset> _randomOffset() async* {
    while (true) {
      await Future.delayed(const Duration(milliseconds: 500));
      yield Offset(_rnd.nextInt(10).toDouble(), _rnd.nextInt(10).toDouble());
    }
  }
}
