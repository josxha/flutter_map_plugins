import 'package:flutter_map_vector/src/theme/expressions/expression.dart';

/// Returns a string consisting of the concatenation of the inputs.
/// Each input is converted to a string as if by to-string.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#concat
///
/// ["concat", value, value, ...]: string
class ConcatExpression extends Expression {
  static const name = 'concat';
  final List<String> list;

  const ConcatExpression(this.list);

  @override
  String toString() => '$name($list)';

  @override
  String evaluate(ExpressionContext context) => list.join();
}

/// Returns the input string converted to lowercase. Follows the Unicode
/// Default Case Conversion algorithm and the locale-insensitive case mappings
/// in the Unicode Character Database.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#downcase
///
/// ["downcase", string]: string
class DownCaseExpression extends Expression {
  static const name = 'downcase';
  final String string;

  const DownCaseExpression(this.string);

  @override
  String evaluate(ExpressionContext context) => string.toLowerCase();

  @override
  String toString() => '$name($string)';
}

/// Returns true if the input string is expected to render legibly.
/// Returns false if the input string contains sections that cannot be rendered
/// without potential loss of meaning (e.g. Indic scripts that require complex
/// text shaping, or right-to-left scripts if the the mapbox-gl-rtl-text
/// plugin is not in use in Mapbox GL JS).
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#is-supported-script
///
/// ["is-supported-script", string]: boolean
class IsSupportedScriptExpression extends Expression {
  static const name = 'is-supported-script';
  final String string;

  const IsSupportedScriptExpression(this.string);

  // TODO implement
  @override
  bool evaluate(ExpressionContext context) => true;

  @override
  String toString() => '$name($string)';
}

/// Returns the IETF language tag of the locale being used by the provided
/// collator. This can be used to determine the default system locale, or to
/// determine if a requested locale was successfully loaded.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#resolved-locale
///
/// ["resolved-locale", collator]: string
class ResolvedLocaleExpression extends Expression {
  static const name = 'resolved-locale';
  final String string;

  const ResolvedLocaleExpression(this.string);

  // TODO implement
  @override
  String evaluate(ExpressionContext context) => string;

  @override
  String toString() => '$name($string)';
}

/// Returns the input string converted to uppercase. Follows the Unicode
/// Default Case Conversion algorithm and the locale-insensitive case mappings
/// in the Unicode Character Database.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#upcase
///
/// ["upcase", string]: string
class UpCaseExpression extends Expression {
  static const name = 'upcase';
  final String string;

  const UpCaseExpression(this.string);

  @override
  String evaluate(ExpressionContext context) => string.toUpperCase();

  @override
  String toString() => '$name($string)';
}
