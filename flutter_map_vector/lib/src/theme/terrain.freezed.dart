// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'terrain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeTerrain _$ThemeTerrainFromJson(Map<String, dynamic> json) {
  return _ThemeTerrain.fromJson(json);
}

/// @nodoc
mixin _$ThemeTerrain {
  /// Name of a source of raster_dem type to be used for terrain elevation.
  String get source => throw _privateConstructorUsedError;

  /// Exaggerates the elevation of the terrain by multiplying the data from
  /// the DEM with this value.
  double? get exaggeration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeTerrainCopyWith<ThemeTerrain> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeTerrainCopyWith<$Res> {
  factory $ThemeTerrainCopyWith(
          ThemeTerrain value, $Res Function(ThemeTerrain) then) =
      _$ThemeTerrainCopyWithImpl<$Res, ThemeTerrain>;
  @useResult
  $Res call({String source, double? exaggeration});
}

/// @nodoc
class _$ThemeTerrainCopyWithImpl<$Res, $Val extends ThemeTerrain>
    implements $ThemeTerrainCopyWith<$Res> {
  _$ThemeTerrainCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? exaggeration = freezed,
  }) {
    return _then(_value.copyWith(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      exaggeration: freezed == exaggeration
          ? _value.exaggeration
          : exaggeration // ignore: cast_nullable_to_non_nullable
              as double?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeTerrainImplCopyWith<$Res>
    implements $ThemeTerrainCopyWith<$Res> {
  factory _$$ThemeTerrainImplCopyWith(
          _$ThemeTerrainImpl value, $Res Function(_$ThemeTerrainImpl) then) =
      __$$ThemeTerrainImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String source, double? exaggeration});
}

/// @nodoc
class __$$ThemeTerrainImplCopyWithImpl<$Res>
    extends _$ThemeTerrainCopyWithImpl<$Res, _$ThemeTerrainImpl>
    implements _$$ThemeTerrainImplCopyWith<$Res> {
  __$$ThemeTerrainImplCopyWithImpl(
      _$ThemeTerrainImpl _value, $Res Function(_$ThemeTerrainImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = null,
    Object? exaggeration = freezed,
  }) {
    return _then(_$ThemeTerrainImpl(
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      exaggeration: freezed == exaggeration
          ? _value.exaggeration
          : exaggeration // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeTerrainImpl implements _ThemeTerrain {
  const _$ThemeTerrainImpl({required this.source, this.exaggeration});

  factory _$ThemeTerrainImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeTerrainImplFromJson(json);

  /// Name of a source of raster_dem type to be used for terrain elevation.
  @override
  final String source;

  /// Exaggerates the elevation of the terrain by multiplying the data from
  /// the DEM with this value.
  @override
  final double? exaggeration;

  @override
  String toString() {
    return 'ThemeTerrain(source: $source, exaggeration: $exaggeration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeTerrainImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.exaggeration, exaggeration) ||
                other.exaggeration == exaggeration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, source, exaggeration);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeTerrainImplCopyWith<_$ThemeTerrainImpl> get copyWith =>
      __$$ThemeTerrainImplCopyWithImpl<_$ThemeTerrainImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeTerrainImplToJson(
      this,
    );
  }
}

abstract class _ThemeTerrain implements ThemeTerrain {
  const factory _ThemeTerrain(
      {required final String source,
      final double? exaggeration}) = _$ThemeTerrainImpl;

  factory _ThemeTerrain.fromJson(Map<String, dynamic> json) =
      _$ThemeTerrainImpl.fromJson;

  @override

  /// Name of a source of raster_dem type to be used for terrain elevation.
  String get source;
  @override

  /// Exaggerates the elevation of the terrain by multiplying the data from
  /// the DEM with this value.
  double? get exaggeration;
  @override
  @JsonKey(ignore: true)
  _$$ThemeTerrainImplCopyWith<_$ThemeTerrainImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
