// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'configuration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeConfig _$ThemeConfigFromJson(Map<String, dynamic> json) {
  return _ThemeConfig.fromJson(json);
}

/// @nodoc
mixin _$ThemeConfig {
  /// Unique import name.
  String get id => throw _privateConstructorUsedError;

  /// The URL of the style.
  String get url => throw _privateConstructorUsedError;

  /// Configuration values for the imported style's options.
  Map<String, Object?>? get config => throw _privateConstructorUsedError;

  /// The inlined style that must correspond to the contents of the
  /// specified URL.
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeConfigCopyWith<ThemeConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeConfigCopyWith<$Res> {
  factory $ThemeConfigCopyWith(
          ThemeConfig value, $Res Function(ThemeConfig) then) =
      _$ThemeConfigCopyWithImpl<$Res, ThemeConfig>;
  @useResult
  $Res call(
      {String id, String url, Map<String, Object?>? config, dynamic data});
}

/// @nodoc
class _$ThemeConfigCopyWithImpl<$Res, $Val extends ThemeConfig>
    implements $ThemeConfigCopyWith<$Res> {
  _$ThemeConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? config = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeConfigImplCopyWith<$Res>
    implements $ThemeConfigCopyWith<$Res> {
  factory _$$ThemeConfigImplCopyWith(
          _$ThemeConfigImpl value, $Res Function(_$ThemeConfigImpl) then) =
      __$$ThemeConfigImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String url, Map<String, Object?>? config, dynamic data});
}

/// @nodoc
class __$$ThemeConfigImplCopyWithImpl<$Res>
    extends _$ThemeConfigCopyWithImpl<$Res, _$ThemeConfigImpl>
    implements _$$ThemeConfigImplCopyWith<$Res> {
  __$$ThemeConfigImplCopyWithImpl(
      _$ThemeConfigImpl _value, $Res Function(_$ThemeConfigImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? config = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ThemeConfigImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      config: freezed == config
          ? _value._config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeConfigImpl implements _ThemeConfig {
  const _$ThemeConfigImpl(
      {required this.id,
      required this.url,
      final Map<String, Object?>? config,
      this.data})
      : _config = config;

  factory _$ThemeConfigImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeConfigImplFromJson(json);

  /// Unique import name.
  @override
  final String id;

  /// The URL of the style.
  @override
  final String url;

  /// Configuration values for the imported style's options.
  final Map<String, Object?>? _config;

  /// Configuration values for the imported style's options.
  @override
  Map<String, Object?>? get config {
    final value = _config;
    if (value == null) return null;
    if (_config is EqualUnmodifiableMapView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The inlined style that must correspond to the contents of the
  /// specified URL.
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ThemeConfig(id: $id, url: $url, config: $config, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeConfigImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._config, _config) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      const DeepCollectionEquality().hash(_config),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeConfigImplCopyWith<_$ThemeConfigImpl> get copyWith =>
      __$$ThemeConfigImplCopyWithImpl<_$ThemeConfigImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeConfigImplToJson(
      this,
    );
  }
}

abstract class _ThemeConfig implements ThemeConfig {
  const factory _ThemeConfig(
      {required final String id,
      required final String url,
      final Map<String, Object?>? config,
      final dynamic data}) = _$ThemeConfigImpl;

  factory _ThemeConfig.fromJson(Map<String, dynamic> json) =
      _$ThemeConfigImpl.fromJson;

  @override

  /// Unique import name.
  String get id;
  @override

  /// The URL of the style.
  String get url;
  @override

  /// Configuration values for the imported style's options.
  Map<String, Object?>? get config;
  @override

  /// The inlined style that must correspond to the contents of the
  /// specified URL.
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ThemeConfigImplCopyWith<_$ThemeConfigImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ThemeConfigOption _$ThemeConfigOptionFromJson(Map<String, dynamic> json) {
  return _ThemeConfigOption.fromJson(json);
}

/// @nodoc
mixin _$ThemeConfigOption {
  /// Default configuration value for this option.
  @JsonKey(name: 'default')
  dynamic get aDefault => throw _privateConstructorUsedError;

  /// If true, this option is returned as an array
  bool? get array => throw _privateConstructorUsedError;

  /// If this option is a number, this specifies the maximum allowed value.
  /// Values higher than this will be clamped to the maximum value.
  double? get maxValue => throw _privateConstructorUsedError;

  /// Arbitrary properties useful to track with the layer, but do not
  /// influence rendering. Properties should be prefixed to avoid
  /// collisions, like 'mapbox:'.
  dynamic get metadata => throw _privateConstructorUsedError;

  /// If this option is a number, this specifies the minimum allowed value.
  /// Values lower than this will be clamped to the minimum value.
  double? get minValue => throw _privateConstructorUsedError;

  /// If this option is a number, this specifies the increment
  /// between allowed values. Values will be rounded towards
  /// the nearest allowed value.
  double? get stepValue => throw _privateConstructorUsedError;

  /// The type this value is coerced to after evaluating the expression.
  /// If unspecified, the result is returned as is and is not validated.
  ThemeConfigOptionType? get type => throw _privateConstructorUsedError;

  /// If this option is specified, the result must be one of the given
  /// values. Otherwise, the default value is used instead.
  List<dynamic>? get values => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeConfigOptionCopyWith<ThemeConfigOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeConfigOptionCopyWith<$Res> {
  factory $ThemeConfigOptionCopyWith(
          ThemeConfigOption value, $Res Function(ThemeConfigOption) then) =
      _$ThemeConfigOptionCopyWithImpl<$Res, ThemeConfigOption>;
  @useResult
  $Res call(
      {@JsonKey(name: 'default') dynamic aDefault,
      bool? array,
      double? maxValue,
      dynamic metadata,
      double? minValue,
      double? stepValue,
      ThemeConfigOptionType? type,
      List<dynamic>? values});
}

/// @nodoc
class _$ThemeConfigOptionCopyWithImpl<$Res, $Val extends ThemeConfigOption>
    implements $ThemeConfigOptionCopyWith<$Res> {
  _$ThemeConfigOptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aDefault = freezed,
    Object? array = freezed,
    Object? maxValue = freezed,
    Object? metadata = freezed,
    Object? minValue = freezed,
    Object? stepValue = freezed,
    Object? type = freezed,
    Object? values = freezed,
  }) {
    return _then(_value.copyWith(
      aDefault: freezed == aDefault
          ? _value.aDefault
          : aDefault // ignore: cast_nullable_to_non_nullable
              as dynamic,
      array: freezed == array
          ? _value.array
          : array // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minValue: freezed == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double?,
      stepValue: freezed == stepValue
          ? _value.stepValue
          : stepValue // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeConfigOptionType?,
      values: freezed == values
          ? _value.values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeConfigOptionImplCopyWith<$Res>
    implements $ThemeConfigOptionCopyWith<$Res> {
  factory _$$ThemeConfigOptionImplCopyWith(_$ThemeConfigOptionImpl value,
          $Res Function(_$ThemeConfigOptionImpl) then) =
      __$$ThemeConfigOptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'default') dynamic aDefault,
      bool? array,
      double? maxValue,
      dynamic metadata,
      double? minValue,
      double? stepValue,
      ThemeConfigOptionType? type,
      List<dynamic>? values});
}

/// @nodoc
class __$$ThemeConfigOptionImplCopyWithImpl<$Res>
    extends _$ThemeConfigOptionCopyWithImpl<$Res, _$ThemeConfigOptionImpl>
    implements _$$ThemeConfigOptionImplCopyWith<$Res> {
  __$$ThemeConfigOptionImplCopyWithImpl(_$ThemeConfigOptionImpl _value,
      $Res Function(_$ThemeConfigOptionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aDefault = freezed,
    Object? array = freezed,
    Object? maxValue = freezed,
    Object? metadata = freezed,
    Object? minValue = freezed,
    Object? stepValue = freezed,
    Object? type = freezed,
    Object? values = freezed,
  }) {
    return _then(_$ThemeConfigOptionImpl(
      aDefault: freezed == aDefault
          ? _value.aDefault
          : aDefault // ignore: cast_nullable_to_non_nullable
              as dynamic,
      array: freezed == array
          ? _value.array
          : array // ignore: cast_nullable_to_non_nullable
              as bool?,
      maxValue: freezed == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as double?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as dynamic,
      minValue: freezed == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as double?,
      stepValue: freezed == stepValue
          ? _value.stepValue
          : stepValue // ignore: cast_nullable_to_non_nullable
              as double?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeConfigOptionType?,
      values: freezed == values
          ? _value._values
          : values // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeConfigOptionImpl implements _ThemeConfigOption {
  const _$ThemeConfigOptionImpl(
      {@JsonKey(name: 'default') required this.aDefault,
      this.array,
      this.maxValue,
      this.metadata,
      this.minValue,
      this.stepValue,
      this.type,
      final List<dynamic>? values})
      : _values = values;

  factory _$ThemeConfigOptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeConfigOptionImplFromJson(json);

  /// Default configuration value for this option.
  @override
  @JsonKey(name: 'default')
  final dynamic aDefault;

  /// If true, this option is returned as an array
  @override
  final bool? array;

  /// If this option is a number, this specifies the maximum allowed value.
  /// Values higher than this will be clamped to the maximum value.
  @override
  final double? maxValue;

  /// Arbitrary properties useful to track with the layer, but do not
  /// influence rendering. Properties should be prefixed to avoid
  /// collisions, like 'mapbox:'.
  @override
  final dynamic metadata;

  /// If this option is a number, this specifies the minimum allowed value.
  /// Values lower than this will be clamped to the minimum value.
  @override
  final double? minValue;

  /// If this option is a number, this specifies the increment
  /// between allowed values. Values will be rounded towards
  /// the nearest allowed value.
  @override
  final double? stepValue;

  /// The type this value is coerced to after evaluating the expression.
  /// If unspecified, the result is returned as is and is not validated.
  @override
  final ThemeConfigOptionType? type;

  /// If this option is specified, the result must be one of the given
  /// values. Otherwise, the default value is used instead.
  final List<dynamic>? _values;

  /// If this option is specified, the result must be one of the given
  /// values. Otherwise, the default value is used instead.
  @override
  List<dynamic>? get values {
    final value = _values;
    if (value == null) return null;
    if (_values is EqualUnmodifiableListView) return _values;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ThemeConfigOption(aDefault: $aDefault, array: $array, maxValue: $maxValue, metadata: $metadata, minValue: $minValue, stepValue: $stepValue, type: $type, values: $values)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeConfigOptionImpl &&
            const DeepCollectionEquality().equals(other.aDefault, aDefault) &&
            (identical(other.array, array) || other.array == array) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            const DeepCollectionEquality().equals(other.metadata, metadata) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.stepValue, stepValue) ||
                other.stepValue == stepValue) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._values, _values));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(aDefault),
      array,
      maxValue,
      const DeepCollectionEquality().hash(metadata),
      minValue,
      stepValue,
      type,
      const DeepCollectionEquality().hash(_values));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeConfigOptionImplCopyWith<_$ThemeConfigOptionImpl> get copyWith =>
      __$$ThemeConfigOptionImplCopyWithImpl<_$ThemeConfigOptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeConfigOptionImplToJson(
      this,
    );
  }
}

abstract class _ThemeConfigOption implements ThemeConfigOption {
  const factory _ThemeConfigOption(
      {@JsonKey(name: 'default') required final dynamic aDefault,
      final bool? array,
      final double? maxValue,
      final dynamic metadata,
      final double? minValue,
      final double? stepValue,
      final ThemeConfigOptionType? type,
      final List<dynamic>? values}) = _$ThemeConfigOptionImpl;

  factory _ThemeConfigOption.fromJson(Map<String, dynamic> json) =
      _$ThemeConfigOptionImpl.fromJson;

  @override

  /// Default configuration value for this option.
  @JsonKey(name: 'default')
  dynamic get aDefault;
  @override

  /// If true, this option is returned as an array
  bool? get array;
  @override

  /// If this option is a number, this specifies the maximum allowed value.
  /// Values higher than this will be clamped to the maximum value.
  double? get maxValue;
  @override

  /// Arbitrary properties useful to track with the layer, but do not
  /// influence rendering. Properties should be prefixed to avoid
  /// collisions, like 'mapbox:'.
  dynamic get metadata;
  @override

  /// If this option is a number, this specifies the minimum allowed value.
  /// Values lower than this will be clamped to the minimum value.
  double? get minValue;
  @override

  /// If this option is a number, this specifies the increment
  /// between allowed values. Values will be rounded towards
  /// the nearest allowed value.
  double? get stepValue;
  @override

  /// The type this value is coerced to after evaluating the expression.
  /// If unspecified, the result is returned as is and is not validated.
  ThemeConfigOptionType? get type;
  @override

  /// If this option is specified, the result must be one of the given
  /// values. Otherwise, the default value is used instead.
  List<dynamic>? get values;
  @override
  @JsonKey(ignore: true)
  _$$ThemeConfigOptionImplCopyWith<_$ThemeConfigOptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
