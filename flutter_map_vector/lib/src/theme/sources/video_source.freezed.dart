// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeVideoSource _$ThemeVideoSourceFromJson(Map<String, dynamic> json) {
  return _ThemeVideoSource.fromJson(json);
}

/// @nodoc
mixin _$ThemeVideoSource {
  /// Corners of image specified in longitude, latitude pairs. Note: When
  /// using globe projection, the image will be centered at the North or
  /// South Pole in the respective hemisphere if the average latitude value
  /// exceeds 85 degrees or falls below -85 degrees.
  ///
  /// The "coordinates" array contains [longitude, latitude] pairs for the
  /// image corners listed in clockwise order:
  /// top left, top right, bottom right, bottom left.
  @Assert('coordinates.length == 4',
      'The coordinates array needs to have exactly 4 items.')
  List<List<double>> get coordinates => throw _privateConstructorUsedError;

  /// URL that points to an image. If the URL is not specified, the image is
  /// expected to be loaded directly during runtime.
  String? get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeVideoSourceCopyWith<ThemeVideoSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeVideoSourceCopyWith<$Res> {
  factory $ThemeVideoSourceCopyWith(
          ThemeVideoSource value, $Res Function(ThemeVideoSource) then) =
      _$ThemeVideoSourceCopyWithImpl<$Res, ThemeVideoSource>;
  @useResult
  $Res call(
      {@Assert('coordinates.length == 4',
          'The coordinates array needs to have exactly 4 items.')
      List<List<double>> coordinates,
      String? url});
}

/// @nodoc
class _$ThemeVideoSourceCopyWithImpl<$Res, $Val extends ThemeVideoSource>
    implements $ThemeVideoSourceCopyWith<$Res> {
  _$ThemeVideoSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      coordinates: null == coordinates
          ? _value.coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeVideoSourceImplCopyWith<$Res>
    implements $ThemeVideoSourceCopyWith<$Res> {
  factory _$$ThemeVideoSourceImplCopyWith(_$ThemeVideoSourceImpl value,
          $Res Function(_$ThemeVideoSourceImpl) then) =
      __$$ThemeVideoSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@Assert('coordinates.length == 4',
          'The coordinates array needs to have exactly 4 items.')
      List<List<double>> coordinates,
      String? url});
}

/// @nodoc
class __$$ThemeVideoSourceImplCopyWithImpl<$Res>
    extends _$ThemeVideoSourceCopyWithImpl<$Res, _$ThemeVideoSourceImpl>
    implements _$$ThemeVideoSourceImplCopyWith<$Res> {
  __$$ThemeVideoSourceImplCopyWithImpl(_$ThemeVideoSourceImpl _value,
      $Res Function(_$ThemeVideoSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? coordinates = null,
    Object? url = freezed,
  }) {
    return _then(_$ThemeVideoSourceImpl(
      coordinates: null == coordinates
          ? _value._coordinates
          : coordinates // ignore: cast_nullable_to_non_nullable
              as List<List<double>>,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeVideoSourceImpl implements _ThemeVideoSource {
  const _$ThemeVideoSourceImpl(
      {@Assert('coordinates.length == 4',
          'The coordinates array needs to have exactly 4 items.')
      required final List<List<double>> coordinates,
      this.url})
      : _coordinates = coordinates;

  factory _$ThemeVideoSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeVideoSourceImplFromJson(json);

  /// Corners of image specified in longitude, latitude pairs. Note: When
  /// using globe projection, the image will be centered at the North or
  /// South Pole in the respective hemisphere if the average latitude value
  /// exceeds 85 degrees or falls below -85 degrees.
  ///
  /// The "coordinates" array contains [longitude, latitude] pairs for the
  /// image corners listed in clockwise order:
  /// top left, top right, bottom right, bottom left.
  final List<List<double>> _coordinates;

  /// Corners of image specified in longitude, latitude pairs. Note: When
  /// using globe projection, the image will be centered at the North or
  /// South Pole in the respective hemisphere if the average latitude value
  /// exceeds 85 degrees or falls below -85 degrees.
  ///
  /// The "coordinates" array contains [longitude, latitude] pairs for the
  /// image corners listed in clockwise order:
  /// top left, top right, bottom right, bottom left.
  @override
  @Assert('coordinates.length == 4',
      'The coordinates array needs to have exactly 4 items.')
  List<List<double>> get coordinates {
    if (_coordinates is EqualUnmodifiableListView) return _coordinates;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_coordinates);
  }

  /// URL that points to an image. If the URL is not specified, the image is
  /// expected to be loaded directly during runtime.
  @override
  final String? url;

  @override
  String toString() {
    return 'ThemeVideoSource(coordinates: $coordinates, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeVideoSourceImpl &&
            const DeepCollectionEquality()
                .equals(other._coordinates, _coordinates) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_coordinates), url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeVideoSourceImplCopyWith<_$ThemeVideoSourceImpl> get copyWith =>
      __$$ThemeVideoSourceImplCopyWithImpl<_$ThemeVideoSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeVideoSourceImplToJson(
      this,
    );
  }
}

abstract class _ThemeVideoSource implements ThemeVideoSource {
  const factory _ThemeVideoSource(
      {@Assert('coordinates.length == 4',
          'The coordinates array needs to have exactly 4 items.')
      required final List<List<double>> coordinates,
      final String? url}) = _$ThemeVideoSourceImpl;

  factory _ThemeVideoSource.fromJson(Map<String, dynamic> json) =
      _$ThemeVideoSourceImpl.fromJson;

  @override

  /// Corners of image specified in longitude, latitude pairs. Note: When
  /// using globe projection, the image will be centered at the North or
  /// South Pole in the respective hemisphere if the average latitude value
  /// exceeds 85 degrees or falls below -85 degrees.
  ///
  /// The "coordinates" array contains [longitude, latitude] pairs for the
  /// image corners listed in clockwise order:
  /// top left, top right, bottom right, bottom left.
  @Assert('coordinates.length == 4',
      'The coordinates array needs to have exactly 4 items.')
  List<List<double>> get coordinates;
  @override

  /// URL that points to an image. If the URL is not specified, the image is
  /// expected to be loaded directly during runtime.
  String? get url;
  @override
  @JsonKey(ignore: true)
  _$$ThemeVideoSourceImplCopyWith<_$ThemeVideoSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
