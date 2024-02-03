// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'layer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeLayer _$ThemeLayerFromJson(Map<String, dynamic> json) {
  return _ThemeLayer.fromJson(json);
}

/// @nodoc
mixin _$ThemeLayer {
  String get id => throw _privateConstructorUsedError;
  String get source => throw _privateConstructorUsedError;
  @JsonKey(name: 'source-layer')
  String get sourceLayer => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'fill-color')
  Map<String, Object?> get fillColor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeLayerCopyWith<ThemeLayer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeLayerCopyWith<$Res> {
  factory $ThemeLayerCopyWith(
          ThemeLayer value, $Res Function(ThemeLayer) then) =
      _$ThemeLayerCopyWithImpl<$Res, ThemeLayer>;
  @useResult
  $Res call(
      {String id,
      String source,
      @JsonKey(name: 'source-layer') String sourceLayer,
      String type,
      @JsonKey(name: 'fill-color') Map<String, Object?> fillColor});
}

/// @nodoc
class _$ThemeLayerCopyWithImpl<$Res, $Val extends ThemeLayer>
    implements $ThemeLayerCopyWith<$Res> {
  _$ThemeLayerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? source = null,
    Object? sourceLayer = null,
    Object? type = null,
    Object? fillColor = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceLayer: null == sourceLayer
          ? _value.sourceLayer
          : sourceLayer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fillColor: null == fillColor
          ? _value.fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeLayerImplCopyWith<$Res>
    implements $ThemeLayerCopyWith<$Res> {
  factory _$$ThemeLayerImplCopyWith(
          _$ThemeLayerImpl value, $Res Function(_$ThemeLayerImpl) then) =
      __$$ThemeLayerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String source,
      @JsonKey(name: 'source-layer') String sourceLayer,
      String type,
      @JsonKey(name: 'fill-color') Map<String, Object?> fillColor});
}

/// @nodoc
class __$$ThemeLayerImplCopyWithImpl<$Res>
    extends _$ThemeLayerCopyWithImpl<$Res, _$ThemeLayerImpl>
    implements _$$ThemeLayerImplCopyWith<$Res> {
  __$$ThemeLayerImplCopyWithImpl(
      _$ThemeLayerImpl _value, $Res Function(_$ThemeLayerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? source = null,
    Object? sourceLayer = null,
    Object? type = null,
    Object? fillColor = null,
  }) {
    return _then(_$ThemeLayerImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      source: null == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as String,
      sourceLayer: null == sourceLayer
          ? _value.sourceLayer
          : sourceLayer // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      fillColor: null == fillColor
          ? _value._fillColor
          : fillColor // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeLayerImpl implements _ThemeLayer {
  const _$ThemeLayerImpl(
      {required this.id,
      required this.source,
      @JsonKey(name: 'source-layer') required this.sourceLayer,
      required this.type,
      @JsonKey(name: 'fill-color')
      required final Map<String, Object?> fillColor})
      : _fillColor = fillColor;

  factory _$ThemeLayerImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeLayerImplFromJson(json);

  @override
  final String id;
  @override
  final String source;
  @override
  @JsonKey(name: 'source-layer')
  final String sourceLayer;
  @override
  final String type;
  final Map<String, Object?> _fillColor;
  @override
  @JsonKey(name: 'fill-color')
  Map<String, Object?> get fillColor {
    if (_fillColor is EqualUnmodifiableMapView) return _fillColor;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_fillColor);
  }

  @override
  String toString() {
    return 'ThemeLayer(id: $id, source: $source, sourceLayer: $sourceLayer, type: $type, fillColor: $fillColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeLayerImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.sourceLayer, sourceLayer) ||
                other.sourceLayer == sourceLayer) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._fillColor, _fillColor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, source, sourceLayer, type,
      const DeepCollectionEquality().hash(_fillColor));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeLayerImplCopyWith<_$ThemeLayerImpl> get copyWith =>
      __$$ThemeLayerImplCopyWithImpl<_$ThemeLayerImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeLayerImplToJson(
      this,
    );
  }
}

abstract class _ThemeLayer implements ThemeLayer {
  const factory _ThemeLayer(
      {required final String id,
      required final String source,
      @JsonKey(name: 'source-layer') required final String sourceLayer,
      required final String type,
      @JsonKey(name: 'fill-color')
      required final Map<String, Object?> fillColor}) = _$ThemeLayerImpl;

  factory _ThemeLayer.fromJson(Map<String, dynamic> json) =
      _$ThemeLayerImpl.fromJson;

  @override
  String get id;
  @override
  String get source;
  @override
  @JsonKey(name: 'source-layer')
  String get sourceLayer;
  @override
  String get type;
  @override
  @JsonKey(name: 'fill-color')
  Map<String, Object?> get fillColor;
  @override
  @JsonKey(ignore: true)
  _$$ThemeLayerImplCopyWith<_$ThemeLayerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
