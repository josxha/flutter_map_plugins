import 'package:flutter_map_vector/src/theme/layer/background.dart';
import 'package:flutter_map_vector/src/theme/layer/circle.dart';
import 'package:flutter_map_vector/src/theme/layer/fill.dart';
import 'package:flutter_map_vector/src/theme/layer/fill_extrusion.dart';
import 'package:flutter_map_vector/src/theme/layer/heatmap.dart';
import 'package:flutter_map_vector/src/theme/layer/hillshade.dart';
import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:flutter_map_vector/src/theme/layer/line.dart';
import 'package:flutter_map_vector/src/theme/layer/model.dart';
import 'package:flutter_map_vector/src/theme/layer/raster.dart';
import 'package:flutter_map_vector/src/theme/layer/sky.dart';
import 'package:flutter_map_vector/src/theme/layer/symbol.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class LayerListConverter
    implements JsonConverter<List<ThemeLayer>, List<Map<String, Object>>> {
  const LayerListConverter();

  @override
  List<ThemeLayer> fromJson(List<Map<String, Object>> jsonArray) {
    final data = <ThemeLayer>[];
    for (final entry in jsonArray) {
      final type = entry['type'];
      if (type is! String) {
        throw Exception("Couldn't parse theme Layer '$type': $entry");
      }
      final layer = switch (type) {
        'background' => ThemeBackgroundLayer.fromJson(entry),
        'circle' => ThemeCircleLayer.fromJson(entry),
        'fill' => ThemeFillLayer.fromJson(entry),
        'fill-extrusion' => ThemeFillExtrusionLayer.fromJson(entry),
        'heatmap' => ThemeHeatmapLayer.fromJson(entry),
        'hillshade' => ThemeHillshadeLayer.fromJson(entry),
        'line' => ThemeLineLayer.fromJson(entry),
        'model' => ThemeModelLayer.fromJson(entry),
        'raster' => ThemeRasterLayer.fromJson(entry),
        'sky' => ThemeSkyLayer.fromJson(entry),
        'symbol' => ThemeSymbolLayer.fromJson(entry),
        _ => throw Exception("Couldn't parse theme Layer '$type': $entry"),
      };
      data.add(layer);
    }
    return data;
  }

  @override
  List<Map<String, Object>> toJson(List<ThemeLayer> data) {
    throw UnimplementedError();
  }
}
