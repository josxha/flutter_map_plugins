import 'dart:typed_data';
import 'dart:ui';

import 'package:collection/collection.dart';
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
    required this.style,
    required this.tile,
    required this.tileSize,
  }) : scale = (tile.layers.firstOrNull?.extent ?? tileSize) / tileSize;

  @override
  void paint(Canvas canvas, Size size) {
    final sw = Stopwatch()..start();
    canvas.scale(1 / scale);

    final bgLayer = style.layers
        .firstWhereOrNull((l) => l.type == ThemeLayerType.background);
    if (bgLayer != null) {
      //print(bgLayer.paint);
      final paint = Paint()
        ..style = PaintingStyle.fill
        ..color = const Color(0xfff8f4f0);
      canvas.drawRect(Rect.largest, paint);
    }

    for (final layer in tile.layers) {
      for (final feature in layer.features) {
        switch (feature.type) {
          case VectorTileGeomType.POLYGON:
            final geom = feature.geometryList;
            if (geom == null) continue;

            // parse tags
            final properties = <String, Object?>{};
            for (var i = 0; i < feature.tags.length; i += 2) {
              final key = feature.keys![feature.tags[i]];
              final value = feature.values![feature.tags[i + 1]];
              properties[key] = value.getValue();
            }
            final featureClass = properties['class'];
            if (featureClass == null) continue;

            final layer = style.layers.firstWhereOrNull(
              (l) => l.filter.toString().contains(RegExp('.+$featureClass.+')),
            );
            if (layer == null) continue;
            //print('${layer.id}: ${layer.paint}');

            final color = switch (layer.id) {
              'lake' => const Color(0xff74aee9),
              'water-name-ocean' => const Color(0xff74aee9),
              'landuse-residential' =>
                const HSLColor.fromAHSL(0.4, 30, 0.19, 0.9).toColor(),
              'pitch' => Colors.greenAccent,
              'landcover-wood' => const Color(0xff66aa44).withOpacity(0.1),
              'landcover-grass' => const Color(0xffd8e8c8).withOpacity(1),
              'landcover-sand' => const Color.fromRGBO(245, 238, 188, 1),
              'farmland' => Colors.lightGreen,
              'nature_reserve' => Colors.transparent,
              'landuse-school' => const Color(0xfff0e8f8),
              _ => Colors.pink,
            };

            // parse geom
            final paint = Paint()
              ..color = color
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
            if (feature.geometryList == null) continue;

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
            final geom = feature.geometryList;
            if (geom == null) continue;

            // parse tags
            final properties = <String, Object?>{};
            for (var i = 0; i < feature.tags.length; i += 2) {
              final key = feature.keys![feature.tags[i]];
              final value = feature.values![feature.tags[i + 1]];
              properties[key] = value.getValue();
            }
            final featureClass = properties['class'];
            if (featureClass == null) continue;

            final layer = style.layers.firstWhereOrNull(
              (l) => l.filter.toString().contains(RegExp('.+$featureClass.+')),
            );
            if (layer == null) continue;

            final color = switch (layer.id) {
              'tunnel-link-casing' => const Color(0xffe9ac77),
              'waterway_tunnel' => const Color(0xffa0c8f0),
              'tunnel-minor-casing' => const Color(0xffcfcdca),
              'tunnel-service-track-casing' => const Color(0xffcfcdca),
              'tunnel-motorway-link-casing' =>
                const Color.fromARGB(1, 200, 147, 102),
              'tunnel-path' => const Color(0xffccbbaa),
              'landuse-railway' =>
                const HSLColor.fromAHSL(0.4, 30, 0.19, 0.9).toColor(),
              _ => Colors.pink,
            };
            if (color == Colors.pink) {
              print('${layer.id}: ${layer.paint}');
            }

            final paint = Paint()
              ..color = color
              ..style = PaintingStyle.stroke
              ..strokeWidth = 1.5 * scale;

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
          case VectorTileGeomType.UNKNOWN:
          case null:
            debugPrint('feature cannot be rendered: $feature');
        }
      }
    }

    sw.stop();
    print('${sw.elapsedMilliseconds}ms');
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
