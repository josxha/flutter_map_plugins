// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeSource<T> _$ThemeSourceFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  switch (json['runtimeType']) {
    case 'vector':
      return _ThemeSourceVector<T>.fromJson(json, fromJsonT);
    case 'raster':
      return _ThemeSourceRaster<T>.fromJson(json, fromJsonT);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ThemeSource',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$ThemeSource<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) vector,
    required TResult Function(String message) raster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? vector,
    TResult? Function(String message)? raster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? vector,
    TResult Function(String message)? raster,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeSourceVector<T> value) vector,
    required TResult Function(_ThemeSourceRaster<T> value) raster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeSourceVector<T> value)? vector,
    TResult? Function(_ThemeSourceRaster<T> value)? raster,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeSourceVector<T> value)? vector,
    TResult Function(_ThemeSourceRaster<T> value)? raster,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeSourceCopyWith<T, $Res> {
  factory $ThemeSourceCopyWith(
          ThemeSource<T> value, $Res Function(ThemeSource<T>) then) =
      _$ThemeSourceCopyWithImpl<T, $Res, ThemeSource<T>>;
}

/// @nodoc
class _$ThemeSourceCopyWithImpl<T, $Res, $Val extends ThemeSource<T>>
    implements $ThemeSourceCopyWith<T, $Res> {
  _$ThemeSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ThemeSourceVectorImplCopyWith<T, $Res> {
  factory _$$ThemeSourceVectorImplCopyWith(_$ThemeSourceVectorImpl<T> value,
          $Res Function(_$ThemeSourceVectorImpl<T>) then) =
      __$$ThemeSourceVectorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$ThemeSourceVectorImplCopyWithImpl<T, $Res>
    extends _$ThemeSourceCopyWithImpl<T, $Res, _$ThemeSourceVectorImpl<T>>
    implements _$$ThemeSourceVectorImplCopyWith<T, $Res> {
  __$$ThemeSourceVectorImplCopyWithImpl(_$ThemeSourceVectorImpl<T> _value,
      $Res Function(_$ThemeSourceVectorImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$ThemeSourceVectorImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ThemeSourceVectorImpl<T> implements _ThemeSourceVector<T> {
  const _$ThemeSourceVectorImpl(this.data, {final String? $type})
      : $type = $type ?? 'vector';

  factory _$ThemeSourceVectorImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ThemeSourceVectorImplFromJson(json, fromJsonT);

  @override
  final T data;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeSource<$T>.vector(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeSourceVectorImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeSourceVectorImplCopyWith<T, _$ThemeSourceVectorImpl<T>>
      get copyWith =>
          __$$ThemeSourceVectorImplCopyWithImpl<T, _$ThemeSourceVectorImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) vector,
    required TResult Function(String message) raster,
  }) {
    return vector(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? vector,
    TResult? Function(String message)? raster,
  }) {
    return vector?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? vector,
    TResult Function(String message)? raster,
    required TResult orElse(),
  }) {
    if (vector != null) {
      return vector(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeSourceVector<T> value) vector,
    required TResult Function(_ThemeSourceRaster<T> value) raster,
  }) {
    return vector(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeSourceVector<T> value)? vector,
    TResult? Function(_ThemeSourceRaster<T> value)? raster,
  }) {
    return vector?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeSourceVector<T> value)? vector,
    TResult Function(_ThemeSourceRaster<T> value)? raster,
    required TResult orElse(),
  }) {
    if (vector != null) {
      return vector(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ThemeSourceVectorImplToJson<T>(this, toJsonT);
  }
}

abstract class _ThemeSourceVector<T> implements ThemeSource<T> {
  const factory _ThemeSourceVector(final T data) = _$ThemeSourceVectorImpl<T>;

  factory _ThemeSourceVector.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ThemeSourceVectorImpl<T>.fromJson;

  T get data;
  @JsonKey(ignore: true)
  _$$ThemeSourceVectorImplCopyWith<T, _$ThemeSourceVectorImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ThemeSourceRasterImplCopyWith<T, $Res> {
  factory _$$ThemeSourceRasterImplCopyWith(_$ThemeSourceRasterImpl<T> value,
          $Res Function(_$ThemeSourceRasterImpl<T>) then) =
      __$$ThemeSourceRasterImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ThemeSourceRasterImplCopyWithImpl<T, $Res>
    extends _$ThemeSourceCopyWithImpl<T, $Res, _$ThemeSourceRasterImpl<T>>
    implements _$$ThemeSourceRasterImplCopyWith<T, $Res> {
  __$$ThemeSourceRasterImplCopyWithImpl(_$ThemeSourceRasterImpl<T> _value,
      $Res Function(_$ThemeSourceRasterImpl<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ThemeSourceRasterImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ThemeSourceRasterImpl<T> implements _ThemeSourceRaster<T> {
  const _$ThemeSourceRasterImpl(this.message, {final String? $type})
      : $type = $type ?? 'raster';

  factory _$ThemeSourceRasterImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ThemeSourceRasterImplFromJson(json, fromJsonT);

  @override
  final String message;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ThemeSource<$T>.raster(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeSourceRasterImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeSourceRasterImplCopyWith<T, _$ThemeSourceRasterImpl<T>>
      get copyWith =>
          __$$ThemeSourceRasterImplCopyWithImpl<T, _$ThemeSourceRasterImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) vector,
    required TResult Function(String message) raster,
  }) {
    return raster(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? vector,
    TResult? Function(String message)? raster,
  }) {
    return raster?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? vector,
    TResult Function(String message)? raster,
    required TResult orElse(),
  }) {
    if (raster != null) {
      return raster(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ThemeSourceVector<T> value) vector,
    required TResult Function(_ThemeSourceRaster<T> value) raster,
  }) {
    return raster(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ThemeSourceVector<T> value)? vector,
    TResult? Function(_ThemeSourceRaster<T> value)? raster,
  }) {
    return raster?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ThemeSourceVector<T> value)? vector,
    TResult Function(_ThemeSourceRaster<T> value)? raster,
    required TResult orElse(),
  }) {
    if (raster != null) {
      return raster(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ThemeSourceRasterImplToJson<T>(this, toJsonT);
  }
}

abstract class _ThemeSourceRaster<T> implements ThemeSource<T> {
  const factory _ThemeSourceRaster(final String message) =
      _$ThemeSourceRasterImpl<T>;

  factory _ThemeSourceRaster.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ThemeSourceRasterImpl<T>.fromJson;

  String get message;
  @JsonKey(ignore: true)
  _$$ThemeSourceRasterImplCopyWith<T, _$ThemeSourceRasterImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
