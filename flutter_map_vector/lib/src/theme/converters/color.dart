import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

/// The color type is a color in the sRGB color space. Colors are JSON strings
/// in a variety of permitted formats: HTML-style hex values, RGB, RGBA, HSL,
/// and HSLA. Predefined HTML colors names, like yellow and blue, are
/// also permitted.
///
/// {
///     "line-color": "#ff0",
///     "line-color": "#ffff00",
///     "line-color": "rgb(255, 255, 0)",
///     "line-color": "rgba(255, 255, 0, 1)",
///     "line-color": "hsl(100, 50%, 50%)",
///     "line-color": "hsla(100, 50%, 50%, 1)",
///     "line-color": "yellow"
/// }
class ColorConverter implements JsonConverter<Color, Map<String, dynamic>> {
  const ColorConverter();

  @override
  Color? fromJson(dynamic jsonValue) {
    if (jsonValue == null) return null;
  }

  @override
  Map<String, dynamic> toJson(Color data) => data.toJson();
}
