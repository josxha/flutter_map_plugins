// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flat_light.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeFlatLight _$ThemeFlatLightFromJson(Map<String, dynamic> json) {
  return _ThemeFlatLight.fromJson(json);
}

/// @nodoc
mixin _$ThemeFlatLight {
  /// Whether extruded geometries are lit relative to the map or viewport.
  ThemeFlatLightAnchor get anchor => throw _privateConstructorUsedError;

  /// Color tint for lighting extruded geometries.
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;

  /// Intensity of lighting (on a scale from 0 to 1). Higher numbers will
  /// present as more extreme contrast.
  @Assert('intensity >= 0 && intensity <= 1')
  double get intensity => throw _privateConstructorUsedError;

  /// Position of the light source relative to lit (extruded) geometries, in
  /// [0] r radial coordinate
  /// [1] a azimuthal angle
  /// [2] p polar angle
  /// where r indicates the distance from the center of the base of an object
  /// to its light, a indicates the position of the light relative to 0°
  /// (0° when light.anchor is set to viewport corresponds to the top of the
  /// viewport, or 0° when light.anchor is set to map corresponds to due
  /// north, and degrees proceed clockwise), and p indicates the height of the
  /// light (from 0°, directly above, to 180°, directly below).
  @Assert('position.length == 3',
      '[r radial coordinate, a azimuthal angle, p polar angle]')
  List<double> get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeFlatLightCopyWith<ThemeFlatLight> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeFlatLightCopyWith<$Res> {
  factory $ThemeFlatLightCopyWith(
          ThemeFlatLight value, $Res Function(ThemeFlatLight) then) =
      _$ThemeFlatLightCopyWithImpl<$Res, ThemeFlatLight>;
  @useResult
  $Res call(
      {ThemeFlatLightAnchor anchor,
      @ColorConverter() Color color,
      @Assert('intensity >= 0 && intensity <= 1') double intensity,
      @Assert('position.length == 3',
          '[r radial coordinate, a azimuthal angle, p polar angle]')
      List<double> position});
}

/// @nodoc
class _$ThemeFlatLightCopyWithImpl<$Res, $Val extends ThemeFlatLight>
    implements $ThemeFlatLightCopyWith<$Res> {
  _$ThemeFlatLightCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anchor = null,
    Object? color = null,
    Object? intensity = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      anchor: null == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ThemeFlatLightAnchor,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeFlatLightImplCopyWith<$Res>
    implements $ThemeFlatLightCopyWith<$Res> {
  factory _$$ThemeFlatLightImplCopyWith(_$ThemeFlatLightImpl value,
          $Res Function(_$ThemeFlatLightImpl) then) =
      __$$ThemeFlatLightImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeFlatLightAnchor anchor,
      @ColorConverter() Color color,
      @Assert('intensity >= 0 && intensity <= 1') double intensity,
      @Assert('position.length == 3',
          '[r radial coordinate, a azimuthal angle, p polar angle]')
      List<double> position});
}

/// @nodoc
class __$$ThemeFlatLightImplCopyWithImpl<$Res>
    extends _$ThemeFlatLightCopyWithImpl<$Res, _$ThemeFlatLightImpl>
    implements _$$ThemeFlatLightImplCopyWith<$Res> {
  __$$ThemeFlatLightImplCopyWithImpl(
      _$ThemeFlatLightImpl _value, $Res Function(_$ThemeFlatLightImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? anchor = null,
    Object? color = null,
    Object? intensity = null,
    Object? position = null,
  }) {
    return _then(_$ThemeFlatLightImpl(
      anchor: null == anchor
          ? _value.anchor
          : anchor // ignore: cast_nullable_to_non_nullable
              as ThemeFlatLightAnchor,
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      intensity: null == intensity
          ? _value.intensity
          : intensity // ignore: cast_nullable_to_non_nullable
              as double,
      position: null == position
          ? _value._position
          : position // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeFlatLightImpl implements _ThemeFlatLight {
  const _$ThemeFlatLightImpl(
      {this.anchor = ThemeFlatLightAnchor.viewport,
      @ColorConverter() this.color = const Color(0xffffffff),
      @Assert('intensity >= 0 && intensity <= 1') this.intensity = 0.5,
      @Assert('position.length == 3',
          '[r radial coordinate, a azimuthal angle, p polar angle]')
      final List<double> position = const [1.15, 210, 30]})
      : _position = position;

  factory _$ThemeFlatLightImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeFlatLightImplFromJson(json);

  /// Whether extruded geometries are lit relative to the map or viewport.
  @override
  @JsonKey()
  final ThemeFlatLightAnchor anchor;

  /// Color tint for lighting extruded geometries.
  @override
  @JsonKey()
  @ColorConverter()
  final Color color;

  /// Intensity of lighting (on a scale from 0 to 1). Higher numbers will
  /// present as more extreme contrast.
  @override
  @JsonKey()
  @Assert('intensity >= 0 && intensity <= 1')
  final double intensity;

  /// Position of the light source relative to lit (extruded) geometries, in
  /// [0] r radial coordinate
  /// [1] a azimuthal angle
  /// [2] p polar angle
  /// where r indicates the distance from the center of the base of an object
  /// to its light, a indicates the position of the light relative to 0°
  /// (0° when light.anchor is set to viewport corresponds to the top of the
  /// viewport, or 0° when light.anchor is set to map corresponds to due
  /// north, and degrees proceed clockwise), and p indicates the height of the
  /// light (from 0°, directly above, to 180°, directly below).
  final List<double> _position;

  /// Position of the light source relative to lit (extruded) geometries, in
  /// [0] r radial coordinate
  /// [1] a azimuthal angle
  /// [2] p polar angle
  /// where r indicates the distance from the center of the base of an object
  /// to its light, a indicates the position of the light relative to 0°
  /// (0° when light.anchor is set to viewport corresponds to the top of the
  /// viewport, or 0° when light.anchor is set to map corresponds to due
  /// north, and degrees proceed clockwise), and p indicates the height of the
  /// light (from 0°, directly above, to 180°, directly below).
  @override
  @JsonKey()
  @Assert('position.length == 3',
      '[r radial coordinate, a azimuthal angle, p polar angle]')
  List<double> get position {
    if (_position is EqualUnmodifiableListView) return _position;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_position);
  }

  @override
  String toString() {
    return 'ThemeFlatLight(anchor: $anchor, color: $color, intensity: $intensity, position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeFlatLightImpl &&
            (identical(other.anchor, anchor) || other.anchor == anchor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.intensity, intensity) ||
                other.intensity == intensity) &&
            const DeepCollectionEquality().equals(other._position, _position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, anchor, color, intensity,
      const DeepCollectionEquality().hash(_position));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeFlatLightImplCopyWith<_$ThemeFlatLightImpl> get copyWith =>
      __$$ThemeFlatLightImplCopyWithImpl<_$ThemeFlatLightImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeFlatLightImplToJson(
      this,
    );
  }
}

abstract class _ThemeFlatLight implements ThemeFlatLight {
  const factory _ThemeFlatLight(
      {final ThemeFlatLightAnchor anchor,
      @ColorConverter() final Color color,
      @Assert('intensity >= 0 && intensity <= 1') final double intensity,
      @Assert('position.length == 3',
          '[r radial coordinate, a azimuthal angle, p polar angle]')
      final List<double> position}) = _$ThemeFlatLightImpl;

  factory _ThemeFlatLight.fromJson(Map<String, dynamic> json) =
      _$ThemeFlatLightImpl.fromJson;

  @override

  /// Whether extruded geometries are lit relative to the map or viewport.
  ThemeFlatLightAnchor get anchor;
  @override

  /// Color tint for lighting extruded geometries.
  @ColorConverter()
  Color get color;
  @override

  /// Intensity of lighting (on a scale from 0 to 1). Higher numbers will
  /// present as more extreme contrast.
  @Assert('intensity >= 0 && intensity <= 1')
  double get intensity;
  @override

  /// Position of the light source relative to lit (extruded) geometries, in
  /// [0] r radial coordinate
  /// [1] a azimuthal angle
  /// [2] p polar angle
  /// where r indicates the distance from the center of the base of an object
  /// to its light, a indicates the position of the light relative to 0°
  /// (0° when light.anchor is set to viewport corresponds to the top of the
  /// viewport, or 0° when light.anchor is set to map corresponds to due
  /// north, and degrees proceed clockwise), and p indicates the height of the
  /// light (from 0°, directly above, to 180°, directly below).
  @Assert('position.length == 3',
      '[r radial coordinate, a azimuthal angle, p polar angle]')
  List<double> get position;
  @override
  @JsonKey(ignore: true)
  _$$ThemeFlatLightImplCopyWith<_$ThemeFlatLightImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
