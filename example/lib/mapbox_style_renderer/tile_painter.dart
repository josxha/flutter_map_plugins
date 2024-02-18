import 'dart:typed_data';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_map_plugins_example/mapbox_style_renderer/extensions.dart';
import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:vector_tile/vector_tile.dart';

class TilePainter extends CustomPainter {
  final VectorTheme style;
  final VectorTile tile;
  final int tileSize;
  final double scale;

  TilePainter({
    super.repaint,
    required this.style,
    required this.tile,
    required this.tileSize,
  }) : scale = (tile.layers.firstOrNull?.extent ?? tileSize) / tileSize;

  @override
  void paint(Canvas canvas, Size size) {
    canvas.scale(1 / scale);

    for (final layer in tile.layers) {
      for (final feature in layer.features) {
        switch (feature.type) {
          case VectorTileGeomType.POLYGON:
            final geom = feature.geometryList;
            if (geom == null) break;

            // parse tags
            final properties = <String, Object?>{};
            for (var i = 0; i < feature.tags.length; i += 2) {
              final key = feature.keys![feature.tags[i]];
              final value = feature.values![feature.tags[i + 1]];
              properties[key] = value.getValue();
            }
            final color = switch (properties['class']) {
              'lake' => Colors.blueAccent,
              'ocean' => Colors.blue,
              'residential' => Colors.orange,
              'pitch' => Colors.greenAccent,
              'wood' => Colors.green,
              'grass' => Colors.lightGreenAccent,
              'sand' => Colors.yellow,
              'farmland' => Colors.lightGreen,
              'nature_reserve' => Colors.transparent,
              'school' => Colors.pinkAccent,
              _ => Colors.pink,
            };

            // parse geom
            final paint = Paint()
              ..color = color.withOpacity(0.2)
              ..style = PaintingStyle.fill
              ..strokeWidth = 1 * scale;
            final path = Path();

            var i = 0;
            while (i < geom.length) {
              // parse command integer
              final commandInteger = geom[i++];
              final command = GeometryCommand.parse(commandInteger & 0x7);
              final count = commandInteger >> 3;

              switch (command) {
                case GeometryCommand.moveTo:
                  for (var p = 0; p < count; p++) {
                    path.relativeMoveTo(
                      parseParamInt(geom[i++]),
                      parseParamInt(geom[i++]),
                    );
                  }
                case GeometryCommand.lineTo:
                  for (var p = 0; p < count; p++) {
                    path.relativeLineTo(
                      parseParamInt(geom[i++]),
                      parseParamInt(geom[i++]),
                    );
                  }
                case GeometryCommand.closePath:
                  path.close();
                case null:
                  debugPrint(
                    'Could not parse the command id of the command '
                    'integer $commandInteger.',
                  );
              }
              canvas.drawPath(path, paint);
            }
          case VectorTileGeomType.POINT:
            if (feature.geometryList == null) break;

            final paint = Paint()
              ..color = Colors.red
              ..style = PaintingStyle.stroke
              ..strokeWidth = 5 * scale;

            final geom = feature.geometryList!;
            var i = 0;
            while (i < geom.length) {
              // parse command integer
              final commandInteger = geom[i++];
              final command = GeometryCommand.parse(commandInteger & 0x7);
              assert(
                command == GeometryCommand.moveTo,
                'Command is not moveTo for a VectorTileGeomType of point.',
              );
              final count = commandInteger >> 3;

              final points = Float32List(count * 2);

              for (var p = 0; p < points.length; p++) {
                points[p] = parseParamInt(geom[i++]);
              }
              canvas.drawRawPoints(PointMode.points, points, paint);
            }
          case VectorTileGeomType.LINESTRING:
            if (feature.geometryList == null) break;

            final paint = Paint()
              ..color = Colors.black
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1 * scale;
            final path = Path();

            final geom = feature.geometryList!;
            var i = 0;
            while (i < geom.length) {
              // parse command integer
              final commandInteger = geom[i++];
              final command = GeometryCommand.parse(commandInteger & 0x7);
              final count = commandInteger >> 3;

              switch (command) {
                case GeometryCommand.moveTo:
                  for (var p = 0; p < count; p++) {
                    path.relativeMoveTo(
                      parseParamInt(geom[i++]),
                      parseParamInt(geom[i++]),
                    );
                  }
                case GeometryCommand.lineTo:
                  for (var p = 0; p < count; p++) {
                    path.relativeLineTo(
                      parseParamInt(geom[i++]),
                      parseParamInt(geom[i++]),
                    );
                  }
                case GeometryCommand.closePath:
                  path.close();
                case null:
                  debugPrint(
                    'Could not parse the command id of the command '
                    'integer $commandInteger.',
                  );
              }
              canvas.drawPath(path, paint);
            }
          case VectorTileGeomType.UNKNOWN:
          case null:
            debugPrint('feature cannot be rendered: $feature');
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}

enum GeometryCommand {
  moveTo(2),
  lineTo(2),
  closePath(0);

  final int paramCount;

  const GeometryCommand(this.paramCount);

  static GeometryCommand? parse(int id) => switch (id) {
        1 => GeometryCommand.moveTo,
        2 => GeometryCommand.lineTo,
        7 => GeometryCommand.closePath,
        _ => null,
      };
}

/// decode zigzag encoded parameter integer
double parseParamInt(int paramInt) =>
    ((paramInt >> 1) ^ -(paramInt & 1)).toDouble();
