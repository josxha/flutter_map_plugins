// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fill.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeFillLayer _$ThemeFillLayerFromJson(Map<String, dynamic> json) {
  return _ThemeFillLayer.fromJson(json);
}

/// @nodoc
mixin _$ThemeFillLayer {
  /// Rendering type of this layer.
  ThemeLayerType get type => throw _privateConstructorUsedError;

  /// Unique layer name.
  String get id => throw _privateConstructorUsedError;

  /// An expression specifying conditions on source features. Only features
  /// that match the filter are displayed. Zoom expressions in filters are
  /// only evaluated at integer zoom levels. The ["feature-state", ...]
  /// expression is not supported in filter expressions. The ["pitch"] and
  /// ["distance-from-center"] expressions are supported only for filter
  /// expressions on the symbol layer.
  dynamic get filter => throw _privateConstructorUsedError;

  /// Layout properties for the layer.
  dynamic get layout => throw _privateConstructorUsedError;

  /// The maximum zoom level for the layer. At zoom levels equal to or
  /// greater than the maxzoom, the layer will be hidden.
  @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'maxzoom')
  double? get maxZoom => throw _privateConstructorUsedError;

  /// The minimum zoom level for the layer. At zoom levels less than the
  /// minzoom, the layer will be hidden.
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  double? get minZoom => throw _privateConstructorUsedError;

  /// Default paint properties for this layer.
  dynamic get paint => throw _privateConstructorUsedError;

  /// The slot this layer is assigned to. If specified, and a slot with that
  /// name exists, it will be placed at that position in the layer order.
  String? get slot => throw _privateConstructorUsedError;

  /// Name of a source description to be used for this layer. Required for
  /// all layer types except background and slot.
  String? get source => throw _privateConstructorUsedError;

  /// Layer to use from a vector tile source. Required for vector
  /// tile sources; prohibited for all other source types, including
  /// GeoJSON sources.
  @JsonKey(name: 'source-layer')
  String? get sourceLayer => throw _privateConstructorUsedError;

  /// Whether or not the fill should be antialiased.
  @JsonKey(name: 'fill-antialias')
  bool get fillAntialias => throw _privateConstructorUsedError;

  /// The color of the filled part of this layer. This color can be
  /// specified as rgba with an alpha component and the color's opacity will
  /// not affect the opacity of the 1px stroke, if it is used.
  @ColorConverter()
  @JsonKey(name: 'fill-color')
  Color get fillColor => throw _privateConstructorUsedError;

  /// Controls the intensity of light emitted on the source features.
  @JsonKey(name: 'fill-emissive-strength')
  double get fillEmissiveStrength => throw _privateConstructorUsedError;

  /// The opacity of the entire fill layer. In contrast to the fill-color,
  /// this value will also affect the 1px stroke around the fill, if the
  /// stroke is used.
  @Assert('fillOpacity >= 0 && fillOpacity <= 1',
      'fill-opacity has to be between 0 and 1 inclusive.')
  @JsonKey(name: 'fill-opacity')
  double get fillOpacity => throw _privateConstructorUsedError;

  /// The outline color of the fill. Matches the value of fill-color
  /// if unspecified.
  @ColorConverter()
  @JsonKey(name: 'fill-outline-color')
  Color? get fillOutlineColor => throw _privateConstructorUsedError;

  /// Name of image in sprite to use for drawing image fills. For seamless
  /// patterns, image width and height must be a factor of two
  /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
  /// evaluated only at integer zoom levels.
  @JsonKey(name: 'fill-pattern')
  String? get fillPattern => throw _privateConstructorUsedError;

  /// Sorts features in ascending order based on this value. Features with a
  /// higher sort key will appear above features with a lower sort key.
  @JsonKey(name: 'fill-sort-key')
  double? get fillSortKey => throw _privateConstructorUsedError;

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  @Assert('fillTranslate == null || fillTranslate!.length == 2',
      'fill-opacity has to be between 0 and 1 inclusive.')
  @JsonKey(name: 'fill-translate')
  List<double> get fillTranslate => throw _privateConstructorUsedError;

  /// Controls the frame of reference for fill-translate.
  @JsonKey(name: 'fill-translate-anchor')
  ThemeFlatLightAnchor get fillTranslateAnchor =>
      throw _privateConstructorUsedError;

  /// Controls the frame of reference for fill-translate.
  ThemeLayerVisibility get visibility => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeFillLayerCopyWith<ThemeFillLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeFillLayerCopyWith<$Res> {
  factory $ThemeFillLayerCopyWith(
          ThemeFillLayer value, $Res Function(ThemeFillLayer) then) =
      _$ThemeFillLayerCopyWithImpl<$Res, ThemeFillLayer>;
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
      @JsonKey(name: 'fill-antialias') bool fillAntialias,
      @ColorConverter() @JsonKey(name: 'fill-color') Color fillColor,
      @JsonKey(name: 'fill-emissive-strength') double fillEmissiveStrength,
      @Assert('fillOpacity >= 0 && fillOpacity <= 1',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-opacity')
      double fillOpacity,
      @ColorConverter()
      @JsonKey(name: 'fill-outline-color')
      Color? fillOutlineColor,
      @JsonKey(name: 'fill-pattern') String? fillPattern,
      @JsonKey(name: 'fill-sort-key') double? fillSortKey,
      @Assert('fillTranslate == null || fillTranslate!.length == 2',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-translate')
      List<double> fillTranslate,
      @JsonKey(name: 'fill-translate-anchor')
      ThemeFlatLightAnchor fillTranslateAnchor,
      ThemeLayerVisibility visibility});
}

/// @nodoc
class _$ThemeFillLayerCopyWithImpl<$Res, $Val extends ThemeFillLayer>
    implements $ThemeFillLayerCopyWith<$Res> {
  _$ThemeFillLayerCopyWithImpl(this._value, this._then);

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
    Object? fillAntialias = null,
    Object? fillColor = null,
    Object? fillEmissiveStrength = null,
    Object? fillOpacity = null,
    Object? fillOutlineColor = freezed,
    Object? fillPattern = freezed,
    Object? fillSortKey = freezed,
    Object? fillTranslate = null,
    Object? fillTranslateAnchor = null,
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
      fillAntialias: null == fillAntialias
          ? _value.fillAntialias
          : fillAntialias // ignore: cast_nullable_to_non_nullable
              as bool,
      fillColor: null == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as Color,
      fillEmissiveStrength: null == fillEmissiveStrength
          ? _value.fillEmissiveStrength
          : fillEmissiveStrength // ignore: cast_nullable_to_non_nullable
              as double,
      fillOpacity: null == fillOpacity
          ? _value.fillOpacity
          : fillOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      fillOutlineColor: freezed == fillOutlineColor
          ? _value.fillOutlineColor
          : fillOutlineColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      fillPattern: freezed == fillPattern
          ? _value.fillPattern
          : fillPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      fillSortKey: freezed == fillSortKey
          ? _value.fillSortKey
          : fillSortKey // ignore: cast_nullable_to_non_nullable
              as double?,
      fillTranslate: null == fillTranslate
          ? _value.fillTranslate
          : fillTranslate // ignore: cast_nullable_to_non_nullable
              as List<double>,
      fillTranslateAnchor: null == fillTranslateAnchor
          ? _value.fillTranslateAnchor
          : fillTranslateAnchor // ignore: cast_nullable_to_non_nullable
              as ThemeFlatLightAnchor,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ThemeLayerVisibility,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeFillLayerImplCopyWith<$Res>
    implements $ThemeFillLayerCopyWith<$Res> {
  factory _$$ThemeFillLayerImplCopyWith(_$ThemeFillLayerImpl value,
          $Res Function(_$ThemeFillLayerImpl) then) =
      __$$ThemeFillLayerImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'fill-antialias') bool fillAntialias,
      @ColorConverter() @JsonKey(name: 'fill-color') Color fillColor,
      @JsonKey(name: 'fill-emissive-strength') double fillEmissiveStrength,
      @Assert('fillOpacity >= 0 && fillOpacity <= 1',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-opacity')
      double fillOpacity,
      @ColorConverter()
      @JsonKey(name: 'fill-outline-color')
      Color? fillOutlineColor,
      @JsonKey(name: 'fill-pattern') String? fillPattern,
      @JsonKey(name: 'fill-sort-key') double? fillSortKey,
      @Assert('fillTranslate == null || fillTranslate!.length == 2',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-translate')
      List<double> fillTranslate,
      @JsonKey(name: 'fill-translate-anchor')
      ThemeFlatLightAnchor fillTranslateAnchor,
      ThemeLayerVisibility visibility});
}

/// @nodoc
class __$$ThemeFillLayerImplCopyWithImpl<$Res>
    extends _$ThemeFillLayerCopyWithImpl<$Res, _$ThemeFillLayerImpl>
    implements _$$ThemeFillLayerImplCopyWith<$Res> {
  __$$ThemeFillLayerImplCopyWithImpl(
      _$ThemeFillLayerImpl _value, $Res Function(_$ThemeFillLayerImpl) _then)
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
    Object? fillAntialias = null,
    Object? fillColor = null,
    Object? fillEmissiveStrength = null,
    Object? fillOpacity = null,
    Object? fillOutlineColor = freezed,
    Object? fillPattern = freezed,
    Object? fillSortKey = freezed,
    Object? fillTranslate = null,
    Object? fillTranslateAnchor = null,
    Object? visibility = null,
  }) {
    return _then(_$ThemeFillLayerImpl(
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
      fillAntialias: null == fillAntialias
          ? _value.fillAntialias
          : fillAntialias // ignore: cast_nullable_to_non_nullable
              as bool,
      fillColor: null == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as Color,
      fillEmissiveStrength: null == fillEmissiveStrength
          ? _value.fillEmissiveStrength
          : fillEmissiveStrength // ignore: cast_nullable_to_non_nullable
              as double,
      fillOpacity: null == fillOpacity
          ? _value.fillOpacity
          : fillOpacity // ignore: cast_nullable_to_non_nullable
              as double,
      fillOutlineColor: freezed == fillOutlineColor
          ? _value.fillOutlineColor
          : fillOutlineColor // ignore: cast_nullable_to_non_nullable
              as Color?,
      fillPattern: freezed == fillPattern
          ? _value.fillPattern
          : fillPattern // ignore: cast_nullable_to_non_nullable
              as String?,
      fillSortKey: freezed == fillSortKey
          ? _value.fillSortKey
          : fillSortKey // ignore: cast_nullable_to_non_nullable
              as double?,
      fillTranslate: null == fillTranslate
          ? _value._fillTranslate
          : fillTranslate // ignore: cast_nullable_to_non_nullable
              as List<double>,
      fillTranslateAnchor: null == fillTranslateAnchor
          ? _value.fillTranslateAnchor
          : fillTranslateAnchor // ignore: cast_nullable_to_non_nullable
              as ThemeFlatLightAnchor,
      visibility: null == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as ThemeLayerVisibility,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeFillLayerImpl implements _ThemeFillLayer {
  const _$ThemeFillLayerImpl(
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
      @JsonKey(name: 'fill-antialias') this.fillAntialias = true,
      @ColorConverter()
      @JsonKey(name: 'fill-color')
      this.fillColor = const Color(0xff000000),
      @JsonKey(name: 'fill-emissive-strength') this.fillEmissiveStrength = 0,
      @Assert('fillOpacity >= 0 && fillOpacity <= 1',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-opacity')
      this.fillOpacity = 1,
      @ColorConverter()
      @JsonKey(name: 'fill-outline-color')
      this.fillOutlineColor,
      @JsonKey(name: 'fill-pattern') this.fillPattern,
      @JsonKey(name: 'fill-sort-key') this.fillSortKey,
      @Assert('fillTranslate == null || fillTranslate!.length == 2',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-translate')
      final List<double> fillTranslate = const [0.0],
      @JsonKey(name: 'fill-translate-anchor')
      this.fillTranslateAnchor = ThemeFlatLightAnchor.map,
      this.visibility = ThemeLayerVisibility.visible})
      : _fillTranslate = fillTranslate;

  factory _$ThemeFillLayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeFillLayerImplFromJson(json);

  /// Rendering type of this layer.
  @override
  final ThemeLayerType type;

  /// Unique layer name.
  @override
  final String id;

  /// An expression specifying conditions on source features. Only features
  /// that match the filter are displayed. Zoom expressions in filters are
  /// only evaluated at integer zoom levels. The ["feature-state", ...]
  /// expression is not supported in filter expressions. The ["pitch"] and
  /// ["distance-from-center"] expressions are supported only for filter
  /// expressions on the symbol layer.
  @override
  final dynamic filter;

  /// Layout properties for the layer.
  @override
  final dynamic layout;

  /// The maximum zoom level for the layer. At zoom levels equal to or
  /// greater than the maxzoom, the layer will be hidden.
  @override
  @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'maxzoom')
  final double? maxZoom;

  /// The minimum zoom level for the layer. At zoom levels less than the
  /// minzoom, the layer will be hidden.
  @override
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  final double? minZoom;

  /// Default paint properties for this layer.
  @override
  final dynamic paint;

  /// The slot this layer is assigned to. If specified, and a slot with that
  /// name exists, it will be placed at that position in the layer order.
  @override
  final String? slot;

  /// Name of a source description to be used for this layer. Required for
  /// all layer types except background and slot.
  @override
  final String? source;

  /// Layer to use from a vector tile source. Required for vector
  /// tile sources; prohibited for all other source types, including
  /// GeoJSON sources.
  @override
  @JsonKey(name: 'source-layer')
  final String? sourceLayer;

  /// Whether or not the fill should be antialiased.
  @override
  @JsonKey(name: 'fill-antialias')
  final bool fillAntialias;

  /// The color of the filled part of this layer. This color can be
  /// specified as rgba with an alpha component and the color's opacity will
  /// not affect the opacity of the 1px stroke, if it is used.
  @override
  @ColorConverter()
  @JsonKey(name: 'fill-color')
  final Color fillColor;

  /// Controls the intensity of light emitted on the source features.
  @override
  @JsonKey(name: 'fill-emissive-strength')
  final double fillEmissiveStrength;

  /// The opacity of the entire fill layer. In contrast to the fill-color,
  /// this value will also affect the 1px stroke around the fill, if the
  /// stroke is used.
  @override
  @Assert('fillOpacity >= 0 && fillOpacity <= 1',
      'fill-opacity has to be between 0 and 1 inclusive.')
  @JsonKey(name: 'fill-opacity')
  final double fillOpacity;

  /// The outline color of the fill. Matches the value of fill-color
  /// if unspecified.
  @override
  @ColorConverter()
  @JsonKey(name: 'fill-outline-color')
  final Color? fillOutlineColor;

  /// Name of image in sprite to use for drawing image fills. For seamless
  /// patterns, image width and height must be a factor of two
  /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
  /// evaluated only at integer zoom levels.
  @override
  @JsonKey(name: 'fill-pattern')
  final String? fillPattern;

  /// Sorts features in ascending order based on this value. Features with a
  /// higher sort key will appear above features with a lower sort key.
  @override
  @JsonKey(name: 'fill-sort-key')
  final double? fillSortKey;

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  final List<double> _fillTranslate;

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  @override
  @Assert('fillTranslate == null || fillTranslate!.length == 2',
      'fill-opacity has to be between 0 and 1 inclusive.')
  @JsonKey(name: 'fill-translate')
  List<double> get fillTranslate {
    if (_fillTranslate is EqualUnmodifiableListView) return _fillTranslate;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_fillTranslate);
  }

  /// Controls the frame of reference for fill-translate.
  @override
  @JsonKey(name: 'fill-translate-anchor')
  final ThemeFlatLightAnchor fillTranslateAnchor;

  /// Controls the frame of reference for fill-translate.
  @override
  @JsonKey()
  final ThemeLayerVisibility visibility;

  @override
  String toString() {
    return 'ThemeFillLayer(type: $type, id: $id, filter: $filter, layout: $layout, maxZoom: $maxZoom, minZoom: $minZoom, paint: $paint, slot: $slot, source: $source, sourceLayer: $sourceLayer, fillAntialias: $fillAntialias, fillColor: $fillColor, fillEmissiveStrength: $fillEmissiveStrength, fillOpacity: $fillOpacity, fillOutlineColor: $fillOutlineColor, fillPattern: $fillPattern, fillSortKey: $fillSortKey, fillTranslate: $fillTranslate, fillTranslateAnchor: $fillTranslateAnchor, visibility: $visibility)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeFillLayerImpl &&
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
            (identical(other.fillAntialias, fillAntialias) ||
                other.fillAntialias == fillAntialias) &&
            (identical(other.fillColor, fillColor) ||
                other.fillColor == fillColor) &&
            (identical(other.fillEmissiveStrength, fillEmissiveStrength) ||
                other.fillEmissiveStrength == fillEmissiveStrength) &&
            (identical(other.fillOpacity, fillOpacity) ||
                other.fillOpacity == fillOpacity) &&
            (identical(other.fillOutlineColor, fillOutlineColor) ||
                other.fillOutlineColor == fillOutlineColor) &&
            (identical(other.fillPattern, fillPattern) ||
                other.fillPattern == fillPattern) &&
            (identical(other.fillSortKey, fillSortKey) ||
                other.fillSortKey == fillSortKey) &&
            const DeepCollectionEquality()
                .equals(other._fillTranslate, _fillTranslate) &&
            (identical(other.fillTranslateAnchor, fillTranslateAnchor) ||
                other.fillTranslateAnchor == fillTranslateAnchor) &&
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
        fillAntialias,
        fillColor,
        fillEmissiveStrength,
        fillOpacity,
        fillOutlineColor,
        fillPattern,
        fillSortKey,
        const DeepCollectionEquality().hash(_fillTranslate),
        fillTranslateAnchor,
        visibility
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeFillLayerImplCopyWith<_$ThemeFillLayerImpl> get copyWith =>
      __$$ThemeFillLayerImplCopyWithImpl<_$ThemeFillLayerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeFillLayerImplToJson(
      this,
    );
  }
}

abstract class _ThemeFillLayer implements ThemeFillLayer, ThemeLayer {
  const factory _ThemeFillLayer(
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
      @JsonKey(name: 'fill-antialias') final bool fillAntialias,
      @ColorConverter() @JsonKey(name: 'fill-color') final Color fillColor,
      @JsonKey(name: 'fill-emissive-strength')
      final double fillEmissiveStrength,
      @Assert('fillOpacity >= 0 && fillOpacity <= 1',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-opacity')
      final double fillOpacity,
      @ColorConverter()
      @JsonKey(name: 'fill-outline-color')
      final Color? fillOutlineColor,
      @JsonKey(name: 'fill-pattern') final String? fillPattern,
      @JsonKey(name: 'fill-sort-key') final double? fillSortKey,
      @Assert('fillTranslate == null || fillTranslate!.length == 2',
          'fill-opacity has to be between 0 and 1 inclusive.')
      @JsonKey(name: 'fill-translate')
      final List<double> fillTranslate,
      @JsonKey(name: 'fill-translate-anchor')
      final ThemeFlatLightAnchor fillTranslateAnchor,
      final ThemeLayerVisibility visibility}) = _$ThemeFillLayerImpl;

  factory _ThemeFillLayer.fromJson(Map<String, dynamic> json) =
      _$ThemeFillLayerImpl.fromJson;

  @override

  /// Rendering type of this layer.
  ThemeLayerType get type;
  @override

  /// Unique layer name.
  String get id;
  @override

  /// An expression specifying conditions on source features. Only features
  /// that match the filter are displayed. Zoom expressions in filters are
  /// only evaluated at integer zoom levels. The ["feature-state", ...]
  /// expression is not supported in filter expressions. The ["pitch"] and
  /// ["distance-from-center"] expressions are supported only for filter
  /// expressions on the symbol layer.
  dynamic get filter;
  @override

  /// Layout properties for the layer.
  dynamic get layout;
  @override

  /// The maximum zoom level for the layer. At zoom levels equal to or
  /// greater than the maxzoom, the layer will be hidden.
  @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'maxzoom')
  double? get maxZoom;
  @override

  /// The minimum zoom level for the layer. At zoom levels less than the
  /// minzoom, the layer will be hidden.
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  double? get minZoom;
  @override

  /// Default paint properties for this layer.
  dynamic get paint;
  @override

  /// The slot this layer is assigned to. If specified, and a slot with that
  /// name exists, it will be placed at that position in the layer order.
  String? get slot;
  @override

  /// Name of a source description to be used for this layer. Required for
  /// all layer types except background and slot.
  String? get source;
  @override

  /// Layer to use from a vector tile source. Required for vector
  /// tile sources; prohibited for all other source types, including
  /// GeoJSON sources.
  @JsonKey(name: 'source-layer')
  String? get sourceLayer;
  @override

  /// Whether or not the fill should be antialiased.
  @JsonKey(name: 'fill-antialias')
  bool get fillAntialias;
  @override

  /// The color of the filled part of this layer. This color can be
  /// specified as rgba with an alpha component and the color's opacity will
  /// not affect the opacity of the 1px stroke, if it is used.
  @ColorConverter()
  @JsonKey(name: 'fill-color')
  Color get fillColor;
  @override

  /// Controls the intensity of light emitted on the source features.
  @JsonKey(name: 'fill-emissive-strength')
  double get fillEmissiveStrength;
  @override

  /// The opacity of the entire fill layer. In contrast to the fill-color,
  /// this value will also affect the 1px stroke around the fill, if the
  /// stroke is used.
  @Assert('fillOpacity >= 0 && fillOpacity <= 1',
      'fill-opacity has to be between 0 and 1 inclusive.')
  @JsonKey(name: 'fill-opacity')
  double get fillOpacity;
  @override

  /// The outline color of the fill. Matches the value of fill-color
  /// if unspecified.
  @ColorConverter()
  @JsonKey(name: 'fill-outline-color')
  Color? get fillOutlineColor;
  @override

  /// Name of image in sprite to use for drawing image fills. For seamless
  /// patterns, image width and height must be a factor of two
  /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
  /// evaluated only at integer zoom levels.
  @JsonKey(name: 'fill-pattern')
  String? get fillPattern;
  @override

  /// Sorts features in ascending order based on this value. Features with a
  /// higher sort key will appear above features with a lower sort key.
  @JsonKey(name: 'fill-sort-key')
  double? get fillSortKey;
  @override

  /// The geometry's offset. Values are [x, y] where negatives indicate
  /// left and up, respectively.
  @Assert('fillTranslate == null || fillTranslate!.length == 2',
      'fill-opacity has to be between 0 and 1 inclusive.')
  @JsonKey(name: 'fill-translate')
  List<double> get fillTranslate;
  @override

  /// Controls the frame of reference for fill-translate.
  @JsonKey(name: 'fill-translate-anchor')
  ThemeFlatLightAnchor get fillTranslateAnchor;
  @override

  /// Controls the frame of reference for fill-translate.
  ThemeLayerVisibility get visibility;
  @override
  @JsonKey(ignore: true)
  _$$ThemeFillLayerImplCopyWith<_$ThemeFillLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
