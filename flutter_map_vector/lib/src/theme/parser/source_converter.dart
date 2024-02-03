import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class SourceConverter
    implements JsonConverter<Map<String, ThemeSource>, Map<String, Object?>> {
  const SourceConverter();

  @override
  Map<String, ThemeSource> fromJson(Map<String, Object?> json) {
    final data = <String, ThemeSource>{};
    for (final entry in json.entries) {
      data[entry.key] =
          ThemeSource.fromJson(entry.value! as Map<String, Object?>);
    }
    return data;
  }

  @override
  Map<String, Object?> toJson(Map<String, ThemeSource> data) {
    throw UnimplementedError();
  }
}
