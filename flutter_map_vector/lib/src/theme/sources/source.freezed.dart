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

ThemeSource _$ThemeSourceFromJson(Map<String, dynamic> json) {
  return _ThemeSource.fromJson(json);
}

/// @nodoc
mixin _$ThemeSource {
  ThemeSourceType get type => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeSourceCopyWith<ThemeSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeSourceCopyWith<$Res> {
  factory $ThemeSourceCopyWith(
          ThemeSource value, $Res Function(ThemeSource) then) =
      _$ThemeSourceCopyWithImpl<$Res, ThemeSource>;
  @useResult
  $Res call({ThemeSourceType type});
}

/// @nodoc
class _$ThemeSourceCopyWithImpl<$Res, $Val extends ThemeSource>
    implements $ThemeSourceCopyWith<$Res> {
  _$ThemeSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeSourceType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeSourceImplCopyWith<$Res>
    implements $ThemeSourceCopyWith<$Res> {
  factory _$$ThemeSourceImplCopyWith(
          _$ThemeSourceImpl value, $Res Function(_$ThemeSourceImpl) then) =
      __$$ThemeSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ThemeSourceType type});
}

/// @nodoc
class __$$ThemeSourceImplCopyWithImpl<$Res>
    extends _$ThemeSourceCopyWithImpl<$Res, _$ThemeSourceImpl>
    implements _$$ThemeSourceImplCopyWith<$Res> {
  __$$ThemeSourceImplCopyWithImpl(
      _$ThemeSourceImpl _value, $Res Function(_$ThemeSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
  }) {
    return _then(_$ThemeSourceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeSourceType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeSourceImpl implements _ThemeSource {
  const _$ThemeSourceImpl({required this.type});

  factory _$ThemeSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeSourceImplFromJson(json);

  @override
  final ThemeSourceType type;

  @override
  String toString() {
    return 'ThemeSource(type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeSourceImpl &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeSourceImplCopyWith<_$ThemeSourceImpl> get copyWith =>
      __$$ThemeSourceImplCopyWithImpl<_$ThemeSourceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeSourceImplToJson(
      this,
    );
  }
}

abstract class _ThemeSource implements ThemeSource {
  const factory _ThemeSource({required final ThemeSourceType type}) =
      _$ThemeSourceImpl;

  factory _ThemeSource.fromJson(Map<String, dynamic> json) =
      _$ThemeSourceImpl.fromJson;

  @override
  ThemeSourceType get type;
  @override
  @JsonKey(ignore: true)
  _$$ThemeSourceImplCopyWith<_$ThemeSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}