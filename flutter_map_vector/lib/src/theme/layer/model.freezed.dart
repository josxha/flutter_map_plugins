// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeModelLayer _$ThemeModelLayerFromJson(Map<String, dynamic> json) {
  return _ThemeModelLayer.fromJson(json);
}

/// @nodoc
mixin _$ThemeModelLayer {
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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeModelLayerCopyWith<ThemeModelLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeModelLayerCopyWith<$Res> {
  factory $ThemeModelLayerCopyWith(
          ThemeModelLayer value, $Res Function(ThemeModelLayer) then) =
      _$ThemeModelLayerCopyWithImpl<$Res, ThemeModelLayer>;
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
class _$ThemeModelLayerCopyWithImpl<$Res, $Val extends ThemeModelLayer>
    implements $ThemeModelLayerCopyWith<$Res> {
  _$ThemeModelLayerCopyWithImpl(this._value, this._then);

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
abstract class _$$ThemeModelLayerImplCopyWith<$Res>
    implements $ThemeModelLayerCopyWith<$Res> {
  factory _$$ThemeModelLayerImplCopyWith(_$ThemeModelLayerImpl value,
          $Res Function(_$ThemeModelLayerImpl) then) =
      __$$ThemeModelLayerImplCopyWithImpl<$Res>;
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
class __$$ThemeModelLayerImplCopyWithImpl<$Res>
    extends _$ThemeModelLayerCopyWithImpl<$Res, _$ThemeModelLayerImpl>
    implements _$$ThemeModelLayerImplCopyWith<$Res> {
  __$$ThemeModelLayerImplCopyWithImpl(
      _$ThemeModelLayerImpl _value, $Res Function(_$ThemeModelLayerImpl) _then)
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
    return _then(_$ThemeModelLayerImpl(
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
class _$ThemeModelLayerImpl implements _ThemeModelLayer {
  const _$ThemeModelLayerImpl(
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

  factory _$ThemeModelLayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeModelLayerImplFromJson(json);

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

  @override
  String toString() {
    return 'ThemeModelLayer(type: $type, id: $id, filter: $filter, layout: $layout, maxZoom: $maxZoom, minZoom: $minZoom, paint: $paint, slot: $slot, source: $source, sourceLayer: $sourceLayer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeModelLayerImpl &&
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
  _$$ThemeModelLayerImplCopyWith<_$ThemeModelLayerImpl> get copyWith =>
      __$$ThemeModelLayerImplCopyWithImpl<_$ThemeModelLayerImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeModelLayerImplToJson(
      this,
    );
  }
}

abstract class _ThemeModelLayer implements ThemeModelLayer, ThemeLayer {
  const factory _ThemeModelLayer(
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
      final String? sourceLayer}) = _$ThemeModelLayerImpl;

  factory _ThemeModelLayer.fromJson(Map<String, dynamic> json) =
      _$ThemeModelLayerImpl.fromJson;

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
  @JsonKey(ignore: true)
  _$$ThemeModelLayerImplCopyWith<_$ThemeModelLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
