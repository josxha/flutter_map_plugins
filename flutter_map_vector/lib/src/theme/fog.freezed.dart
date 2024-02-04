// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeFog _$ThemeFogFromJson(Map<String, dynamic> json) {
  return _ThemeFog.fromJson(json);
}

/// @nodoc
mixin _$ThemeFog {
  /// The color of the atmosphere region immediately below the horizon and
  /// within the range and above the horizon and within horizon-blend. Using
  /// opacity is recommended only for smoothly transitioning fog on/off as
  /// anything less than 100% opacity results in more tiles loaded and drawn.
  @ColorConverter()
  Color get color => throw _privateConstructorUsedError;

  /// The color of the atmosphere region above the horizon, high-color
  /// extends further above the horizon than the color property and its
  /// spread can be controlled with horizon-blend. The opacity can be set to
  /// 0 to remove the high atmosphere color contribution.
  @ColorConverter()
  Color get highColor => throw _privateConstructorUsedError;

  /// Horizon blend applies a smooth fade from the color of the atmosphere
  /// to the color of space. A value of zero leaves a sharp transition from
  /// atmosphere to space. Increasing the value blends the color of atmosphere
  /// into increasingly high angles of the sky.
  ///
  /// Optional number between 0 and 1 inclusive. Defaults to
  /// ["interpolate",["linear"],["zoom"],4,0.2,7,0.1].
  /// Supports smooth-rampinterpolateexpressions. opacityTransitionable.
  double? get horizonBlend => throw _privateConstructorUsedError;

  /// The start and end distance range in which fog fades from fully
  /// transparent to fully opaque. The distance to the point at the center
  /// of the map is defined as zero, so that negative range values are closer
  /// to the camera, and positive values are farther away.
  @Assert('range.all((e) => e >= -20 && e <= 20)')
  List<double> get range => throw _privateConstructorUsedError;

  /// The color of the region above the horizon and after the end of the
  /// horizon-blend contribution. The opacity can be set to 0 to have a
  /// transparent background.
  ///
// TODO Defaults to ["interpolate",["linear"],["zoom"],
// TODO 4,"#010b19",7,"#367ab9"]
//@JsonKey(name: 'space-color')
//Color? spaceColor,
  /// A value controlling the star intensity where 0 will show no stars
  /// and 1 will show stars at their maximum intensity.
// TODO Defaults to ["interpolate",["linear"],["zoom"],5,0.35,6,0]
//@JsonKey(name: 'star-intensity') double starIntensity,
  /// An array of two number values, specifying the vertical range, measured
  /// in meters, over which the fog should gradually fade out. When both
  /// parameters are set to zero, the fog will be rendered without any
  /// vertical constraints.
  @Assert('verticalRange.all((e) => e >= 0)',
      'Each value of verticalRange has to be >= 0.')
  @JsonKey(name: 'vertical-range')
  List<double> get verticalRange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeFogCopyWith<ThemeFog> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeFogCopyWith<$Res> {
  factory $ThemeFogCopyWith(ThemeFog value, $Res Function(ThemeFog) then) =
      _$ThemeFogCopyWithImpl<$Res, ThemeFog>;
  @useResult
  $Res call(
      {@ColorConverter() Color color,
      @ColorConverter() Color highColor,
      double? horizonBlend,
      @Assert('range.all((e) => e >= -20 && e <= 20)') List<double> range,
      @Assert('verticalRange.all((e) => e >= 0)',
          'Each value of verticalRange has to be >= 0.')
      @JsonKey(name: 'vertical-range')
      List<double> verticalRange});
}

/// @nodoc
class _$ThemeFogCopyWithImpl<$Res, $Val extends ThemeFog>
    implements $ThemeFogCopyWith<$Res> {
  _$ThemeFogCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? highColor = null,
    Object? horizonBlend = freezed,
    Object? range = null,
    Object? verticalRange = null,
  }) {
    return _then(_value.copyWith(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      highColor: null == highColor
          ? _value.highColor
          : highColor // ignore: cast_nullable_to_non_nullable
              as Color,
      horizonBlend: freezed == horizonBlend
          ? _value.horizonBlend
          : horizonBlend // ignore: cast_nullable_to_non_nullable
              as double?,
      range: null == range
          ? _value.range
          : range // ignore: cast_nullable_to_non_nullable
              as List<double>,
      verticalRange: null == verticalRange
          ? _value.verticalRange
          : verticalRange // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeFogImplCopyWith<$Res>
    implements $ThemeFogCopyWith<$Res> {
  factory _$$ThemeFogImplCopyWith(
          _$ThemeFogImpl value, $Res Function(_$ThemeFogImpl) then) =
      __$$ThemeFogImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ColorConverter() Color color,
      @ColorConverter() Color highColor,
      double? horizonBlend,
      @Assert('range.all((e) => e >= -20 && e <= 20)') List<double> range,
      @Assert('verticalRange.all((e) => e >= 0)',
          'Each value of verticalRange has to be >= 0.')
      @JsonKey(name: 'vertical-range')
      List<double> verticalRange});
}

/// @nodoc
class __$$ThemeFogImplCopyWithImpl<$Res>
    extends _$ThemeFogCopyWithImpl<$Res, _$ThemeFogImpl>
    implements _$$ThemeFogImplCopyWith<$Res> {
  __$$ThemeFogImplCopyWithImpl(
      _$ThemeFogImpl _value, $Res Function(_$ThemeFogImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? color = null,
    Object? highColor = null,
    Object? horizonBlend = freezed,
    Object? range = null,
    Object? verticalRange = null,
  }) {
    return _then(_$ThemeFogImpl(
      color: null == color
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      highColor: null == highColor
          ? _value.highColor
          : highColor // ignore: cast_nullable_to_non_nullable
              as Color,
      horizonBlend: freezed == horizonBlend
          ? _value.horizonBlend
          : horizonBlend // ignore: cast_nullable_to_non_nullable
              as double?,
      range: null == range
          ? _value._range
          : range // ignore: cast_nullable_to_non_nullable
              as List<double>,
      verticalRange: null == verticalRange
          ? _value._verticalRange
          : verticalRange // ignore: cast_nullable_to_non_nullable
              as List<double>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeFogImpl implements _ThemeFog {
  const _$ThemeFogImpl(
      {@ColorConverter() this.color = const Color(0xffffffff),
      @ColorConverter() this.highColor = const Color(0xff245cdf),
      this.horizonBlend,
      @Assert('range.all((e) => e >= -20 && e <= 20)')
      final List<double> range = const [0.5, 10],
      @Assert('verticalRange.all((e) => e >= 0)',
          'Each value of verticalRange has to be >= 0.')
      @JsonKey(name: 'vertical-range')
      final List<double> verticalRange = const [0, 0]})
      : _range = range,
        _verticalRange = verticalRange;

  factory _$ThemeFogImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeFogImplFromJson(json);

  /// The color of the atmosphere region immediately below the horizon and
  /// within the range and above the horizon and within horizon-blend. Using
  /// opacity is recommended only for smoothly transitioning fog on/off as
  /// anything less than 100% opacity results in more tiles loaded and drawn.
  @override
  @JsonKey()
  @ColorConverter()
  final Color color;

  /// The color of the atmosphere region above the horizon, high-color
  /// extends further above the horizon than the color property and its
  /// spread can be controlled with horizon-blend. The opacity can be set to
  /// 0 to remove the high atmosphere color contribution.
  @override
  @JsonKey()
  @ColorConverter()
  final Color highColor;

  /// Horizon blend applies a smooth fade from the color of the atmosphere
  /// to the color of space. A value of zero leaves a sharp transition from
  /// atmosphere to space. Increasing the value blends the color of atmosphere
  /// into increasingly high angles of the sky.
  ///
  /// Optional number between 0 and 1 inclusive. Defaults to
  /// ["interpolate",["linear"],["zoom"],4,0.2,7,0.1].
  /// Supports smooth-rampinterpolateexpressions. opacityTransitionable.
  @override
  final double? horizonBlend;

  /// The start and end distance range in which fog fades from fully
  /// transparent to fully opaque. The distance to the point at the center
  /// of the map is defined as zero, so that negative range values are closer
  /// to the camera, and positive values are farther away.
  final List<double> _range;

  /// The start and end distance range in which fog fades from fully
  /// transparent to fully opaque. The distance to the point at the center
  /// of the map is defined as zero, so that negative range values are closer
  /// to the camera, and positive values are farther away.
  @override
  @JsonKey()
  @Assert('range.all((e) => e >= -20 && e <= 20)')
  List<double> get range {
    if (_range is EqualUnmodifiableListView) return _range;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_range);
  }

  /// The color of the region above the horizon and after the end of the
  /// horizon-blend contribution. The opacity can be set to 0 to have a
  /// transparent background.
  ///
// TODO Defaults to ["interpolate",["linear"],["zoom"],
// TODO 4,"#010b19",7,"#367ab9"]
//@JsonKey(name: 'space-color')
//Color? spaceColor,
  /// A value controlling the star intensity where 0 will show no stars
  /// and 1 will show stars at their maximum intensity.
// TODO Defaults to ["interpolate",["linear"],["zoom"],5,0.35,6,0]
//@JsonKey(name: 'star-intensity') double starIntensity,
  /// An array of two number values, specifying the vertical range, measured
  /// in meters, over which the fog should gradually fade out. When both
  /// parameters are set to zero, the fog will be rendered without any
  /// vertical constraints.
  final List<double> _verticalRange;

  /// The color of the region above the horizon and after the end of the
  /// horizon-blend contribution. The opacity can be set to 0 to have a
  /// transparent background.
  ///
// TODO Defaults to ["interpolate",["linear"],["zoom"],
// TODO 4,"#010b19",7,"#367ab9"]
//@JsonKey(name: 'space-color')
//Color? spaceColor,
  /// A value controlling the star intensity where 0 will show no stars
  /// and 1 will show stars at their maximum intensity.
// TODO Defaults to ["interpolate",["linear"],["zoom"],5,0.35,6,0]
//@JsonKey(name: 'star-intensity') double starIntensity,
  /// An array of two number values, specifying the vertical range, measured
  /// in meters, over which the fog should gradually fade out. When both
  /// parameters are set to zero, the fog will be rendered without any
  /// vertical constraints.
  @override
  @Assert('verticalRange.all((e) => e >= 0)',
      'Each value of verticalRange has to be >= 0.')
  @JsonKey(name: 'vertical-range')
  List<double> get verticalRange {
    if (_verticalRange is EqualUnmodifiableListView) return _verticalRange;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verticalRange);
  }

  @override
  String toString() {
    return 'ThemeFog(color: $color, highColor: $highColor, horizonBlend: $horizonBlend, range: $range, verticalRange: $verticalRange)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeFogImpl &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.highColor, highColor) ||
                other.highColor == highColor) &&
            (identical(other.horizonBlend, horizonBlend) ||
                other.horizonBlend == horizonBlend) &&
            const DeepCollectionEquality().equals(other._range, _range) &&
            const DeepCollectionEquality()
                .equals(other._verticalRange, _verticalRange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      color,
      highColor,
      horizonBlend,
      const DeepCollectionEquality().hash(_range),
      const DeepCollectionEquality().hash(_verticalRange));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeFogImplCopyWith<_$ThemeFogImpl> get copyWith =>
      __$$ThemeFogImplCopyWithImpl<_$ThemeFogImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeFogImplToJson(
      this,
    );
  }
}

abstract class _ThemeFog implements ThemeFog {
  const factory _ThemeFog(
      {@ColorConverter() final Color color,
      @ColorConverter() final Color highColor,
      final double? horizonBlend,
      @Assert('range.all((e) => e >= -20 && e <= 20)') final List<double> range,
      @Assert('verticalRange.all((e) => e >= 0)',
          'Each value of verticalRange has to be >= 0.')
      @JsonKey(name: 'vertical-range')
      final List<double> verticalRange}) = _$ThemeFogImpl;

  factory _ThemeFog.fromJson(Map<String, dynamic> json) =
      _$ThemeFogImpl.fromJson;

  @override

  /// The color of the atmosphere region immediately below the horizon and
  /// within the range and above the horizon and within horizon-blend. Using
  /// opacity is recommended only for smoothly transitioning fog on/off as
  /// anything less than 100% opacity results in more tiles loaded and drawn.
  @ColorConverter()
  Color get color;
  @override

  /// The color of the atmosphere region above the horizon, high-color
  /// extends further above the horizon than the color property and its
  /// spread can be controlled with horizon-blend. The opacity can be set to
  /// 0 to remove the high atmosphere color contribution.
  @ColorConverter()
  Color get highColor;
  @override

  /// Horizon blend applies a smooth fade from the color of the atmosphere
  /// to the color of space. A value of zero leaves a sharp transition from
  /// atmosphere to space. Increasing the value blends the color of atmosphere
  /// into increasingly high angles of the sky.
  ///
  /// Optional number between 0 and 1 inclusive. Defaults to
  /// ["interpolate",["linear"],["zoom"],4,0.2,7,0.1].
  /// Supports smooth-rampinterpolateexpressions. opacityTransitionable.
  double? get horizonBlend;
  @override

  /// The start and end distance range in which fog fades from fully
  /// transparent to fully opaque. The distance to the point at the center
  /// of the map is defined as zero, so that negative range values are closer
  /// to the camera, and positive values are farther away.
  @Assert('range.all((e) => e >= -20 && e <= 20)')
  List<double> get range;
  @override

  /// The color of the region above the horizon and after the end of the
  /// horizon-blend contribution. The opacity can be set to 0 to have a
  /// transparent background.
  ///
// TODO Defaults to ["interpolate",["linear"],["zoom"],
// TODO 4,"#010b19",7,"#367ab9"]
//@JsonKey(name: 'space-color')
//Color? spaceColor,
  /// A value controlling the star intensity where 0 will show no stars
  /// and 1 will show stars at their maximum intensity.
// TODO Defaults to ["interpolate",["linear"],["zoom"],5,0.35,6,0]
//@JsonKey(name: 'star-intensity') double starIntensity,
  /// An array of two number values, specifying the vertical range, measured
  /// in meters, over which the fog should gradually fade out. When both
  /// parameters are set to zero, the fog will be rendered without any
  /// vertical constraints.
  @Assert('verticalRange.all((e) => e >= 0)',
      'Each value of verticalRange has to be >= 0.')
  @JsonKey(name: 'vertical-range')
  List<double> get verticalRange;
  @override
  @JsonKey(ignore: true)
  _$$ThemeFogImplCopyWith<_$ThemeFogImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
