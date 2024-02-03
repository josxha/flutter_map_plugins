import 'package:flutter_map_vector/src/theme/layer/background.dart';
import 'package:flutter_map_vector/src/theme/layer/layer.dart';
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
