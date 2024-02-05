import 'dart:ui';

import 'package:flutter_map_vector/src/theme/expressions/expression.dart';

// You can use type expressions to test and convert between different data
// types like strings, numbers, and boolean values.
//
// Often, such tests and conversions are unnecessary, but they may be necessary
// in some expressions where the type of a certain sub-expression is ambiguous.
// They can also be useful in cases where your feature data has inconsistent
// types; for example, you could use to-number to make sure that values like
// "1.5" (instead of 1.5) are treated as numeric values.

/// Asserts that the input is an array (optionally with a specific item type
/// and length). If, when the input expression is evaluated, it is not of the
/// asserted type, then this assertion will cause the whole expression to
/// be aborted.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-array
///
/// ["array", value]: array
/// ["array", type: "string" | "number" | "boolean", value]: array<type>
/// ["array",
///     type: "string" | "number" | "boolean",
///     N: number (literal),
///     value
/// ]: array<type, N>
class ArrayExpression<T> implements Expression {
  static const name = 'array';
  final List<T> array;

  const ArrayExpression(this.array);

  static ArrayExpression parse(List<dynamic> raw) {
    final length = raw.length;
    final list = raw[length - 1] as List;
    // type of list not known
    if (length != 3 && length != 4) {
      return ArrayExpression(list);
    }
    // type safe
    return switch (raw[1]) {
      'string' => ArrayExpression<String>(list.cast<String>()),
      'number' => ArrayExpression<double>(list.cast<double>()),
      'boolean' => ArrayExpression<bool>(list.cast<bool>()),
      _ => ArrayExpression(list),
    };
  }

  @override
  List<T> evaluate(ExpressionContext context) => array;

  @override
  String toString() => '$name($array))';
}

/// Asserts that the input value is a boolean. If multiple values are provided,
/// each one is evaluated in order until a boolean is obtained. If none of the
/// inputs are booleans, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-boolean
///
/// ["boolean", value]: boolean
/// ["boolean", value, fallback: value, fallback: value, ...]: boolean
class BooleanExpression extends Expression {
  static const name = 'boolean';
  final bool value;

  const BooleanExpression(this.value);

  @override
  bool evaluate(ExpressionContext context) => value;

  @override
  String toString() => '$name($value))';
}

/// Returns a collator for use in locale-dependent comparison operations. The
/// case-sensitive and diacritic-sensitive options default to false. The locale
/// argument specifies the IETF language tag of the locale to use. If none is
/// provided, the default locale is used. If the requested locale is not
/// available, the collator will use a system-defined fallback locale. Use
/// resolved-locale to test the results of locale fallback behavior.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-collator
///
/// ["collator",
///     { "case-sensitive": boolean,
///       "diacritic-sensitive": boolean,
///       "locale": string }
/// ]: collator
class CollatorExpression extends Expression {
  static const name = 'collator';

  const CollatorExpression();

  // TODO implement
  @override
  dynamic evaluate(ExpressionContext context) => null;

  @override
  String toString() => '$name(?))';
}

/// Returns a formatted string for displaying mixed-format text in the
/// text-field property. The input may contain a string literal or expression,
/// including an 'image' expression. Strings may be followed by a style
/// override object that supports the following properties:
///
/// "text-font": Overrides the font stack specified by the root layout property.
/// "text-color": Overrides the color specified by the root paint property.
/// "font-scale": Applies a scaling factor on text-size as specified by the
/// root layout property.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-format
///
/// ["format",
///     input_1: string | image, options_1: { "font-scale": number,
///         "text-font": array<string>, "text-color": color },
///     ...,
///     input_n: string | image, options_n: { "font-scale": number,
///         "text-font": array<string>, "text-color": color }
/// ]: formatted
class FormatExpression extends Expression {
  static const name = 'format';

  const FormatExpression();

  // TODO implement
  @override
  dynamic evaluate(ExpressionContext context) => null;

  @override
  String toString() => '$name(?))';
}

/// Returns a ResolvedImage for use in icon-image, *-pattern entries, and as a
/// section in the 'format' expression. A 'coalesce' expression containing
/// image expressions will evaluate to the first listed image that is currently
/// in the style. This validation process is synchronous and requires the
/// image to have been added to the style before requesting it in the
/// 'image' argument.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-image
///
/// ["image", value]: image
class ImageExpression extends Expression {
  static const name = 'image';

  const ImageExpression();

  // TODO implement
  @override
  dynamic evaluate(ExpressionContext context) => null;

  @override
  String toString() => '$name(?))';
}

/// Provides a literal array or object value.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-literal
///
/// ["literal", [...] (JSON array literal)]: array<T, N>
/// ["literal", {...} (JSON object literal)]: object
class LiteralExpression<T> extends Expression {
  static const name = 'literal';
  final T value;

  const LiteralExpression(this.value);

  @override
  T evaluate(ExpressionContext context) => value;

  @override
  String toString() => '$name($value))';
}

/// Asserts that the input value is a number. If multiple values are provided,
/// each one is evaluated in order until a number is obtained. If none of the
/// inputs are numbers, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-number
///
/// ["number", value]: number
/// ["number", value, fallback: value, fallback: value, ...]: number
class NumberExpression extends Expression {
  static const name = 'number';
  final double number;

  const NumberExpression(this.number);

  @override
  double evaluate(ExpressionContext context) => number;

  @override
  String toString() => '$name($number))';
}

/// Converts the input number into a string representation using the providing
/// formatting rules. If set, the locale argument specifies the locale to use,
/// as a BCP 47 language tag. If set, the currency argument specifies an
/// ISO 4217 code to use for currency-style formatting. If set, the unit
/// argument specifies a simple ECMAScript unit to use for unit-style
/// formatting. If set, the min-fraction-digits and max-fraction-digits
/// arguments specify the minimum and maximum number of fractional digits
/// to include.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-number-format
///
/// ["number-format",
///     input: number,
///     options: { "locale": string, "currency": string,
///         "min-fraction-digits": number, "max-fraction-digits": number }
/// ]: string
class NumberFormatExpression extends Expression {
  static const name = 'number-format';
  final double number;

  const NumberFormatExpression(this.number);

  // TODO implement
  @override
  String evaluate(ExpressionContext context) => '';

  @override
  String toString() => '$name(?))';
}

/// Asserts that the input value is an object. If multiple values are provided,
/// each one is evaluated in order until an object is obtained. If none of the
/// inputs are objects, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-object
///
/// ["object", value]: object
/// ["object", value, fallback: value, fallback: value, ...]: object
class ObjectExpression<T> extends Expression {
  static const name = 'object';
  final T object;

  const ObjectExpression(this.object);

  // TODO implement
  @override
  T evaluate(ExpressionContext context) => object;

  @override
  String toString() => '$name($object))';
}

/// Asserts that the input value is a string. If multiple values are provided,
/// each one is evaluated in order until a string is obtained. If none of the
/// inputs are strings, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-string
///
/// ["string", value]: string
/// ["string", value, fallback: value, fallback: value, ...]: string
class StringExpression<T> extends Expression {
  static const name = 'object';
  final String string;

  const StringExpression(this.string);

  // TODO implement
  @override
  String evaluate(ExpressionContext context) => string;

  @override
  String toString() => '$name($string))';
}

/// Converts the input value to a boolean. The result is false when then input
/// is an empty string, 0, false, null, or NaN; otherwise it is true.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-to-boolean
///
/// ["to-boolean", value]: boolean
class ToBooleanExpression extends Expression {
  static const name = 'to-boolean';
  final dynamic value;

  const ToBooleanExpression(this.value);

  @override
  bool evaluate(ExpressionContext context) =>
      value != '' && value != 0 && value != false && value != null;

  @override
  String toString() => '$name($value))';
}

/// Converts the input value to a color. If multiple values are provided,
/// each one is evaluated in order until the first successful conversion
/// is obtained. If none of the inputs can be converted, the expression
/// is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-to-color
///
/// ["to-color", value, fallback: value, fallback: value, ...]: color
class ToColorExpression extends Expression {
  static const name = 'to-color';
  final dynamic value;

  const ToColorExpression(this.value);

  // TODO implement
  @override
  Color evaluate(ExpressionContext context) => throw UnimplementedError();

  @override
  String toString() => '$name($value))';
}

/// Converts the input value to a number, if possible. If the input is null or
/// false, the result is 0. If the input is true, the result is 1. If the input
/// is a string, it is converted to a number as specified by the
/// "ToNumber Applied to the String Type" algorithm of the ECMAScript Language
/// Specification. If multiple values are provided, each one is evaluated in
/// order until the first successful conversion is obtained. If none of the
/// inputs can be converted, the expression is an error.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-to-number
///
/// ["to-number", value, fallback: value, fallback: value, ...]: number
class ToNumberExpression extends Expression {
  static const name = 'to-number';
  final dynamic value;

  const ToNumberExpression(this.value);

  // TODO implement
  @override
  double evaluate(ExpressionContext context) => 0;

  @override
  String toString() => '$name($value))';
}

/// Converts the input value to a string. If the input is null,
/// the result is "". If the input is a boolean, the result is "true" or
/// "false". If the input is a number, it is converted to a string as specified
/// by the "NumberToString" algorithm of the ECMAScript Language Specification.
/// If the input is a color, it is converted to a string of the form
/// "rgba(r,g,b,a)", where r, g, and b are numerals ranging from 0 to 255, and
/// a ranges from 0 to 1. If the input is an 'image' expression, 'to-string'
/// returns the image name. Otherwise, the input is converted to a string in
/// the format specified by the JSON.stringify function of the
/// ECMAScript Language Specification.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-to-string
///
/// ["to-string", value]: string
class ToStringExpression extends Expression {
  static const name = 'to-string';
  final dynamic value;

  const ToStringExpression(this.value);

  @override
  String evaluate(ExpressionContext context) {
    if (value == null) return '';
    // TODO implement
    return value.toString();
  }

  @override
  String toString() => '$name($value))';
}

/// Returns a string describing the type of the given value.
///
/// https://docs.mapbox.com/style-spec/reference/expressions/#types-typeof
///
/// ["typeof", value]: string
class TypeOfExpression extends Expression {
  static const name = 'typeof';
  final dynamic value;

  const TypeOfExpression(this.value);

  @override
  String evaluate(ExpressionContext context) => switch (value) {
        final String _ => 'string',
        final num _ => 'number',
        final bool _ => 'boolean',
        _ => value.toString(),
      };

  @override
  String toString() => '$name($value))';
}
