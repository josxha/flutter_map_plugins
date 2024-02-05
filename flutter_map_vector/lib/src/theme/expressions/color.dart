import 'dart:ui';

import 'package:flutter_map_vector/src/theme/expressions/expression.dart';

abstract class ColorExpression extends Expression {
  String get format;

  final Color color;

  const ColorExpression(this.color);

  @override
  Color evaluate(ExpressionContext context) {
    return color;
  }

  @override
  String toString() => '$format($color)';
}

/// Creates a color value from hue (range 0-360), saturation and lightness
/// components (range 0-100), and an alpha component of 1. If any component is
/// out of range, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#hsl
///
/// ["hsl", number, number, number]: color
class HslExpression extends ColorExpression {
  static const name = 'hsl';

  const HslExpression(super.color);

  @override
  String get format => name;
}

/// Creates a color value from hue (range 0-360), saturation and lightness
/// components (range 0-100), and an alpha component (range 0-1). If any
/// component is out of range, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#hsla
///
/// ["hsla", number, number, number, number]: color
class HslaExpression extends ColorExpression {
  static const name = 'hsla';

  const HslaExpression(super.color);

  @override
  String get format => name;
}

/// Creates a color value from red, green, and blue components, which must
/// range between 0 and 255, and an alpha component of 1. If any component is
/// out of range, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#rgb
///
/// ["rgb", number, number, number]: color
class RgbExpression extends ColorExpression {
  static const name = 'rgb';

  const RgbExpression(super.color);

  @override
  String get format => name;
}

/// Creates a color value from red, green, blue components, which must range
/// between 0 and 255, and an alpha component which must range between 0 and 1.
/// If any component is out of range, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#rgba
///
/// ["rgba", number, number, number, number]: color
class RgbaExpression extends ColorExpression {
  static const name = 'rgba';

  const RgbaExpression(super.color);

  @override
  String get format => name;
}

/// Returns a four-element array containing the input color's red, green,
/// blue, and alpha components, in that order.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#to-rgba
///
/// ["to-rgba", color]: array<number, 4>
class ToRgbaExpression extends Expression {
  static const name = 'to-rgba';
  final Color color;

  const ToRgbaExpression(this.color);

  @override
  List<double> evaluate(ExpressionContext context) => [
        color.red.toDouble(),
        color.green.toDouble(),
        color.blue.toDouble(),
        color.alpha.toDouble(),
      ];

  @override
  String toString() => '$name($color)';
}
