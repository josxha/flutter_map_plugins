// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'import.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeImport _$ThemeImportFromJson(Map<String, dynamic> json) {
  return _ThemeImports.fromJson(json);
}

/// @nodoc
mixin _$ThemeImport {
  /// Unique import name.
  String get id => throw _privateConstructorUsedError;

  /// The URL of the style.
  String get url => throw _privateConstructorUsedError;

  /// Configuration values for the imported style's options.
  Map<String, Object?>? get config => throw _privateConstructorUsedError;

  /// The inlined style that must correspond to the contents of the
  /// specified URL.
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeImportCopyWith<ThemeImport> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeImportCopyWith<$Res> {
  factory $ThemeImportCopyWith(
          ThemeImport value, $Res Function(ThemeImport) then) =
      _$ThemeImportCopyWithImpl<$Res, ThemeImport>;
  @useResult
  $Res call(
      {String id, String url, Map<String, Object?>? config, dynamic data});
}

/// @nodoc
class _$ThemeImportCopyWithImpl<$Res, $Val extends ThemeImport>
    implements $ThemeImportCopyWith<$Res> {
  _$ThemeImportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? config = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      config: freezed == config
          ? _value.config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeImportsImplCopyWith<$Res>
    implements $ThemeImportCopyWith<$Res> {
  factory _$$ThemeImportsImplCopyWith(
          _$ThemeImportsImpl value, $Res Function(_$ThemeImportsImpl) then) =
      __$$ThemeImportsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id, String url, Map<String, Object?>? config, dynamic data});
}

/// @nodoc
class __$$ThemeImportsImplCopyWithImpl<$Res>
    extends _$ThemeImportCopyWithImpl<$Res, _$ThemeImportsImpl>
    implements _$$ThemeImportsImplCopyWith<$Res> {
  __$$ThemeImportsImplCopyWithImpl(
      _$ThemeImportsImpl _value, $Res Function(_$ThemeImportsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? url = null,
    Object? config = freezed,
    Object? data = freezed,
  }) {
    return _then(_$ThemeImportsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      config: freezed == config
          ? _value._config
          : config // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeImportsImpl implements _ThemeImports {
  const _$ThemeImportsImpl(
      {required this.id,
      required this.url,
      final Map<String, Object?>? config,
      this.data})
      : _config = config;

  factory _$ThemeImportsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeImportsImplFromJson(json);

  /// Unique import name.
  @override
  final String id;

  /// The URL of the style.
  @override
  final String url;

  /// Configuration values for the imported style's options.
  final Map<String, Object?>? _config;

  /// Configuration values for the imported style's options.
  @override
  Map<String, Object?>? get config {
    final value = _config;
    if (value == null) return null;
    if (_config is EqualUnmodifiableMapView) return _config;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// The inlined style that must correspond to the contents of the
  /// specified URL.
  @override
  final dynamic data;

  @override
  String toString() {
    return 'ThemeImport(id: $id, url: $url, config: $config, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeImportsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.url, url) || other.url == url) &&
            const DeepCollectionEquality().equals(other._config, _config) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      url,
      const DeepCollectionEquality().hash(_config),
      const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeImportsImplCopyWith<_$ThemeImportsImpl> get copyWith =>
      __$$ThemeImportsImplCopyWithImpl<_$ThemeImportsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeImportsImplToJson(
      this,
    );
  }
}

abstract class _ThemeImports implements ThemeImport {
  const factory _ThemeImports(
      {required final String id,
      required final String url,
      final Map<String, Object?>? config,
      final dynamic data}) = _$ThemeImportsImpl;

  factory _ThemeImports.fromJson(Map<String, dynamic> json) =
      _$ThemeImportsImpl.fromJson;

  @override

  /// Unique import name.
  String get id;
  @override

  /// The URL of the style.
  String get url;
  @override

  /// Configuration values for the imported style's options.
  Map<String, Object?>? get config;
  @override

  /// The inlined style that must correspond to the contents of the
  /// specified URL.
  dynamic get data;
  @override
  @JsonKey(ignore: true)
  _$$ThemeImportsImplCopyWith<_$ThemeImportsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
