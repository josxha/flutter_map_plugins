// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'line.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeLineLayer _$ThemeLineLayerFromJson(Map<String, dynamic> json) {
  return _ThemeLineLayer.fromJson(json);
}

/// @nodoc
mixin _$ThemeLineLayer {
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

  /// Blur applied to the line, in pixels.
  @JsonKey(name: 'line-blur')
  double get lineBlur => throw _privateConstructorUsedError;

  /// The display of line endings.
  @JsonKey(name: 'line-cap')
  ThemeLineCap get lineCap => throw _privateConstructorUsedError;

  /// The color with which the line will be drawn.
  @JsonKey(name: 'line-color')
  String get lineColor => throw _privateConstructorUsedError;

  /// Specifies the lengths of the alternating dashes and gaps that form the
  /// dash pattern. The lengths are later scaled by the line width. To
  /// convert a dash length to pixels, multiply the length by the current
  /// line width. Note that GeoJSON sources with lineMetrics: true specified
  /// won't render dashed lines to the expected scale. Also note that
  /// zoom-dependent expressions will be evaluated only at integer
  /// zoom levels.
  @JsonKey(name: 'line-dasharray')
  @Assert('lineDashArray.all((e) => e >= 0)',
      'line-dasharray has to be greater than or equal to 0')
  List<double>? get lineDashArray => throw _privateConstructorUsedError;

  /// Controls the intensity of light emitted on the source features.
  @Assert('lineEmissiveStrength >= 0',
      'line-emissive-strength has to be greater than or equal to 0.')
  @JsonKey(name: 'line-emissive-strength')
  double get lineEmissiveStrength => throw _privateConstructorUsedError;

  /// Draws a line casing outside of a line's actual path. Value indicates
  /// the width of the inner gap.
  @JsonKey(name: 'line-gap-width')
  double get lineGapWidth => throw _privateConstructorUsedError;

  /// A gradient used to color a line feature at various distances along
  /// its length. Defined using a step or interpolate expression which
  /// outputs a color for each corresponding line-progress input value.
  /// line-progress is a percentage of the line feature's total length as
  /// measured on the webmercator projected coordinate plane (a number
  /// between 0 and 1). Can only be used with GeoJSON sources that specify
  /// "lineMetrics": true.
  @JsonKey(name: 'line-gradient')
  String? get lineGradient => throw _privateConstructorUsedError;

  /// The display of lines when joining.
  @JsonKey(name: 'line-join')
  ThemeLineJoin get lineJoin => throw _privateConstructorUsedError;

  /// Used to automatically convert miter joins to bevel joins for
  /// sharp angles.
  @JsonKey(name: 'line-miter-limit')
  double get lineMiterLimit => throw _privateConstructorUsedError;

  /// The line's offset. For linear features, a positive value offsets the
  /// line to the right, relative to the direction of the line, and a
  /// negative value to the left. For polygon features, a positive value
  /// results in an inset, and a negative value results in an outset.
  @JsonKey(name: 'line-offset')
  double get lineOffset => throw _privateConstructorUsedError;

  /// The opacity at which the line will be drawn.
  @JsonKey(name: 'line-opacity')
  @Assert('lineOpacity >= 0 && lineOpacity <= 1',
      'line-opacity has to be between 0 and 1')
  double get lineOpacity => throw _privateConstructorUsedError;

  /// Name of image in sprite to use for drawing image lines. For seamless
  /// patterns, image width must be a factor of two (2, 4, 8, ..., 512).
  /// Note that zoom-dependent expressions will be evaluated only at integer
  /// zoom levels.
  @JsonKey(name: 'line-pattern')
  String? get linePattern => throw _privateConstructorUsedError;

  /// Used to automatically convert round joins to miter joins for
  /// shallow angles.
  @JsonKey(name: 'line-round-limit')
  double get lineRoundLimit => throw _privateConstructorUsedError;

  /// Sorts features in ascending order based on this value. Features with a
  /// higher sort key will appear above features with a lower sort key.
  @JsonKey(name: 'line-sort-key')
  double? get lineSortKey => throw _privateConstructorUsedError;

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  @JsonKey(name: 'line-translate')
  List<double> get lineTranslate => throw _privateConstructorUsedError;

  /// Controls the frame of reference for line-translate.
  @JsonKey(name: 'line-translate-anchor')
  ThemeFlatLightAnchor get lineTranslateAnchor =>
      throw _privateConstructorUsedError;

  /// The line part between [trim-start, trim-end] will be marked as
  /// transparent to make a route vanishing effect. The line trim-off offset
  /// is based on the whole line range [0.0, 1.0].
  @JsonKey(name: 'line-trim-offset')
  @Assert('lineTrimOffset.all((e) => e >= 0 && e <= 1)',
      'The values of line-trim-offset have to be between 0 and 1')
  List<double> get lineTrimOffset => throw _privateConstructorUsedError;

  /// Stroke thickness.
  @JsonKey(name: 'line-width')
  @Assert('lineWidth >= 0 && lineWidth <= 1',
      'line-width has to be between 0 and 1 inclusive')
  double get lineWidth => throw _privateConstructorUsedError;

  /// Whether this layer is displayed.
  @JsonKey(name: 'visiblity')
  ThemeLayerVisibility get visibility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeLineLayerCopyWith<ThemeLineLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeLineLayerCopyWith<$Res> {
  factory $ThemeLineLayerCopyWith(
          ThemeLineLayer value, $Res Function(ThemeLineLayer) then) =
      _$ThemeLineLayerCopyWithImpl<$Res, ThemeLineLayer>;
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
      @JsonKey(name: 'line-blur') double lineBlur,
      @JsonKey(name: 'line-cap') ThemeLineCap lineCap,
      @JsonKey(name: 'line-color') String lineColor,
      @JsonKey(name: 'line-dasharray')
      @Assert('lineDashArray.all((e) => e >= 0)',
          'line-dasharray has to be greater than or equal to 0')
      List<double>? lineDashArray,
      @Assert('lineEmissiveStrength >= 0',
          'line-emissive-strength has to be greater than or equal to 0.')
      @JsonKey(name: 'line-emissive-strength')
      double lineEmissiveStrength,
      @JsonKey(name: 'line-gap-width') double lineGapWidth,
      @JsonKey(name: 'line-gradient') String? lineGradient,
      @JsonKey(name: 'line-join') ThemeLineJoin lineJoin,
      @JsonKey(name: 'line-miter-limit') double lineMiterLimit,
      @JsonKey(name: 'line-offset') double lineOffset,
      @JsonKey(name: 'line-opacity')
      @Assert('lineOpacity >= 0 && lineOpacity <= 1',
          'line-opacity has to be between 0 and 1')
      double lineOpacity,
      @JsonKey(name: 'line-pattern') String? linePattern,
      @JsonKey(name: 'line-round-limit') double lineRoundLimit,
      @JsonKey(name: 'line-sort-key') double? lineSortKey,
      @JsonKey(name: 'line-translate') List<double> lineTranslate,
      @JsonKey(name: 'line-translate-anchor')
      ThemeFlatLightAnchor lineTranslateAnchor,
      @JsonKey(
          name: 'line-trim-offset')
      @Assert('lineTrimOffset.all((e) => e >= 0 && e <= 1)',
          'The values of line-trim-offset have to be between 0 and 1')
      List<double> lineTrimOffset,
      @JsonKey(
          name: 'line-width')
      @Assert('lineWidth >= 0 && lineWidth <= 1',
          'line-width has to be between 0 and 1 inclusive')
      double lineWidth,
      @JsonKey(name: 'visiblity') ThemeLayerVisibility visibility});
}

/// @nodoc
class _$ThemeLineLayerCopyWithImpl<$Res, $Val extends ThemeLineLayer>
    implements $ThemeLineLayerCopyWith<$Res> {
  _$ThemeLineLayerCopyWithImpl(this._value, this._then);

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
    Object? lineBlur = null,
    Object? lineCap = null,
    Object? lineColor = null,
    Object? lineDashArray = freezed,
    Object? lineEmissiveStrength = null,
    Object? lineGapWidth = null,
    Object? lineGradient = freezed,
    Object? lineJoin = null,
    Object? lineMiterLimit = null,
    Object? lineOffset = null,
    Object? lineOpacity = null,
    Object? linePattern = freezed,
    Object? lineRoundLimit = null,
    Object? lineSortKey = freezed,
    Object? lineTranslate = null,
    Object? lineTranslateAnchor = null,
    Object? lineTrimOffset = null,
    Object? lineWidth = null,
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
      lineBlur: null == lineBlur
          ? _value.lineBlur
          : lineBlur // ignore: cast_nullable_to_non_nullable
              as double,
      lineCap: null == lineCap
          ? _value.lineCap
          : lineCap // ignore: cast_nullable_to_non_nullable
              as ThemeLineCap,
      lineColor: null == lineColor
          ? _value.lineColor
          : lineColor // ignore: cast_nullable_to_non_nullable
              as String,
      lineDashArray: freezed == lineDashArray
          ? _value.lineDashArray
          : lineDashArray // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      lineEmissiveStrength: null == lineEmissiveStrength
          ? _value.lineEmissiveStrength
          : lineEmissiveStrength // ignore: cast_nullable_to_non_nullable
              as double,
      lineGapWidth: null == lineGapWidth
          ? _value.lineGapWidth
          : lineGapWidth // ignore: cast_nullable_to_non_nullable
              as double,
      lineGradient: freezed == lineGradient
          ? _value.lineGradient
          : lineGradient // ignore: cast_nullable_to_non_nullable
              as String?,
      lineJoin: null == lineJoin
          ? _value.lineJoin
          : lineJoin // ignore: cast_nullable_to_non_nullable
              as ThemeLineJoin,
      lineMiterLimit: null == lineMiterLimit
          ? _value.lineMiterLimit
          : lineMiterLimit // ignore: cast_nullable_to_non_nullable
              as double,
      lineOffset: null == lineOffset
          ? _value.lineOffset
          : lineOffset // ignore: cast_nullable_to_non_nullable
              as double,
      lineOpacity: null == lineOpacity
          ? _value.lineOpacity
          : lineOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      linePattern: freezed == linePattern
          ? _value.linePattern
          : linePattern // ignore: cast_nullable_to_non_nullable
              as String?,
      lineRoundLimit: null == lineRoundLimit
          ? _value.lineRoundLimit
          : lineRoundLimit // ignore: cast_nullable_to_non_nullable
              as double,
      lineSortKey: freezed == lineSortKey
          ? _value.lineSortKey
          : lineSortKey // ignore: cast_nullable_to_non_nullable
              as double?,
      lineTranslate: null == lineTranslate
          ? _value.lineTranslate
          : lineTranslate // ignore: cast_nullable_to_non_nullable
              as List<double>,
      lineTranslateAnchor: null == lineTranslateAnchor
          ? _value.lineTranslateAnchor
          : lineTranslateAnchor // ignore: cast_nullable_to_non_nullable
              as ThemeFlatLightAnchor,
      lineTrimOffset: null == lineTrimOffset
          ? _value.lineTrimOffset
          : lineTrimOffset // ignore: cast_nullable_to_non_nullable
              as List<double>,
      lineWidth: null == lineWidth
          ? _value.lineWidth
          : lineWidth // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ThemeLayerVisibility,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeLineLayerImplCopyWith<$Res>
    implements $ThemeLineLayerCopyWith<$Res> {
  factory _$$ThemeLineLayerImplCopyWith(_$ThemeLineLayerImpl value,
          $Res Function(_$ThemeLineLayerImpl) then) =
      __$$ThemeLineLayerImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'line-blur') double lineBlur,
      @JsonKey(name: 'line-cap') ThemeLineCap lineCap,
      @JsonKey(name: 'line-color') String lineColor,
      @JsonKey(name: 'line-dasharray')
      @Assert('lineDashArray.all((e) => e >= 0)',
          'line-dasharray has to be greater than or equal to 0')
      List<double>? lineDashArray,
      @Assert('lineEmissiveStrength >= 0',
          'line-emissive-strength has to be greater than or equal to 0.')
      @JsonKey(name: 'line-emissive-strength')
      double lineEmissiveStrength,
      @JsonKey(name: 'line-gap-width') double lineGapWidth,
      @JsonKey(name: 'line-gradient') String? lineGradient,
      @JsonKey(name: 'line-join') ThemeLineJoin lineJoin,
      @JsonKey(name: 'line-miter-limit') double lineMiterLimit,
      @JsonKey(name: 'line-offset') double lineOffset,
      @JsonKey(name: 'line-opacity')
      @Assert('lineOpacity >= 0 && lineOpacity <= 1',
          'line-opacity has to be between 0 and 1')
      double lineOpacity,
      @JsonKey(name: 'line-pattern') String? linePattern,
      @JsonKey(name: 'line-round-limit') double lineRoundLimit,
      @JsonKey(name: 'line-sort-key') double? lineSortKey,
      @JsonKey(name: 'line-translate') List<double> lineTranslate,
      @JsonKey(name: 'line-translate-anchor')
      ThemeFlatLightAnchor lineTranslateAnchor,
      @JsonKey(
          name: 'line-trim-offset')
      @Assert('lineTrimOffset.all((e) => e >= 0 && e <= 1)',
          'The values of line-trim-offset have to be between 0 and 1')
      List<double> lineTrimOffset,
      @JsonKey(
          name: 'line-width')
      @Assert('lineWidth >= 0 && lineWidth <= 1',
          'line-width has to be between 0 and 1 inclusive')
      double lineWidth,
      @JsonKey(name: 'visiblity') ThemeLayerVisibility visibility});
}

/// @nodoc
class __$$ThemeLineLayerImplCopyWithImpl<$Res>
    extends _$ThemeLineLayerCopyWithImpl<$Res, _$ThemeLineLayerImpl>
    implements _$$ThemeLineLayerImplCopyWith<$Res> {
  __$$ThemeLineLayerImplCopyWithImpl(
      _$ThemeLineLayerImpl _value, $Res Function(_$ThemeLineLayerImpl) _then)
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
    Object? lineBlur = null,
    Object? lineCap = null,
    Object? lineColor = null,
    Object? lineDashArray = freezed,
    Object? lineEmissiveStrength = null,
    Object? lineGapWidth = null,
    Object? lineGradient = freezed,
    Object? lineJoin = null,
    Object? lineMiterLimit = null,
    Object? lineOffset = null,
    Object? lineOpacity = null,
    Object? linePattern = freezed,
    Object? lineRoundLimit = null,
    Object? lineSortKey = freezed,
    Object? lineTranslate = null,
    Object? lineTranslateAnchor = null,
    Object? lineTrimOffset = null,
    Object? lineWidth = null,
    Object? visibility = null,
  }) {
    return _then(_$ThemeLineLayerImpl(
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
      lineBlur: null == lineBlur
          ? _value.lineBlur
          : lineBlur // ignore: cast_nullable_to_non_nullable
              as double,
      lineCap: null == lineCap
          ? _value.lineCap
          : lineCap // ignore: cast_nullable_to_non_nullable
              as ThemeLineCap,
      lineColor: null == lineColor
          ? _value.lineColor
          : lineColor // ignore: cast_nullable_to_non_nullable
              as String,
      lineDashArray: freezed == lineDashArray
          ? _value._lineDashArray
          : lineDashArray // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      lineEmissiveStrength: null == lineEmissiveStrength
          ? _value.lineEmissiveStrength
          : lineEmissiveStrength // ignore: cast_nullable_to_non_nullable
              as double,
      lineGapWidth: null == lineGapWidth
          ? _value.lineGapWidth
          : lineGapWidth // ignore: cast_nullable_to_non_nullable
              as double,
      lineGradient: freezed == lineGradient
          ? _value.lineGradient
          : lineGradient // ignore: cast_nullable_to_non_nullable
              as String?,
      lineJoin: null == lineJoin
          ? _value.lineJoin
          : lineJoin // ignore: cast_nullable_to_non_nullable
              as ThemeLineJoin,
      lineMiterLimit: null == lineMiterLimit
          ? _value.lineMiterLimit
          : lineMiterLimit // ignore: cast_nullable_to_non_nullable
              as double,
      lineOffset: null == lineOffset
          ? _value.lineOffset
          : lineOffset // ignore: cast_nullable_to_non_nullable
              as double,
      lineOpacity: null == lineOpacity
          ? _value.lineOpacity
          : lineOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      linePattern: freezed == linePattern
          ? _value.linePattern
          : linePattern // ignore: cast_nullable_to_non_nullable
              as String?,
      lineRoundLimit: null == lineRoundLimit
          ? _value.lineRoundLimit
          : lineRoundLimit // ignore: cast_nullable_to_non_nullable
              as double,
      lineSortKey: freezed == lineSortKey
          ? _value.lineSortKey
          : lineSortKey // ignore: cast_nullable_to_non_nullable
              as double?,
      lineTranslate: null == lineTranslate
          ? _value._lineTranslate
          : lineTranslate // ignore: cast_nullable_to_non_nullable
              as List<double>,
      lineTranslateAnchor: null == lineTranslateAnchor
          ? _value.lineTranslateAnchor
          : lineTranslateAnchor // ignore: cast_nullable_to_non_nullable
              as ThemeFlatLightAnchor,
      lineTrimOffset: null == lineTrimOffset
          ? _value._lineTrimOffset
          : lineTrimOffset // ignore: cast_nullable_to_non_nullable
              as List<double>,
      lineWidth: null == lineWidth
          ? _value.lineWidth
          : lineWidth // ignore: cast_nullable_to_non_nullable
              as double,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ThemeLayerVisibility,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeLineLayerImpl implements _ThemeLineLayer {
  const _$ThemeLineLayerImpl(
      {required this.type,
      required this.id,
      this.filter,
      this.layout,
      @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'maxzoom')
      this.maxZoom,
      @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      this.minZoom,
      this.paint,
      this.slot,
      this.source,
      @JsonKey(name: 'source-layer') this.sourceLayer,
      @JsonKey(name: 'line-blur') this.lineBlur = 0,
      @JsonKey(name: 'line-cap') this.lineCap = ThemeLineCap.butt,
      @JsonKey(name: 'line-color') this.lineColor = '#000000',
      @JsonKey(name: 'line-dasharray')
      @Assert('lineDashArray.all((e) => e >= 0)',
          'line-dasharray has to be greater than or equal to 0')
      final List<double>? lineDashArray,
      @Assert('lineEmissiveStrength >= 0', 'line-emissive-strength has to be greater than or equal to 0.')
      @JsonKey(name: 'line-emissive-strength')
      this.lineEmissiveStrength = 0,
      @JsonKey(name: 'line-gap-width') this.lineGapWidth = 0,
      @JsonKey(name: 'line-gradient') this.lineGradient,
      @JsonKey(name: 'line-join') this.lineJoin = ThemeLineJoin.miter,
      @JsonKey(name: 'line-miter-limit') this.lineMiterLimit = 2,
      @JsonKey(name: 'line-offset') this.lineOffset = 0,
      @JsonKey(name: 'line-opacity')
      @Assert('lineOpacity >= 0 && lineOpacity <= 1',
          'line-opacity has to be between 0 and 1')
      this.lineOpacity = 1,
      @JsonKey(name: 'line-pattern') this.linePattern,
      @JsonKey(name: 'line-round-limit') this.lineRoundLimit = 1.05,
      @JsonKey(name: 'line-sort-key') this.lineSortKey,
      @JsonKey(name: 'line-translate')
      final List<double> lineTranslate = const [0, 0],
      @JsonKey(name: 'line-translate-anchor')
      this.lineTranslateAnchor = ThemeFlatLightAnchor.map,
      @JsonKey(name: 'line-trim-offset')
      @Assert('lineTrimOffset.all((e) => e >= 0 && e <= 1)',
          'The values of line-trim-offset have to be between 0 and 1')
      final List<double> lineTrimOffset = const [0, 0],
      @JsonKey(name: 'line-width')
      @Assert('lineWidth >= 0 && lineWidth <= 1', 'line-width has to be between 0 and 1 inclusive')
      this.lineWidth = 1,
      @JsonKey(name: 'visiblity') this.visibility = ThemeLayerVisibility.visible})
      : _lineDashArray = lineDashArray,
        _lineTranslate = lineTranslate,
        _lineTrimOffset = lineTrimOffset;

  factory _$ThemeLineLayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeLineLayerImplFromJson(json);

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

  /// Blur applied to the line, in pixels.
  @override
  @JsonKey(name: 'line-blur')
  final double lineBlur;

  /// The display of line endings.
  @override
  @JsonKey(name: 'line-cap')
  final ThemeLineCap lineCap;

  /// The color with which the line will be drawn.
  @override
  @JsonKey(name: 'line-color')
  final String lineColor;

  /// Specifies the lengths of the alternating dashes and gaps that form the
  /// dash pattern. The lengths are later scaled by the line width. To
  /// convert a dash length to pixels, multiply the length by the current
  /// line width. Note that GeoJSON sources with lineMetrics: true specified
  /// won't render dashed lines to the expected scale. Also note that
  /// zoom-dependent expressions will be evaluated only at integer
  /// zoom levels.
  final List<double>? _lineDashArray;

  /// Specifies the lengths of the alternating dashes and gaps that form the
  /// dash pattern. The lengths are later scaled by the line width. To
  /// convert a dash length to pixels, multiply the length by the current
  /// line width. Note that GeoJSON sources with lineMetrics: true specified
  /// won't render dashed lines to the expected scale. Also note that
  /// zoom-dependent expressions will be evaluated only at integer
  /// zoom levels.
  @override
  @JsonKey(name: 'line-dasharray')
  @Assert('lineDashArray.all((e) => e >= 0)',
      'line-dasharray has to be greater than or equal to 0')
  List<double>? get lineDashArray {
    final value = _lineDashArray;
    if (value == null) return null;
    if (_lineDashArray is EqualUnmodifiableListView) return _lineDashArray;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Controls the intensity of light emitted on the source features.
  @override
  @Assert('lineEmissiveStrength >= 0',
      'line-emissive-strength has to be greater than or equal to 0.')
  @JsonKey(name: 'line-emissive-strength')
  final double lineEmissiveStrength;

  /// Draws a line casing outside of a line's actual path. Value indicates
  /// the width of the inner gap.
  @override
  @JsonKey(name: 'line-gap-width')
  final double lineGapWidth;

  /// A gradient used to color a line feature at various distances along
  /// its length. Defined using a step or interpolate expression which
  /// outputs a color for each corresponding line-progress input value.
  /// line-progress is a percentage of the line feature's total length as
  /// measured on the webmercator projected coordinate plane (a number
  /// between 0 and 1). Can only be used with GeoJSON sources that specify
  /// "lineMetrics": true.
  @override
  @JsonKey(name: 'line-gradient')
  final String? lineGradient;

  /// The display of lines when joining.
  @override
  @JsonKey(name: 'line-join')
  final ThemeLineJoin lineJoin;

  /// Used to automatically convert miter joins to bevel joins for
  /// sharp angles.
  @override
  @JsonKey(name: 'line-miter-limit')
  final double lineMiterLimit;

  /// The line's offset. For linear features, a positive value offsets the
  /// line to the right, relative to the direction of the line, and a
  /// negative value to the left. For polygon features, a positive value
  /// results in an inset, and a negative value results in an outset.
  @override
  @JsonKey(name: 'line-offset')
  final double lineOffset;

  /// The opacity at which the line will be drawn.
  @override
  @JsonKey(name: 'line-opacity')
  @Assert('lineOpacity >= 0 && lineOpacity <= 1',
      'line-opacity has to be between 0 and 1')
  final double lineOpacity;

  /// Name of image in sprite to use for drawing image lines. For seamless
  /// patterns, image width must be a factor of two (2, 4, 8, ..., 512).
  /// Note that zoom-dependent expressions will be evaluated only at integer
  /// zoom levels.
  @override
  @JsonKey(name: 'line-pattern')
  final String? linePattern;

  /// Used to automatically convert round joins to miter joins for
  /// shallow angles.
  @override
  @JsonKey(name: 'line-round-limit')
  final double lineRoundLimit;

  /// Sorts features in ascending order based on this value. Features with a
  /// higher sort key will appear above features with a lower sort key.
  @override
  @JsonKey(name: 'line-sort-key')
  final double? lineSortKey;

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  final List<double> _lineTranslate;

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  @override
  @JsonKey(name: 'line-translate')
  List<double> get lineTranslate {
    if (_lineTranslate is EqualUnmodifiableListView) return _lineTranslate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineTranslate);
  }

  /// Controls the frame of reference for line-translate.
  @override
  @JsonKey(name: 'line-translate-anchor')
  final ThemeFlatLightAnchor lineTranslateAnchor;

  /// The line part between [trim-start, trim-end] will be marked as
  /// transparent to make a route vanishing effect. The line trim-off offset
  /// is based on the whole line range [0.0, 1.0].
  final List<double> _lineTrimOffset;

  /// The line part between [trim-start, trim-end] will be marked as
  /// transparent to make a route vanishing effect. The line trim-off offset
  /// is based on the whole line range [0.0, 1.0].
  @override
  @JsonKey(name: 'line-trim-offset')
  @Assert('lineTrimOffset.all((e) => e >= 0 && e <= 1)',
      'The values of line-trim-offset have to be between 0 and 1')
  List<double> get lineTrimOffset {
    if (_lineTrimOffset is EqualUnmodifiableListView) return _lineTrimOffset;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_lineTrimOffset);
  }

  /// Stroke thickness.
  @override
  @JsonKey(name: 'line-width')
  @Assert('lineWidth >= 0 && lineWidth <= 1',
      'line-width has to be between 0 and 1 inclusive')
  final double lineWidth;

  /// Whether this layer is displayed.
  @override
  @JsonKey(name: 'visiblity')
  final ThemeLayerVisibility visibility;

  @override
  String toString() {
    return 'ThemeLineLayer(type: $type, id: $id, filter: $filter, layout: $layout, maxZoom: $maxZoom, minZoom: $minZoom, paint: $paint, slot: $slot, source: $source, sourceLayer: $sourceLayer, lineBlur: $lineBlur, lineCap: $lineCap, lineColor: $lineColor, lineDashArray: $lineDashArray, lineEmissiveStrength: $lineEmissiveStrength, lineGapWidth: $lineGapWidth, lineGradient: $lineGradient, lineJoin: $lineJoin, lineMiterLimit: $lineMiterLimit, lineOffset: $lineOffset, lineOpacity: $lineOpacity, linePattern: $linePattern, lineRoundLimit: $lineRoundLimit, lineSortKey: $lineSortKey, lineTranslate: $lineTranslate, lineTranslateAnchor: $lineTranslateAnchor, lineTrimOffset: $lineTrimOffset, lineWidth: $lineWidth, visibility: $visibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeLineLayerImpl &&
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
            (identical(other.lineBlur, lineBlur) ||
                other.lineBlur == lineBlur) &&
            (identical(other.lineCap, lineCap) || other.lineCap == lineCap) &&
            (identical(other.lineColor, lineColor) ||
                other.lineColor == lineColor) &&
            const DeepCollectionEquality()
                .equals(other._lineDashArray, _lineDashArray) &&
            (identical(other.lineEmissiveStrength, lineEmissiveStrength) ||
                other.lineEmissiveStrength == lineEmissiveStrength) &&
            (identical(other.lineGapWidth, lineGapWidth) ||
                other.lineGapWidth == lineGapWidth) &&
            (identical(other.lineGradient, lineGradient) ||
                other.lineGradient == lineGradient) &&
            (identical(other.lineJoin, lineJoin) ||
                other.lineJoin == lineJoin) &&
            (identical(other.lineMiterLimit, lineMiterLimit) ||
                other.lineMiterLimit == lineMiterLimit) &&
            (identical(other.lineOffset, lineOffset) ||
                other.lineOffset == lineOffset) &&
            (identical(other.lineOpacity, lineOpacity) ||
                other.lineOpacity == lineOpacity) &&
            (identical(other.linePattern, linePattern) ||
                other.linePattern == linePattern) &&
            (identical(other.lineRoundLimit, lineRoundLimit) ||
                other.lineRoundLimit == lineRoundLimit) &&
            (identical(other.lineSortKey, lineSortKey) ||
                other.lineSortKey == lineSortKey) &&
            const DeepCollectionEquality()
                .equals(other._lineTranslate, _lineTranslate) &&
            (identical(other.lineTranslateAnchor, lineTranslateAnchor) ||
                other.lineTranslateAnchor == lineTranslateAnchor) &&
            const DeepCollectionEquality()
                .equals(other._lineTrimOffset, _lineTrimOffset) &&
            (identical(other.lineWidth, lineWidth) ||
                other.lineWidth == lineWidth) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
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
        lineBlur,
        lineCap,
        lineColor,
        const DeepCollectionEquality().hash(_lineDashArray),
        lineEmissiveStrength,
        lineGapWidth,
        lineGradient,
        lineJoin,
        lineMiterLimit,
        lineOffset,
        lineOpacity,
        linePattern,
        lineRoundLimit,
        lineSortKey,
        const DeepCollectionEquality().hash(_lineTranslate),
        lineTranslateAnchor,
        const DeepCollectionEquality().hash(_lineTrimOffset),
        lineWidth,
        visibility
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeLineLayerImplCopyWith<_$ThemeLineLayerImpl> get copyWith =>
      __$$ThemeLineLayerImplCopyWithImpl<_$ThemeLineLayerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeLineLayerImplToJson(
      this,
    );
  }
}

abstract class _ThemeLineLayer implements ThemeLineLayer, ThemeLayer {
  const factory _ThemeLineLayer(
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
      @JsonKey(name: 'line-blur') final double lineBlur,
      @JsonKey(name: 'line-cap') final ThemeLineCap lineCap,
      @JsonKey(name: 'line-color') final String lineColor,
      @JsonKey(name: 'line-dasharray')
      @Assert('lineDashArray.all((e) => e >= 0)',
          'line-dasharray has to be greater than or equal to 0')
      final List<double>? lineDashArray,
      @Assert('lineEmissiveStrength >= 0',
          'line-emissive-strength has to be greater than or equal to 0.')
      @JsonKey(name: 'line-emissive-strength')
      final double lineEmissiveStrength,
      @JsonKey(name: 'line-gap-width') final double lineGapWidth,
      @JsonKey(name: 'line-gradient') final String? lineGradient,
      @JsonKey(name: 'line-join') final ThemeLineJoin lineJoin,
      @JsonKey(name: 'line-miter-limit') final double lineMiterLimit,
      @JsonKey(name: 'line-offset') final double lineOffset,
      @JsonKey(name: 'line-opacity')
      @Assert('lineOpacity >= 0 && lineOpacity <= 1',
          'line-opacity has to be between 0 and 1')
      final double lineOpacity,
      @JsonKey(name: 'line-pattern') final String? linePattern,
      @JsonKey(name: 'line-round-limit') final double lineRoundLimit,
      @JsonKey(name: 'line-sort-key') final double? lineSortKey,
      @JsonKey(name: 'line-translate') final List<double> lineTranslate,
      @JsonKey(name: 'line-translate-anchor')
      final ThemeFlatLightAnchor lineTranslateAnchor,
      @JsonKey(
          name: 'line-trim-offset')
      @Assert('lineTrimOffset.all((e) => e >= 0 && e <= 1)',
          'The values of line-trim-offset have to be between 0 and 1')
      final List<double> lineTrimOffset,
      @JsonKey(
          name: 'line-width')
      @Assert('lineWidth >= 0 && lineWidth <= 1',
          'line-width has to be between 0 and 1 inclusive')
      final double lineWidth,
      @JsonKey(name: 'visiblity')
      final ThemeLayerVisibility visibility}) = _$ThemeLineLayerImpl;

  factory _ThemeLineLayer.fromJson(Map<String, dynamic> json) =
      _$ThemeLineLayerImpl.fromJson;

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

  /// Blur applied to the line, in pixels.
  @JsonKey(name: 'line-blur')
  double get lineBlur;
  @override

  /// The display of line endings.
  @JsonKey(name: 'line-cap')
  ThemeLineCap get lineCap;
  @override

  /// The color with which the line will be drawn.
  @JsonKey(name: 'line-color')
  String get lineColor;
  @override

  /// Specifies the lengths of the alternating dashes and gaps that form the
  /// dash pattern. The lengths are later scaled by the line width. To
  /// convert a dash length to pixels, multiply the length by the current
  /// line width. Note that GeoJSON sources with lineMetrics: true specified
  /// won't render dashed lines to the expected scale. Also note that
  /// zoom-dependent expressions will be evaluated only at integer
  /// zoom levels.
  @JsonKey(name: 'line-dasharray')
  @Assert('lineDashArray.all((e) => e >= 0)',
      'line-dasharray has to be greater than or equal to 0')
  List<double>? get lineDashArray;
  @override

  /// Controls the intensity of light emitted on the source features.
  @Assert('lineEmissiveStrength >= 0',
      'line-emissive-strength has to be greater than or equal to 0.')
  @JsonKey(name: 'line-emissive-strength')
  double get lineEmissiveStrength;
  @override

  /// Draws a line casing outside of a line's actual path. Value indicates
  /// the width of the inner gap.
  @JsonKey(name: 'line-gap-width')
  double get lineGapWidth;
  @override

  /// A gradient used to color a line feature at various distances along
  /// its length. Defined using a step or interpolate expression which
  /// outputs a color for each corresponding line-progress input value.
  /// line-progress is a percentage of the line feature's total length as
  /// measured on the webmercator projected coordinate plane (a number
  /// between 0 and 1). Can only be used with GeoJSON sources that specify
  /// "lineMetrics": true.
  @JsonKey(name: 'line-gradient')
  String? get lineGradient;
  @override

  /// The display of lines when joining.
  @JsonKey(name: 'line-join')
  ThemeLineJoin get lineJoin;
  @override

  /// Used to automatically convert miter joins to bevel joins for
  /// sharp angles.
  @JsonKey(name: 'line-miter-limit')
  double get lineMiterLimit;
  @override

  /// The line's offset. For linear features, a positive value offsets the
  /// line to the right, relative to the direction of the line, and a
  /// negative value to the left. For polygon features, a positive value
  /// results in an inset, and a negative value results in an outset.
  @JsonKey(name: 'line-offset')
  double get lineOffset;
  @override

  /// The opacity at which the line will be drawn.
  @JsonKey(name: 'line-opacity')
  @Assert('lineOpacity >= 0 && lineOpacity <= 1',
      'line-opacity has to be between 0 and 1')
  double get lineOpacity;
  @override

  /// Name of image in sprite to use for drawing image lines. For seamless
  /// patterns, image width must be a factor of two (2, 4, 8, ..., 512).
  /// Note that zoom-dependent expressions will be evaluated only at integer
  /// zoom levels.
  @JsonKey(name: 'line-pattern')
  String? get linePattern;
  @override

  /// Used to automatically convert round joins to miter joins for
  /// shallow angles.
  @JsonKey(name: 'line-round-limit')
  double get lineRoundLimit;
  @override

  /// Sorts features in ascending order based on this value. Features with a
  /// higher sort key will appear above features with a lower sort key.
  @JsonKey(name: 'line-sort-key')
  double? get lineSortKey;
  @override

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  @JsonKey(name: 'line-translate')
  List<double> get lineTranslate;
  @override

  /// Controls the frame of reference for line-translate.
  @JsonKey(name: 'line-translate-anchor')
  ThemeFlatLightAnchor get lineTranslateAnchor;
  @override

  /// The line part between [trim-start, trim-end] will be marked as
  /// transparent to make a route vanishing effect. The line trim-off offset
  /// is based on the whole line range [0.0, 1.0].
  @JsonKey(name: 'line-trim-offset')
  @Assert('lineTrimOffset.all((e) => e >= 0 && e <= 1)',
      'The values of line-trim-offset have to be between 0 and 1')
  List<double> get lineTrimOffset;
  @override

  /// Stroke thickness.
  @JsonKey(name: 'line-width')
  @Assert('lineWidth >= 0 && lineWidth <= 1',
      'line-width has to be between 0 and 1 inclusive')
  double get lineWidth;
  @override

  /// Whether this layer is displayed.
  @JsonKey(name: 'visiblity')
  ThemeLayerVisibility get visibility;
  @override
  @JsonKey(ignore: true)
  _$$ThemeLineLayerImplCopyWith<_$ThemeLineLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
