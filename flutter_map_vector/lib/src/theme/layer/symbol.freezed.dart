// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeSymbolLayer _$ThemeSymbolLayerFromJson(Map<String, dynamic> json) {
  return _ThemeSymbolLayer.fromJson(json);
}

/// @nodoc
mixin _$ThemeSymbolLayer {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeSymbolLayerCopyWith<ThemeSymbolLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeSymbolLayerCopyWith<$Res> {
  factory $ThemeSymbolLayerCopyWith(
          ThemeSymbolLayer value, $Res Function(ThemeSymbolLayer) then) =
      _$ThemeSymbolLayerCopyWithImpl<$Res, ThemeSymbolLayer>;
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
      @JsonKey(name: 'source-layer') String? sourceLayer});
}

/// @nodoc
class _$ThemeSymbolLayerCopyWithImpl<$Res, $Val extends ThemeSymbolLayer>
    implements $ThemeSymbolLayerCopyWith<$Res> {
  _$ThemeSymbolLayerCopyWithImpl(this._value, this._then);

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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeSymbolLayerImplCopyWith<$Res>
    implements $ThemeSymbolLayerCopyWith<$Res> {
  factory _$$ThemeSymbolLayerImplCopyWith(_$ThemeSymbolLayerImpl value,
          $Res Function(_$ThemeSymbolLayerImpl) then) =
      __$$ThemeSymbolLayerImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'source-layer') String? sourceLayer});
}

/// @nodoc
class __$$ThemeSymbolLayerImplCopyWithImpl<$Res>
    extends _$ThemeSymbolLayerCopyWithImpl<$Res, _$ThemeSymbolLayerImpl>
    implements _$$ThemeSymbolLayerImplCopyWith<$Res> {
  __$$ThemeSymbolLayerImplCopyWithImpl(_$ThemeSymbolLayerImpl _value,
      $Res Function(_$ThemeSymbolLayerImpl) _then)
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
  }) {
    return _then(_$ThemeSymbolLayerImpl(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeSymbolLayerImpl implements _ThemeSymbolLayer {
  const _$ThemeSymbolLayerImpl(
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
      @JsonKey(name: 'source-layer') this.sourceLayer});

  factory _$ThemeSymbolLayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeSymbolLayerImplFromJson(json);

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

  @override
  String toString() {
    return 'ThemeSymbolLayer(type: $type, id: $id, filter: $filter, layout: $layout, maxZoom: $maxZoom, minZoom: $minZoom, paint: $paint, slot: $slot, source: $source, sourceLayer: $sourceLayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeSymbolLayerImpl &&
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
                other.sourceLayer == sourceLayer));
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
      sourceLayer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeSymbolLayerImplCopyWith<_$ThemeSymbolLayerImpl> get copyWith =>
      __$$ThemeSymbolLayerImplCopyWithImpl<_$ThemeSymbolLayerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeSymbolLayerImplToJson(
      this,
    );
  }
}

abstract class _ThemeSymbolLayer implements ThemeSymbolLayer, ThemeLayer {
  const factory _ThemeSymbolLayer(
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
      @JsonKey(name: 'source-layer')
      final String? sourceLayer}) = _$ThemeSymbolLayerImpl;

  factory _ThemeSymbolLayer.fromJson(Map<String, dynamic> json) =
      _$ThemeSymbolLayerImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ThemeSymbolLayerImplCopyWith<_$ThemeSymbolLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
