import 'package:flutter_map_vector/src/theme/expressions/expression.dart';

/// Binds expressions to named variables, which can then be referenced in the
/// result expression using ["var", "variable_name"].
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#let
///
/// ["let",
///     string (alphanumeric literal), any,
///         string (alphanumeric literal), any, ...,
///     OutputType
/// ]: OutputType
class LetExpression extends Expression {
  const LetExpression();

  @override
  dynamic evaluate(ExpressionContext context) {
    // TODO: implement evaluate
    throw UnimplementedError();
  }
}

/// References variable bound using "let".
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#var
///
/// ["var", previously bound variable name]: the type of the bound expression
class VarExpression extends Expression {
  const VarExpression();

  @override
  dynamic evaluate(ExpressionContext context) {
    // TODO: implement evaluate
    throw UnimplementedError();
  }
}
