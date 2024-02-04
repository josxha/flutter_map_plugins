// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'background.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeBackgroundLayer _$ThemeBackgroundLayerFromJson(Map<String, dynamic> json) {
  return _ThemeBackgroundLayer.fromJson(json);
}

/// @nodoc
mixin _$ThemeBackgroundLayer {
  ThemeLayerType get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  dynamic get filter => throw _privateConstructorUsedError;
  dynamic get layout => throw _privateConstructorUsedError;
  @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'maxzoom')
  double? get maxZoom => throw _privateConstructorUsedError;
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  double? get minZoom => throw _privateConstructorUsedError;
  dynamic get paint => throw _privateConstructorUsedError;
  String? get slot => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'source-layer')
  String? get sourceLayer => throw _privateConstructorUsedError;

  /// The color with which the background will be drawn.
  @JsonKey(name: 'background-color')
  @ColorConverter()
  Color get backgroundColor => throw _privateConstructorUsedError;

  /// Controls the intensity of light emitted on the source features.
  @JsonKey(name: 'background-emissive-strength')
  @Assert('backgroundEmissiveStrength >= 0',
      'background-emissive-strength needs to be >=0')
  double get backgroundEmissiveStrength => throw _privateConstructorUsedError;

  /// The opacity at which the background will be drawn.
  @Assert('backgroundOpacity >= 0 && backgroundOpacity <= 0',
      'background-opacity needs to between 0 and 1 inclusive')
  @JsonKey(name: 'background-opacity')
  double get backgroundOpacity => throw _privateConstructorUsedError;

  /// Name of image in sprite to use for drawing an image background. For
  /// seamless patterns, image width and height must be a factor of two
  /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
  /// evaluated only at integer zoom levels.
  @JsonKey(name: 'background-pattern')
  String? get backgroundPattern => throw _privateConstructorUsedError;

  /// Whether this layer is displayed.
  ThemeLayerVisibility get visibility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeBackgroundLayerCopyWith<ThemeBackgroundLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeBackgroundLayerCopyWith<$Res> {
  factory $ThemeBackgroundLayerCopyWith(ThemeBackgroundLayer value,
          $Res Function(ThemeBackgroundLayer) then) =
      _$ThemeBackgroundLayerCopyWithImpl<$Res, ThemeBackgroundLayer>;
  @useResult
  $Res call(
      {ThemeLayerType type,
      String id,
      dynamic filter,
      dynamic layout,
      @Assert(
          'maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'maxzoom')
      double? maxZoom,
      @Assert(
          'minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      double? minZoom,
      dynamic paint,
      String? slot,
      String? source,
      @JsonKey(name: 'source-layer') String? sourceLayer,
      @JsonKey(name: 'background-color')
      @ColorConverter()
      Color backgroundColor,
      @JsonKey(name: 'background-emissive-strength')
      @Assert('backgroundEmissiveStrength >= 0',
          'background-emissive-strength needs to be >=0')
      double backgroundEmissiveStrength,
      @Assert('backgroundOpacity >= 0 && backgroundOpacity <= 0',
          'background-opacity needs to between 0 and 1 inclusive')
      @JsonKey(name: 'background-opacity')
      double backgroundOpacity,
      @JsonKey(name: 'background-pattern') String? backgroundPattern,
      ThemeLayerVisibility visibility});
}

/// @nodoc
class _$ThemeBackgroundLayerCopyWithImpl<$Res,
        $Val extends ThemeBackgroundLayer>
    implements $ThemeBackgroundLayerCopyWith<$Res> {
  _$ThemeBackgroundLayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? filter = freezed,
    Object? layout = freezed,
    Object? maxZoom = freezed,
    Object? minZoom = freezed,
    Object? paint = freezed,
    Object? slot = freezed,
    Object? source = freezed,
    Object? sourceLayer = freezed,
    Object? backgroundColor = null,
    Object? backgroundEmissiveStrength = null,
    Object? backgroundOpacity = null,
    Object? backgroundPattern = freezed,
    Object? visibility = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeLayerType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maxZoom: freezed == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as double?,
      minZoom: freezed == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as double?,
      paint: freezed == paint
          ? _value.paint
          : paint // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceLayer: freezed == sourceLayer
          ? _value.sourceLayer
          : sourceLayer // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundEmissiveStrength: null == backgroundEmissiveStrength
          ? _value.backgroundEmissiveStrength
          : backgroundEmissiveStrength // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundOpacity: null == backgroundOpacity
          ? _value.backgroundOpacity
          : backgroundOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundPattern: freezed == backgroundPattern
          ? _value.backgroundPattern
          : backgroundPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ThemeLayerVisibility,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeBackgroundLayerImplCopyWith<$Res>
    implements $ThemeBackgroundLayerCopyWith<$Res> {
  factory _$$ThemeBackgroundLayerImplCopyWith(_$ThemeBackgroundLayerImpl value,
          $Res Function(_$ThemeBackgroundLayerImpl) then) =
      __$$ThemeBackgroundLayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeLayerType type,
      String id,
      dynamic filter,
      dynamic layout,
      @Assert(
          'maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'maxzoom')
      double? maxZoom,
      @Assert(
          'minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      double? minZoom,
      dynamic paint,
      String? slot,
      String? source,
      @JsonKey(name: 'source-layer') String? sourceLayer,
      @JsonKey(name: 'background-color')
      @ColorConverter()
      Color backgroundColor,
      @JsonKey(name: 'background-emissive-strength')
      @Assert('backgroundEmissiveStrength >= 0',
          'background-emissive-strength needs to be >=0')
      double backgroundEmissiveStrength,
      @Assert('backgroundOpacity >= 0 && backgroundOpacity <= 0',
          'background-opacity needs to between 0 and 1 inclusive')
      @JsonKey(name: 'background-opacity')
      double backgroundOpacity,
      @JsonKey(name: 'background-pattern') String? backgroundPattern,
      ThemeLayerVisibility visibility});
}

/// @nodoc
class __$$ThemeBackgroundLayerImplCopyWithImpl<$Res>
    extends _$ThemeBackgroundLayerCopyWithImpl<$Res, _$ThemeBackgroundLayerImpl>
    implements _$$ThemeBackgroundLayerImplCopyWith<$Res> {
  __$$ThemeBackgroundLayerImplCopyWithImpl(_$ThemeBackgroundLayerImpl _value,
      $Res Function(_$ThemeBackgroundLayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? id = null,
    Object? filter = freezed,
    Object? layout = freezed,
    Object? maxZoom = freezed,
    Object? minZoom = freezed,
    Object? paint = freezed,
    Object? slot = freezed,
    Object? source = freezed,
    Object? sourceLayer = freezed,
    Object? backgroundColor = null,
    Object? backgroundEmissiveStrength = null,
    Object? backgroundOpacity = null,
    Object? backgroundPattern = freezed,
    Object? visibility = null,
  }) {
    return _then(_$ThemeBackgroundLayerImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeLayerType,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      layout: freezed == layout
          ? _value.layout
          : layout // ignore: cast_nullable_to_non_nullable
              as dynamic,
      maxZoom: freezed == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as double?,
      minZoom: freezed == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as double?,
      paint: freezed == paint
          ? _value.paint
          : paint // ignore: cast_nullable_to_non_nullable
              as dynamic,
      slot: freezed == slot
          ? _value.slot
          : slot // ignore: cast_nullable_to_non_nullable
              as String?,
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String?,
      sourceLayer: freezed == sourceLayer
          ? _value.sourceLayer
          : sourceLayer // ignore: cast_nullable_to_non_nullable
              as String?,
      backgroundColor: null == backgroundColor
          ? _value.backgroundColor
          : backgroundColor // ignore: cast_nullable_to_non_nullable
              as Color,
      backgroundEmissiveStrength: null == backgroundEmissiveStrength
          ? _value.backgroundEmissiveStrength
          : backgroundEmissiveStrength // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundOpacity: null == backgroundOpacity
          ? _value.backgroundOpacity
          : backgroundOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      backgroundPattern: freezed == backgroundPattern
          ? _value.backgroundPattern
          : backgroundPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ThemeLayerVisibility,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeBackgroundLayerImpl implements _ThemeBackgroundLayer {
  const _$ThemeBackgroundLayerImpl(
      {required this.type,
      required this.id,
      this.filter,
      this.layout,
      @Assert(
          'maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'maxzoom')
      this.maxZoom,
      @Assert(
          'minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      this.minZoom,
      this.paint,
      this.slot,
      this.source,
      @JsonKey(name: 'source-layer') this.sourceLayer,
      @JsonKey(name: 'background-color')
      @ColorConverter()
      this.backgroundColor = const Color(0xff000000),
      @JsonKey(name: 'background-emissive-strength')
      @Assert('backgroundEmissiveStrength >= 0',
          'background-emissive-strength needs to be >=0')
      this.backgroundEmissiveStrength = 0,
      @Assert('backgroundOpacity >= 0 && backgroundOpacity <= 0',
          'background-opacity needs to between 0 and 1 inclusive')
      @JsonKey(name: 'background-opacity')
      this.backgroundOpacity = 1,
      @JsonKey(name: 'background-pattern') this.backgroundPattern,
      this.visibility = ThemeLayerVisibility.visible});

  factory _$ThemeBackgroundLayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeBackgroundLayerImplFromJson(json);

  @override
  final ThemeLayerType type;
  @override
  final String id;
  @override
  final dynamic filter;
  @override
  final dynamic layout;
  @override
  @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'maxzoom')
  final double? maxZoom;
  @override
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  final double? minZoom;
  @override
  final dynamic paint;
  @override
  final String? slot;
  @override
  final String? source;
  @override
  @JsonKey(name: 'source-layer')
  final String? sourceLayer;

  /// The color with which the background will be drawn.
  @override
  @JsonKey(name: 'background-color')
  @ColorConverter()
  final Color backgroundColor;

  /// Controls the intensity of light emitted on the source features.
  @override
  @JsonKey(name: 'background-emissive-strength')
  @Assert('backgroundEmissiveStrength >= 0',
      'background-emissive-strength needs to be >=0')
  final double backgroundEmissiveStrength;

  /// The opacity at which the background will be drawn.
  @override
  @Assert('backgroundOpacity >= 0 && backgroundOpacity <= 0',
      'background-opacity needs to between 0 and 1 inclusive')
  @JsonKey(name: 'background-opacity')
  final double backgroundOpacity;

  /// Name of image in sprite to use for drawing an image background. For
  /// seamless patterns, image width and height must be a factor of two
  /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
  /// evaluated only at integer zoom levels.
  @override
  @JsonKey(name: 'background-pattern')
  final String? backgroundPattern;

  /// Whether this layer is displayed.
  @override
  @JsonKey()
  final ThemeLayerVisibility visibility;

  @override
  String toString() {
    return 'ThemeBackgroundLayer(type: $type, id: $id, filter: $filter, layout: $layout, maxZoom: $maxZoom, minZoom: $minZoom, paint: $paint, slot: $slot, source: $source, sourceLayer: $sourceLayer, backgroundColor: $backgroundColor, backgroundEmissiveStrength: $backgroundEmissiveStrength, backgroundOpacity: $backgroundOpacity, backgroundPattern: $backgroundPattern, visibility: $visibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeBackgroundLayerImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            const DeepCollectionEquality().equals(other.layout, layout) &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom) &&
            (identical(other.minZoom, minZoom) || other.minZoom == minZoom) &&
            const DeepCollectionEquality().equals(other.paint, paint) &&
            (identical(other.slot, slot) || other.slot == slot) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceLayer, sourceLayer) ||
                other.sourceLayer == sourceLayer) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.backgroundEmissiveStrength,
                    backgroundEmissiveStrength) ||
                other.backgroundEmissiveStrength ==
                    backgroundEmissiveStrength) &&
            (identical(other.backgroundOpacity, backgroundOpacity) ||
                other.backgroundOpacity == backgroundOpacity) &&
            (identical(other.backgroundPattern, backgroundPattern) ||
                other.backgroundPattern == backgroundPattern) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      id,
      const DeepCollectionEquality().hash(filter),
      const DeepCollectionEquality().hash(layout),
      maxZoom,
      minZoom,
      const DeepCollectionEquality().hash(paint),
      slot,
      source,
      sourceLayer,
      backgroundColor,
      backgroundEmissiveStrength,
      backgroundOpacity,
      backgroundPattern,
      visibility);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeBackgroundLayerImplCopyWith<_$ThemeBackgroundLayerImpl>
      get copyWith =>
          __$$ThemeBackgroundLayerImplCopyWithImpl<_$ThemeBackgroundLayerImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeBackgroundLayerImplToJson(
      this,
    );
  }
}

abstract class _ThemeBackgroundLayer
    implements ThemeBackgroundLayer, ThemeLayer {
  const factory _ThemeBackgroundLayer(
      {required final ThemeLayerType type,
      required final String id,
      final dynamic filter,
      final dynamic layout,
      @Assert(
          'maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'maxzoom')
      final double? maxZoom,
      @Assert(
          'minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      final double? minZoom,
      final dynamic paint,
      final String? slot,
      final String? source,
      @JsonKey(name: 'source-layer') final String? sourceLayer,
      @JsonKey(name: 'background-color')
      @ColorConverter()
      final Color backgroundColor,
      @JsonKey(name: 'background-emissive-strength')
      @Assert('backgroundEmissiveStrength >= 0',
          'background-emissive-strength needs to be >=0')
      final double backgroundEmissiveStrength,
      @Assert('backgroundOpacity >= 0 && backgroundOpacity <= 0',
          'background-opacity needs to between 0 and 1 inclusive')
      @JsonKey(name: 'background-opacity')
      final double backgroundOpacity,
      @JsonKey(name: 'background-pattern') final String? backgroundPattern,
      final ThemeLayerVisibility visibility}) = _$ThemeBackgroundLayerImpl;

  factory _ThemeBackgroundLayer.fromJson(Map<String, dynamic> json) =
      _$ThemeBackgroundLayerImpl.fromJson;

  @override
  ThemeLayerType get type;
  @override
  String get id;
  @override
  dynamic get filter;
  @override
  dynamic get layout;
  @override
  @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'maxzoom')
  double? get maxZoom;
  @override
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  double? get minZoom;
  @override
  dynamic get paint;
  @override
  String? get slot;
  @override
  String? get source;
  @override
  @JsonKey(name: 'source-layer')
  String? get sourceLayer;
  @override

  /// The color with which the background will be drawn.
  @JsonKey(name: 'background-color')
  @ColorConverter()
  Color get backgroundColor;
  @override

  /// Controls the intensity of light emitted on the source features.
  @JsonKey(name: 'background-emissive-strength')
  @Assert('backgroundEmissiveStrength >= 0',
      'background-emissive-strength needs to be >=0')
  double get backgroundEmissiveStrength;
  @override

  /// The opacity at which the background will be drawn.
  @Assert('backgroundOpacity >= 0 && backgroundOpacity <= 0',
      'background-opacity needs to between 0 and 1 inclusive')
  @JsonKey(name: 'background-opacity')
  double get backgroundOpacity;
  @override

  /// Name of image in sprite to use for drawing an image background. For
  /// seamless patterns, image width and height must be a factor of two
  /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
  /// evaluated only at integer zoom levels.
  @JsonKey(name: 'background-pattern')
  String? get backgroundPattern;
  @override

  /// Whether this layer is displayed.
  ThemeLayerVisibility get visibility;
  @override
  @JsonKey(ignore: true)
  _$$ThemeBackgroundLayerImplCopyWith<_$ThemeBackgroundLayerImpl>
      get copyWith => throw _privateConstructorUsedError;
}
