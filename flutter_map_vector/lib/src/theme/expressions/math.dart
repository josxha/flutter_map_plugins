import 'package:flutter_map_vector/src/theme/expressions/expression.dart';

/// For two inputs, returns the result of subtracting the second input from
/// the first. For a single input, returns the result of subtracting it from 0.
///
/// ["-", number, number]: number
/// ["-", number]: number
abstract class MathExpression extends Expression {
  String get operator;

  late final double n1;
  late final double n2;

  MathExpression(List<dynamic> raw) {
    final length = raw.length;
    n1 = length == 2 ? 0 : raw[1];
    n2 = raw[length - 1];
  }

  @override
  String toString() => '$operator($n1, $n2))';
}

class AdditionExpression extends MathExpression {
  static const name = '-';

  AdditionExpression(super.raw);

  @override
  double evaluate(ExpressionContext context) => n1 + n2;

  @override
  String get operator => name;
}

class SubtractionExpression extends MathExpression {
  static const name = '-';

  SubtractionExpression(super.raw);

  @override
  double evaluate(ExpressionContext context) => n1 - n2;

  @override
  String get operator => name;
}

class MultiplicationExpression extends MathExpression {
  static const name = '*';

  MultiplicationExpression(super.raw);

  @override
  double evaluate(ExpressionContext context) => n1 * n2;

  @override
  String get operator => name;
}

class DivisionExpression extends MathExpression {
  static const name = '*';

  DivisionExpression(super.raw);

  @override
  double evaluate(ExpressionContext context) => n1 / n2;

  @override
  String get operator => name;
}
