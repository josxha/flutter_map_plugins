import 'package:flutter_map_vector/src/theme/expressions/expression.dart';

/// Returns the distance of a symbol instance from the center of the map.
/// The distance is measured in pixels divided by the height of the map
/// container. It measures 0 at the center, decreases towards the camera and
/// increase away from the camera. For example, if the height of the map is
/// 1000px, a value of -1 means 1000px away from the center towards the camera,
/// and a value of 1 means a distance of 1000px away from the camera from
/// the center. ["distance-from-center"] may only be used in the filter
/// expression for a symbol layer.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#distance-from-center
///
/// ["distance-from-center"]: number
class DistanceFromCenterExpression extends Expression {
  static const name = 'distance-from-center';
  final double value;

  const DistanceFromCenterExpression(this.value);

  @override
  double evaluate(ExpressionContext context) {
    return value;
  }

  @override
  String toString() => '$name($value)';
}

/// Returns the current pitch in degrees. ["pitch"] may only be used in the
/// filter expression for a symbol layer.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#pitch
///
/// ["pitch"]: number
class PitchExpression extends Expression {
  static const name = 'pitch';
  final double value;

  const PitchExpression(this.value);

  @override
  double evaluate(ExpressionContext context) {
    return value;
  }

  @override
  String toString() => '$name($value)';
}

/// Returns the current zoom level. Note that in style layout and paint
/// properties, ["zoom"] may only appear as the input to a top-level
/// "step" or "interpolate" expression.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#zoom
///
/// ["zoom"]: number
class ZoomExpression extends Expression {
  static const name = 'zoom';
  final double value;

  const ZoomExpression(this.value);

  @override
  double evaluate(ExpressionContext context) {
    return value;
  }

  @override
  String toString() => '$name($value)';
}
