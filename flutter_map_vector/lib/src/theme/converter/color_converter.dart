import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

class ColorConverter implements JsonConverter<Color, Map<String, Object?>> {
  const ColorConverter();

  @override
  Color fromJson(Map<String, Object?> json) {
    throw UnimplementedError();
  }

  @override
  Map<String, Object?> toJson(Color data) {
    throw UnimplementedError();
  }
}
