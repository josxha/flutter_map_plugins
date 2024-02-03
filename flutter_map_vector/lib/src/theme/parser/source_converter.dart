import 'package:flutter_map_vector/src/theme/sources/geojson_source.dart';
import 'package:flutter_map_vector/src/theme/sources/image_source.dart';
import 'package:flutter_map_vector/src/theme/sources/raster_dem_source.dart';
import 'package:flutter_map_vector/src/theme/sources/raster_source.dart';
import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:flutter_map_vector/src/theme/sources/vector_source.dart';
import 'package:flutter_map_vector/src/theme/sources/video_source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SourceConverter
    implements JsonConverter<Map<String, ThemeSource>, Map<String, Object?>> {
  const SourceConverter();

  @override
  Map<String, ThemeSource> fromJson(Map<String, Object?> json) {
    final data = <String, ThemeSource>{};
    for (final entry in json.entries) {
      final type = json['type'];
      if (type is! String) {
        throw Exception("Couldn't parse theme source '${entry.key}': $entry");
      }
      data[entry.key] = switch (json['type']) {
        'vector' => ThemeVectorSource.fromJson(json),
        'raster' => ThemeRasterSource.fromJson(json),
        'rasterDem' => ThemeRasterDemSource.fromJson(json),
        'geojson' => ThemeGeoJsonSource.fromJson(json),
        'image' => ThemeImageSource.fromJson(json),
        'video' => ThemeVideoSource.fromJson(json),
        _ =>
          throw Exception("Couldn't parse theme source '${entry.key}': $entry"),
      };
    }
    return data;
  }

  @override
  Map<String, Object?> toJson(Map<String, ThemeSource> data) {
    throw UnimplementedError();
  }
}
