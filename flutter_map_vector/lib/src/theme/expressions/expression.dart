import 'package:freezed_annotation/freezed_annotation.dart';

/// You can define the value for any layout property, paint property, or
/// filter as an expression.
///
/// An expression defines a formula for computing the value of the property
/// using the operators described below. The expression operators provided
/// by Mapbox GL include:
///
/// - Mathematical operators for performing arithmetic and other operations
///   on numeric values
/// - Logical operators for manipulating boolean values and making
///   conditional decisions
/// - String operators for manipulating strings
/// - Data operators for providing access to the properties of source features
/// - Camera operators for providing access to the parameters defining the
///   current map view
///
/// Expressions are represented as JSON arrays. The first element of an
/// expression array is a string naming the expression operator, for
/// example "*" or "case". Elements that follow (if any) are the arguments
/// to the expression. Each argument is either a literal value (a string,
/// number, boolean, or null), or another expression array.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/
abstract class Expression {
  const Expression();

  dynamic evaluate(ExpressionContext context);

  @override
  String toString() => 'expression(?)';
}

@immutable
final class ExpressionContext {
  final double zoom;
  final double scaleFactor;

  const ExpressionContext({
    required this.zoom,
    required this.scaleFactor,
  });
}
