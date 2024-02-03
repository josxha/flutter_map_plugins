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

class LayerConverter
    implements JsonConverter<Map<String, ThemeLayer>, Map<String, Object?>> {
  const LayerConverter();

  @override
  Map<String, ThemeLayer> fromJson(Map<String, Object?> json) {
    final data = <String, ThemeLayer>{};
    for (final entry in json.entries) {
      final type = json['type'];
      if (type is! String) {
        throw Exception("Couldn't parse theme Layer '${entry.key}': $entry");
      }
      data[entry.key] = switch (json['type']) {
        'background' => ThemeBackgroundLayer.fromJson(json),
        'circle' => ThemeCircleLayer.fromJson(json),
        'fill' => ThemeFillLayer.fromJson(json),
        'fill-extrusion' => ThemeFillExtrusionLayer.fromJson(json),
        'heatmap' => ThemeHeatmapLayer.fromJson(json),
        'hillshade' => ThemeHillshadeLayer.fromJson(json),
        'layer' => ThemeLineLayer.fromJson(json),
        'model' => ThemeModelLayer.fromJson(json),
        'raster' => ThemeRasterLayer.fromJson(json),
        'sky' => ThemeSkyLayer.fromJson(json),
        'symbol' => ThemeSymbolLayer.fromJson(json),
        _ =>
          throw Exception("Couldn't parse theme Layer '${entry.key}': $entry"),
      };
    }
    return data;
  }

  @override
  Map<String, Object?> toJson(Map<String, ThemeLayer> data) {
    throw UnimplementedError();
  }
}
