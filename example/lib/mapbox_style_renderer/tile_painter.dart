import 'dart:typed_data';
import 'dart:ui';

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
              ..color = Colors.blue
              ..style = PaintingStyle.fill
              ..strokeWidth = 1;
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
                    path.moveTo(
                      parseParamInt(geom[i++]) / 17,
                      parseParamInt(geom[i++]) / 17,
                    );
                  }
                case GeometryCommand.lineTo:
                  for (var p = 0; p < count; p++) {
                    path.relativeLineTo(
                      parseParamInt(geom[i++]) / 17,
                      parseParamInt(geom[i++]) / 17,
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
              ..strokeWidth = 5;

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
                points[p] = parseParamInt(geom[i++]) / 17;
              }
              canvas.drawRawPoints(PointMode.points, points, paint);
            }
          case VectorTileGeomType.LINESTRING:
            if (feature.geometryList == null) break;

            final paint = Paint()
              ..color = Colors.black
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1;
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
                    path.moveTo(
                      parseParamInt(geom[i++]) / 17,
                      parseParamInt(geom[i++]) / 17,
                    );
                  }
                case GeometryCommand.lineTo:
                  for (var p = 0; p < count; p++) {
                    path.relativeLineTo(
                      parseParamInt(geom[i++]) / 17,
                      parseParamInt(geom[i++]) / 17,
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