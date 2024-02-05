import 'package:flutter_map_vector/src/theme/expressions/expression.dart';

/// Returns the kernel density estimation of a pixel in a heatmap layer, which
/// is a relative measure of how many data points are crowded around a
/// particular pixel. Can only be used in the heatmap-color property.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#heatmap
///
/// ["heatmap-density"]: number
class HeatmapDensityExpression extends Expression {
  static const name = 'heatmap-density';
  final double value;

  const HeatmapDensityExpression(this.value);

  @override
  double evaluate(ExpressionContext context) {
    return value;
  }

  @override
  String toString() => '$name($value)';
}
