// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fill_extrusion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeFillExtrusionLayer _$ThemeFillExtrusionLayerFromJson(
    Map<String, dynamic> json) {
  return _ThemeFillExtrusionLayer.fromJson(json);
}

/// @nodoc
mixin _$ThemeFillExtrusionLayer {
  ThemeLayerType get type => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  dynamic get filter => throw _privateConstructorUsedError;
  dynamic get layout => throw _privateConstructorUsedError;
  @Assert('maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'maxzoom')
  int? get maxZoom => throw _privateConstructorUsedError;
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  int? get minZoom => throw _privateConstructorUsedError;
  dynamic get paint => throw _privateConstructorUsedError;
  String? get slot => throw _privateConstructorUsedError;
  String? get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'source-layer')
  String? get sourceLayer => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeFillExtrusionLayerCopyWith<ThemeFillExtrusionLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeFillExtrusionLayerCopyWith<$Res> {
  factory $ThemeFillExtrusionLayerCopyWith(ThemeFillExtrusionLayer value,
          $Res Function(ThemeFillExtrusionLayer) then) =
      _$ThemeFillExtrusionLayerCopyWithImpl<$Res, ThemeFillExtrusionLayer>;
  @useResult
  $Res call(
      {ThemeLayerType type,
      String id,
      dynamic filter,
      dynamic layout,
      @Assert(
          'maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'maxzoom')
      int? maxZoom,
      @Assert(
          'minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      int? minZoom,
      dynamic paint,
      String? slot,
      String? source,
      @JsonKey(name: 'source-layer') String? sourceLayer});
}

/// @nodoc
class _$ThemeFillExtrusionLayerCopyWithImpl<$Res,
        $Val extends ThemeFillExtrusionLayer>
    implements $ThemeFillExtrusionLayerCopyWith<$Res> {
  _$ThemeFillExtrusionLayerCopyWithImpl(this._value, this._then);

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
              as int?,
      minZoom: freezed == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int?,
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
abstract class _$$ThemeFillExtrusionLayerImplCopyWith<$Res>
    implements $ThemeFillExtrusionLayerCopyWith<$Res> {
  factory _$$ThemeFillExtrusionLayerImplCopyWith(
          _$ThemeFillExtrusionLayerImpl value,
          $Res Function(_$ThemeFillExtrusionLayerImpl) then) =
      __$$ThemeFillExtrusionLayerImplCopyWithImpl<$Res>;
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
      int? maxZoom,
      @Assert(
          'minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      int? minZoom,
      dynamic paint,
      String? slot,
      String? source,
      @JsonKey(name: 'source-layer') String? sourceLayer});
}

/// @nodoc
class __$$ThemeFillExtrusionLayerImplCopyWithImpl<$Res>
    extends _$ThemeFillExtrusionLayerCopyWithImpl<$Res,
        _$ThemeFillExtrusionLayerImpl>
    implements _$$ThemeFillExtrusionLayerImplCopyWith<$Res> {
  __$$ThemeFillExtrusionLayerImplCopyWithImpl(
      _$ThemeFillExtrusionLayerImpl _value,
      $Res Function(_$ThemeFillExtrusionLayerImpl) _then)
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
    return _then(_$ThemeFillExtrusionLayerImpl(
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
              as int?,
      minZoom: freezed == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int?,
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
class _$ThemeFillExtrusionLayerImpl implements _ThemeFillExtrusionLayer {
  const _$ThemeFillExtrusionLayerImpl(
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

  factory _$ThemeFillExtrusionLayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeFillExtrusionLayerImplFromJson(json);

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
  final int? maxZoom;
  @override
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  final int? minZoom;
  @override
  final dynamic paint;
  @override
  final String? slot;
  @override
  final String? source;
  @override
  @JsonKey(name: 'source-layer')
  final String? sourceLayer;

  @override
  String toString() {
    return 'ThemeFillExtrusionLayer(type: $type, id: $id, filter: $filter, layout: $layout, maxZoom: $maxZoom, minZoom: $minZoom, paint: $paint, slot: $slot, source: $source, sourceLayer: $sourceLayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeFillExtrusionLayerImpl &&
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
  _$$ThemeFillExtrusionLayerImplCopyWith<_$ThemeFillExtrusionLayerImpl>
      get copyWith => __$$ThemeFillExtrusionLayerImplCopyWithImpl<
          _$ThemeFillExtrusionLayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeFillExtrusionLayerImplToJson(
      this,
    );
  }
}

abstract class _ThemeFillExtrusionLayer
    implements ThemeFillExtrusionLayer, ThemeLayer {
  const factory _ThemeFillExtrusionLayer(
      {required final ThemeLayerType type,
      required final String id,
      final dynamic filter,
      final dynamic layout,
      @Assert(
          'maxZoom >= 0 && maxZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'maxzoom')
      final int? maxZoom,
      @Assert(
          'minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
      @JsonKey(name: 'minzoom')
      final int? minZoom,
      final dynamic paint,
      final String? slot,
      final String? source,
      @JsonKey(name: 'source-layer')
      final String? sourceLayer}) = _$ThemeFillExtrusionLayerImpl;

  factory _ThemeFillExtrusionLayer.fromJson(Map<String, dynamic> json) =
      _$ThemeFillExtrusionLayerImpl.fromJson;

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
  int? get maxZoom;
  @override
  @Assert('minZoom >= 0 && minZoom <= 24', 'number between 0 and 24 inclusive.')
  @JsonKey(name: 'minzoom')
  int? get minZoom;
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
  @JsonKey(ignore: true)
  _$$ThemeFillExtrusionLayerImplCopyWith<_$ThemeFillExtrusionLayerImpl>
      get copyWith => throw _privateConstructorUsedError;
}