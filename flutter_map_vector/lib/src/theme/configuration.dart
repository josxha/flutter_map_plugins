import 'package:freezed_annotation/freezed_annotation.dart';

part 'configuration.freezed.dart';
part 'configuration.g.dart';

/// A schema describes how a style can be configured. If a schema is present
/// in a style, developers can only change the style through specifying
/// configuration options, and cannot access individual layers. The schema
/// key is a JSON object with its keys representing the option name, and the
/// value option objects.
///
/// https://docs.mapbox.com/style-spec/reference/config/
@Freezed()
class ThemeConfig with _$ThemeConfig {
  const factory ThemeConfig({
    /// Unique import name.
    required String id,

    /// The URL of the style.
    required String url,

    /// Configuration values for the imported style's options.
    Map<String, Object?>? config,

    /// The inlined style that must correspond to the contents of the
    /// specified URL.
    dynamic data,
  }) = _ThemeConfig;

  factory ThemeConfig.fromJson(Map<String, Object?> json) =>
      _$ThemeConfigFromJson(json);
}

/// An option describes how a particular setting can be configured. The only
/// required key is the default value, and all other properties are optional.
/// If they are present, the provided configuration value will be checked
/// against the specification, and might be changed to meet the requirements.
@Freezed()
class ThemeConfigOption with _$ThemeConfigOption {
  const factory ThemeConfigOption({
    /// Default configuration value for this option.
    @JsonKey(name: 'default') required dynamic aDefault,

    /// If true, this option is returned as an array
    bool? array,

    /// If this option is a number, this specifies the maximum allowed value.
    /// Values higher than this will be clamped to the maximum value.
    double? maxValue,

    /// Arbitrary properties useful to track with the layer, but do not
    /// influence rendering. Properties should be prefixed to avoid
    /// collisions, like 'mapbox:'.
    dynamic metadata,

    /// If this option is a number, this specifies the minimum allowed value.
    /// Values lower than this will be clamped to the minimum value.
    double? minValue,

    /// If this option is a number, this specifies the increment
    /// between allowed values. Values will be rounded towards
    /// the nearest allowed value.
    double? stepValue,

    /// The type this value is coerced to after evaluating the expression.
    /// If unspecified, the result is returned as is and is not validated.
    ThemeConfigOptionType? type,

    /// If this option is specified, the result must be one of the given
    /// values. Otherwise, the default value is used instead.
    List<dynamic>? values,
  }) = _ThemeConfigOption;

  factory ThemeConfigOption.fromJson(Map<String, Object?> json) =>
      _$ThemeConfigOptionFromJson(json);
}

@JsonEnum()
enum ThemeConfigOptionType {
  /// The result will be coerced to a string.
  string,

  /// The result will be coerced to a number.
  number,

  /// The result will be coerced to a boolean.
  boolean,

  /// The result will be coerced to a color.
  color;
}
