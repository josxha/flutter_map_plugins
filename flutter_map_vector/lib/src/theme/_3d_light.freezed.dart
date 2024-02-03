// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '_3d_light.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Theme3dLight _$Theme3dLightFromJson(Map<String, dynamic> json) {
  return _Theme3dLight.fromJson(json);
}

/// @nodoc
mixin _$Theme3dLight {
  /// Unique light name.
  String get id => throw _privateConstructorUsedError;

  /// Properties of the light.
  dynamic get properties => throw _privateConstructorUsedError;

  /// Type of the light to be added
  Theme3dLightType? get type => throw _privateConstructorUsedError;

  /// Using the measure-light expression, a layer can change its color based
  /// on the light configuration.
  @JsonKey(name: 'measure-light')
  dynamic get measureLight => throw _privateConstructorUsedError;

  /// Enable/Disable shadow casting for this light
  @JsonKey(name: 'cast-shadows')
  bool get castShadows => throw _privateConstructorUsedError;

  /// Color of the directional light.
  dynamic get color => throw _privateConstructorUsedError;

  /// Direction of the light source specified as
  /// [0] a azimuthal angle
  /// [1] p polar angle
  /// where a indicates the azimuthal angle of the light relative to
  /// north (in degrees and proceeding clockwise), and p indicates polar
  /// angle of the light (from 0°, directly above, to 180°, directly below).
  List<double>? get direction =>
      throw _privateConstructorUsedError; // A multiplier for the color of the directional light.
  @Assert('intensity >= 0 && intensity <= 1')
  double get intensity => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $Theme3dLightCopyWith<Theme3dLight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $Theme3dLightCopyWith<$Res> {
  factory $Theme3dLightCopyWith(
          Theme3dLight value, $Res Function(Theme3dLight) then) =
      _$Theme3dLightCopyWithImpl<$Res, Theme3dLight>;
  @useResult
  $Res call(
      {String id,
      dynamic properties,
      Theme3dLightType? type,
      @JsonKey(name: 'measure-light') dynamic measureLight,
      @JsonKey(name: 'cast-shadows') bool castShadows,
      dynamic color,
      List<double>? direction,
      @Assert('intensity >= 0 && intensity <= 1') double intensity});
}

/// @nodoc
class _$Theme3dLightCopyWithImpl<$Res, $Val extends Theme3dLight>
    implements $Theme3dLightCopyWith<$Res> {
  _$Theme3dLightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? properties = freezed,
    Object? type = freezed,
    Object? measureLight = freezed,
    Object? castShadows = null,
    Object? color = freezed,
    Object? direction = freezed,
    Object? intensity = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Theme3dLightType?,
      measureLight: freezed == measureLight
          ? _value.measureLight
          : measureLight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      castShadows: null == castShadows
          ? _value.castShadows
          : castShadows // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      direction: freezed == direction
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Theme3dLightImplCopyWith<$Res>
    implements $Theme3dLightCopyWith<$Res> {
  factory _$$Theme3dLightImplCopyWith(
          _$Theme3dLightImpl value, $Res Function(_$Theme3dLightImpl) then) =
      __$$Theme3dLightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      dynamic properties,
      Theme3dLightType? type,
      @JsonKey(name: 'measure-light') dynamic measureLight,
      @JsonKey(name: 'cast-shadows') bool castShadows,
      dynamic color,
      List<double>? direction,
      @Assert('intensity >= 0 && intensity <= 1') double intensity});
}

/// @nodoc
class __$$Theme3dLightImplCopyWithImpl<$Res>
    extends _$Theme3dLightCopyWithImpl<$Res, _$Theme3dLightImpl>
    implements _$$Theme3dLightImplCopyWith<$Res> {
  __$$Theme3dLightImplCopyWithImpl(
      _$Theme3dLightImpl _value, $Res Function(_$Theme3dLightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? properties = freezed,
    Object? type = freezed,
    Object? measureLight = freezed,
    Object? castShadows = null,
    Object? color = freezed,
    Object? direction = freezed,
    Object? intensity = null,
  }) {
    return _then(_$Theme3dLightImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      properties: freezed == properties
          ? _value.properties
          : properties // ignore: cast_nullable_to_non_nullable
              as dynamic,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Theme3dLightType?,
      measureLight: freezed == measureLight
          ? _value.measureLight
          : measureLight // ignore: cast_nullable_to_non_nullable
              as dynamic,
      castShadows: null == castShadows
          ? _value.castShadows
          : castShadows // ignore: cast_nullable_to_non_nullable
              as bool,
      color: freezed == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as dynamic,
      direction: freezed == direction
          ? _value._direction
          : direction // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Theme3dLightImpl implements _Theme3dLight {
  const _$Theme3dLightImpl(
      {required this.id,
      this.properties,
      this.type,
      @JsonKey(name: 'measure-light') this.measureLight,
      @JsonKey(name: 'cast-shadows') this.castShadows = false,
      this.color = const Color(0x00ffffff),
      final List<double>? direction,
      @Assert('intensity >= 0 && intensity <= 1') this.intensity = 0.5})
      : _direction = direction;

  factory _$Theme3dLightImpl.fromJson(Map<String, dynamic> json) =>
      _$$Theme3dLightImplFromJson(json);

  /// Unique light name.
  @override
  final String id;

  /// Properties of the light.
  @override
  final dynamic properties;

  /// Type of the light to be added
  @override
  final Theme3dLightType? type;

  /// Using the measure-light expression, a layer can change its color based
  /// on the light configuration.
  @override
  @JsonKey(name: 'measure-light')
  final dynamic measureLight;

  /// Enable/Disable shadow casting for this light
  @override
  @JsonKey(name: 'cast-shadows')
  final bool castShadows;

  /// Color of the directional light.
  @override
  @JsonKey()
  final dynamic color;

  /// Direction of the light source specified as
  /// [0] a azimuthal angle
  /// [1] p polar angle
  /// where a indicates the azimuthal angle of the light relative to
  /// north (in degrees and proceeding clockwise), and p indicates polar
  /// angle of the light (from 0°, directly above, to 180°, directly below).
  final List<double>? _direction;

  /// Direction of the light source specified as
  /// [0] a azimuthal angle
  /// [1] p polar angle
  /// where a indicates the azimuthal angle of the light relative to
  /// north (in degrees and proceeding clockwise), and p indicates polar
  /// angle of the light (from 0°, directly above, to 180°, directly below).
  @override
  List<double>? get direction {
    final value = _direction;
    if (value == null) return null;
    if (_direction is EqualUnmodifiableListView) return _direction;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// A multiplier for the color of the directional light.
  @override
  @JsonKey()
  @Assert('intensity >= 0 && intensity <= 1')
  final double intensity;

  @override
  String toString() {
    return 'Theme3dLight(id: $id, properties: $properties, type: $type, measureLight: $measureLight, castShadows: $castShadows, color: $color, direction: $direction, intensity: $intensity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Theme3dLightImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.properties, properties) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.measureLight, measureLight) &&
            (identical(other.castShadows, castShadows) ||
                other.castShadows == castShadows) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other._direction, _direction) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(properties),
      type,
      const DeepCollectionEquality().hash(measureLight),
      castShadows,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(_direction),
      intensity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Theme3dLightImplCopyWith<_$Theme3dLightImpl> get copyWith =>
      __$$Theme3dLightImplCopyWithImpl<_$Theme3dLightImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Theme3dLightImplToJson(
      this,
    );
  }
}

abstract class _Theme3dLight implements Theme3dLight {
  const factory _Theme3dLight(
          {required final String id,
          final dynamic properties,
          final Theme3dLightType? type,
          @JsonKey(name: 'measure-light') final dynamic measureLight,
          @JsonKey(name: 'cast-shadows') final bool castShadows,
          final dynamic color,
          final List<double>? direction,
          @Assert('intensity >= 0 && intensity <= 1') final double intensity}) =
      _$Theme3dLightImpl;

  factory _Theme3dLight.fromJson(Map<String, dynamic> json) =
      _$Theme3dLightImpl.fromJson;

  @override

  /// Unique light name.
  String get id;
  @override

  /// Properties of the light.
  dynamic get properties;
  @override

  /// Type of the light to be added
  Theme3dLightType? get type;
  @override

  /// Using the measure-light expression, a layer can change its color based
  /// on the light configuration.
  @JsonKey(name: 'measure-light')
  dynamic get measureLight;
  @override

  /// Enable/Disable shadow casting for this light
  @JsonKey(name: 'cast-shadows')
  bool get castShadows;
  @override

  /// Color of the directional light.
  dynamic get color;
  @override

  /// Direction of the light source specified as
  /// [0] a azimuthal angle
  /// [1] p polar angle
  /// where a indicates the azimuthal angle of the light relative to
  /// north (in degrees and proceeding clockwise), and p indicates polar
  /// angle of the light (from 0°, directly above, to 180°, directly below).
  List<double>? get direction;
  @override // A multiplier for the color of the directional light.
  @Assert('intensity >= 0 && intensity <= 1')
  double get intensity;
  @override
  @JsonKey(ignore: true)
  _$$Theme3dLightImplCopyWith<_$Theme3dLightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
