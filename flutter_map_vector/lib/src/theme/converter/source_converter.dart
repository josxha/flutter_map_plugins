import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SourceConverter
    implements JsonConverter<Map<String, ThemeSource>, Map<String, Object?>> {
  const SourceConverter();

  @override
  Map<String, ThemeSource> fromJson(Map<String, Object?> json) {
    final data = <String, ThemeSource>{};
    for (final entry in json.entries) {
      final jsonSource = entry.value! as Map<String, Object?>;
      final type = jsonSource['type'];
      if (type is! String) {
        throw Exception(
          "Couldn't parse theme source '${entry.key}': ${entry.value}",
        );
      }
      data[entry.key] = switch (type) {
        'vector' => ThemeVectorSource.fromJson(jsonSource),
        'raster' => ThemeRasterSource.fromJson(jsonSource),
        'rasterDem' => ThemeRasterDemSource.fromJson(jsonSource),
        'geojson' => ThemeGeoJsonSource.fromJson(jsonSource),
        'image' => ThemeImageSource.fromJson(jsonSource),
        'video' => ThemeVideoSource.fromJson(jsonSource),
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
