// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'projection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeProjection _$ThemeProjectionFromJson(Map<String, dynamic> json) {
  return _ThemeProjection.fromJson(json);
}

/// @nodoc
mixin _$ThemeProjection {
  /// The name of the projection to be used for rendering the map.
  ThemeProjectionName get name => throw _privateConstructorUsedError;

  /// The reference longitude and latitude of the projection. center takes
  /// the form of [lng, lat]. This property is only configurable for conic
  /// projections (Albers and Lambert Conformal Conic). All other
  /// projections are centered on [0, 0].
  @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If a projection center is set the projection needs to be '
          'albers or lambertConformalConic.')
  List<double>? get center => throw _privateConstructorUsedError;

  /// The standard parallels of the projection, denoting the desired
  /// latitude range with minimal distortion. parallels takes the form of
  /// [lat0, lat1]. This property is only configurable for conic projections
  /// (Albers and Lambert Conformal Conic).
  @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If projection parallels is set the projection needs to be '
          'albers or lambertConformalConic.')
  List<double>? get parallels => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeProjectionCopyWith<ThemeProjection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeProjectionCopyWith<$Res> {
  factory $ThemeProjectionCopyWith(
          ThemeProjection value, $Res Function(ThemeProjection) then) =
      _$ThemeProjectionCopyWithImpl<$Res, ThemeProjection>;
  @useResult
  $Res call(
      {ThemeProjectionName name,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If a projection center is set the projection needs to be '
              'albers or lambertConformalConic.')
      List<double>? center,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If projection parallels is set the projection needs to be '
              'albers or lambertConformalConic.')
      List<double>? parallels});
}

/// @nodoc
class _$ThemeProjectionCopyWithImpl<$Res, $Val extends ThemeProjection>
    implements $ThemeProjectionCopyWith<$Res> {
  _$ThemeProjectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? center = freezed,
    Object? parallels = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ThemeProjectionName,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      parallels: freezed == parallels
          ? _value.parallels
          : parallels // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeProjectionImplCopyWith<$Res>
    implements $ThemeProjectionCopyWith<$Res> {
  factory _$$ThemeProjectionImplCopyWith(_$ThemeProjectionImpl value,
          $Res Function(_$ThemeProjectionImpl) then) =
      __$$ThemeProjectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeProjectionName name,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If a projection center is set the projection needs to be '
              'albers or lambertConformalConic.')
      List<double>? center,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If projection parallels is set the projection needs to be '
              'albers or lambertConformalConic.')
      List<double>? parallels});
}

/// @nodoc
class __$$ThemeProjectionImplCopyWithImpl<$Res>
    extends _$ThemeProjectionCopyWithImpl<$Res, _$ThemeProjectionImpl>
    implements _$$ThemeProjectionImplCopyWith<$Res> {
  __$$ThemeProjectionImplCopyWithImpl(
      _$ThemeProjectionImpl _value, $Res Function(_$ThemeProjectionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? center = freezed,
    Object? parallels = freezed,
  }) {
    return _then(_$ThemeProjectionImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as ThemeProjectionName,
      center: freezed == center
          ? _value._center
          : center // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      parallels: freezed == parallels
          ? _value._parallels
          : parallels // ignore: cast_nullable_to_non_nullable
              as List<double>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeProjectionImpl implements _ThemeProjection {
  const _$ThemeProjectionImpl(
      {this.name = ThemeProjectionName.mercator,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If a projection center is set the projection needs to be '
              'albers or lambertConformalConic.')
      final List<double>? center,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If projection parallels is set the projection needs to be '
              'albers or lambertConformalConic.')
      final List<double>? parallels})
      : _center = center,
        _parallels = parallels;

  factory _$ThemeProjectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeProjectionImplFromJson(json);

  /// The name of the projection to be used for rendering the map.
  @override
  @JsonKey()
  final ThemeProjectionName name;

  /// The reference longitude and latitude of the projection. center takes
  /// the form of [lng, lat]. This property is only configurable for conic
  /// projections (Albers and Lambert Conformal Conic). All other
  /// projections are centered on [0, 0].
  final List<double>? _center;

  /// The reference longitude and latitude of the projection. center takes
  /// the form of [lng, lat]. This property is only configurable for conic
  /// projections (Albers and Lambert Conformal Conic). All other
  /// projections are centered on [0, 0].
  @override
  @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If a projection center is set the projection needs to be '
          'albers or lambertConformalConic.')
  List<double>? get center {
    final value = _center;
    if (value == null) return null;
    if (_center is EqualUnmodifiableListView) return _center;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The standard parallels of the projection, denoting the desired
  /// latitude range with minimal distortion. parallels takes the form of
  /// [lat0, lat1]. This property is only configurable for conic projections
  /// (Albers and Lambert Conformal Conic).
  final List<double>? _parallels;

  /// The standard parallels of the projection, denoting the desired
  /// latitude range with minimal distortion. parallels takes the form of
  /// [lat0, lat1]. This property is only configurable for conic projections
  /// (Albers and Lambert Conformal Conic).
  @override
  @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If projection parallels is set the projection needs to be '
          'albers or lambertConformalConic.')
  List<double>? get parallels {
    final value = _parallels;
    if (value == null) return null;
    if (_parallels is EqualUnmodifiableListView) return _parallels;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ThemeProjection(name: $name, center: $center, parallels: $parallels)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeProjectionImpl &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._center, _center) &&
            const DeepCollectionEquality()
                .equals(other._parallels, _parallels));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      const DeepCollectionEquality().hash(_center),
      const DeepCollectionEquality().hash(_parallels));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeProjectionImplCopyWith<_$ThemeProjectionImpl> get copyWith =>
      __$$ThemeProjectionImplCopyWithImpl<_$ThemeProjectionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeProjectionImplToJson(
      this,
    );
  }
}

abstract class _ThemeProjection implements ThemeProjection {
  const factory _ThemeProjection(
      {final ThemeProjectionName name,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If a projection center is set the projection needs to be '
              'albers or lambertConformalConic.')
      final List<double>? center,
      @Assert(
          'center == null || name == ThemeProjectionName.albers '
              '|| name == ThemeProjectionName.lambertConformalConic',
          'If projection parallels is set the projection needs to be '
              'albers or lambertConformalConic.')
      final List<double>? parallels}) = _$ThemeProjectionImpl;

  factory _ThemeProjection.fromJson(Map<String, dynamic> json) =
      _$ThemeProjectionImpl.fromJson;

  @override

  /// The name of the projection to be used for rendering the map.
  ThemeProjectionName get name;
  @override

  /// The reference longitude and latitude of the projection. center takes
  /// the form of [lng, lat]. This property is only configurable for conic
  /// projections (Albers and Lambert Conformal Conic). All other
  /// projections are centered on [0, 0].
  @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If a projection center is set the projection needs to be '
          'albers or lambertConformalConic.')
  List<double>? get center;
  @override

  /// The standard parallels of the projection, denoting the desired
  /// latitude range with minimal distortion. parallels takes the form of
  /// [lat0, lat1]. This property is only configurable for conic projections
  /// (Albers and Lambert Conformal Conic).
  @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If projection parallels is set the projection needs to be '
          'albers or lambertConformalConic.')
  List<double>? get parallels;
  @override
  @JsonKey(ignore: true)
  _$$ThemeProjectionImplCopyWith<_$ThemeProjectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
