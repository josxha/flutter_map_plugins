// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'vector_source.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ThemeVectorSource _$ThemeVectorSourceFromJson(Map<String, dynamic> json) {
  return _ThemeVectorSource.fromJson(json);
}

/// @nodoc
mixin _$ThemeVectorSource {
  /// Contains an attribution to be displayed when the map is shown to a user.
  String? get attribution => throw _privateConstructorUsedError;

  /// An array containing the longitude and latitude of the southwest and
  /// northeast corners of the source's bounding box in the following order:
  /// [sw.lng, sw.lat, ne.lng, ne.lat].
  /// When this property is included in a source, no tiles outside of the
  /// given bounds are requested by Mapbox GL.
  List<double> get bounds => throw _privateConstructorUsedError;

  /// Maximum zoom level for which tiles are available, as in the TileJSON
  /// spec. Data from tiles at the maxzoom are used when displaying the map
  /// at higher zoom levels.
  int get maxZoom => throw _privateConstructorUsedError;

  /// Minimum zoom level for which tiles are available, as in the
  /// TileJSON spec.
  int get minZoom => throw _privateConstructorUsedError;

  /// A property to use as a feature id (for feature state). Either a
  /// property name, or an object of the form
  /// {<sourceLayer>: <propertyName>}. If specified as a string for a vector
  /// tile source, the same property is used across all its source layers.
  /// If specified as an object only specified source layers will have id
  /// overriden, others will fallback to original feature id
  dynamic get promoteId => throw _privateConstructorUsedError;

  /// Influences the y direction of the tile coordinates. The global-mercator
  /// (aka Spherical Mercator) profile is assumed.
  ThemeSourceScheme get scheme => throw _privateConstructorUsedError;

  /// An array of one or more tile source URLs, as in the TileJSON spec.
  List<String>? get tiles => throw _privateConstructorUsedError;

  /// A URL to a TileJSON resource. Supported protocols are
  /// http:, https:, and mapbox://<Tileset ID>.
  String? get url => throw _privateConstructorUsedError;

  /// A setting to determine whether a source's tiles are cached locally.
  bool get volatile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeVectorSourceCopyWith<ThemeVectorSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeVectorSourceCopyWith<$Res> {
  factory $ThemeVectorSourceCopyWith(
          ThemeVectorSource value, $Res Function(ThemeVectorSource) then) =
      _$ThemeVectorSourceCopyWithImpl<$Res, ThemeVectorSource>;
  @useResult
  $Res call(
      {String? attribution,
      List<double> bounds,
      int maxZoom,
      int minZoom,
      dynamic promoteId,
      ThemeSourceScheme scheme,
      List<String>? tiles,
      String? url,
      bool volatile});
}

/// @nodoc
class _$ThemeVectorSourceCopyWithImpl<$Res, $Val extends ThemeVectorSource>
    implements $ThemeVectorSourceCopyWith<$Res> {
  _$ThemeVectorSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attribution = freezed,
    Object? bounds = null,
    Object? maxZoom = null,
    Object? minZoom = null,
    Object? promoteId = freezed,
    Object? scheme = null,
    Object? tiles = freezed,
    Object? url = freezed,
    Object? volatile = null,
  }) {
    return _then(_value.copyWith(
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as List<double>,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int,
      promoteId: freezed == promoteId
          ? _value.promoteId
          : promoteId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as ThemeSourceScheme,
      tiles: freezed == tiles
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      volatile: null == volatile
          ? _value.volatile
          : volatile // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeVectorSourceImplCopyWith<$Res>
    implements $ThemeVectorSourceCopyWith<$Res> {
  factory _$$ThemeVectorSourceImplCopyWith(_$ThemeVectorSourceImpl value,
          $Res Function(_$ThemeVectorSourceImpl) then) =
      __$$ThemeVectorSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? attribution,
      List<double> bounds,
      int maxZoom,
      int minZoom,
      dynamic promoteId,
      ThemeSourceScheme scheme,
      List<String>? tiles,
      String? url,
      bool volatile});
}

/// @nodoc
class __$$ThemeVectorSourceImplCopyWithImpl<$Res>
    extends _$ThemeVectorSourceCopyWithImpl<$Res, _$ThemeVectorSourceImpl>
    implements _$$ThemeVectorSourceImplCopyWith<$Res> {
  __$$ThemeVectorSourceImplCopyWithImpl(_$ThemeVectorSourceImpl _value,
      $Res Function(_$ThemeVectorSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? attribution = freezed,
    Object? bounds = null,
    Object? maxZoom = null,
    Object? minZoom = null,
    Object? promoteId = freezed,
    Object? scheme = null,
    Object? tiles = freezed,
    Object? url = freezed,
    Object? volatile = null,
  }) {
    return _then(_$ThemeVectorSourceImpl(
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds: null == bounds
          ? _value._bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as List<double>,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int,
      promoteId: freezed == promoteId
          ? _value.promoteId
          : promoteId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scheme: null == scheme
          ? _value.scheme
          : scheme // ignore: cast_nullable_to_non_nullable
              as ThemeSourceScheme,
      tiles: freezed == tiles
          ? _value._tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      volatile: null == volatile
          ? _value.volatile
          : volatile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeVectorSourceImpl implements _ThemeVectorSource {
  const _$ThemeVectorSourceImpl(
      {this.attribution,
      final List<double> bounds = const [-180, -85.051129, 180, 85.051129],
      this.maxZoom = 22,
      this.minZoom = 0,
      this.promoteId,
      this.scheme = ThemeSourceScheme.xyz,
      final List<String>? tiles,
      this.url,
      this.volatile = false})
      : _bounds = bounds,
        _tiles = tiles;

  factory _$ThemeVectorSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeVectorSourceImplFromJson(json);

  /// Contains an attribution to be displayed when the map is shown to a user.
  @override
  final String? attribution;

  /// An array containing the longitude and latitude of the southwest and
  /// northeast corners of the source's bounding box in the following order:
  /// [sw.lng, sw.lat, ne.lng, ne.lat].
  /// When this property is included in a source, no tiles outside of the
  /// given bounds are requested by Mapbox GL.
  final List<double> _bounds;

  /// An array containing the longitude and latitude of the southwest and
  /// northeast corners of the source's bounding box in the following order:
  /// [sw.lng, sw.lat, ne.lng, ne.lat].
  /// When this property is included in a source, no tiles outside of the
  /// given bounds are requested by Mapbox GL.
  @override
  @JsonKey()
  List<double> get bounds {
    if (_bounds is EqualUnmodifiableListView) return _bounds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_bounds);
  }

  /// Maximum zoom level for which tiles are available, as in the TileJSON
  /// spec. Data from tiles at the maxzoom are used when displaying the map
  /// at higher zoom levels.
  @override
  @JsonKey()
  final int maxZoom;

  /// Minimum zoom level for which tiles are available, as in the
  /// TileJSON spec.
  @override
  @JsonKey()
  final int minZoom;

  /// A property to use as a feature id (for feature state). Either a
  /// property name, or an object of the form
  /// {<sourceLayer>: <propertyName>}. If specified as a string for a vector
  /// tile source, the same property is used across all its source layers.
  /// If specified as an object only specified source layers will have id
  /// overriden, others will fallback to original feature id
  @override
  final dynamic promoteId;

  /// Influences the y direction of the tile coordinates. The global-mercator
  /// (aka Spherical Mercator) profile is assumed.
  @override
  @JsonKey()
  final ThemeSourceScheme scheme;

  /// An array of one or more tile source URLs, as in the TileJSON spec.
  final List<String>? _tiles;

  /// An array of one or more tile source URLs, as in the TileJSON spec.
  @override
  List<String>? get tiles {
    final value = _tiles;
    if (value == null) return null;
    if (_tiles is EqualUnmodifiableListView) return _tiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// A URL to a TileJSON resource. Supported protocols are
  /// http:, https:, and mapbox://<Tileset ID>.
  @override
  final String? url;

  /// A setting to determine whether a source's tiles are cached locally.
  @override
  @JsonKey()
  final bool volatile;

  @override
  String toString() {
    return 'ThemeVectorSource(attribution: $attribution, bounds: $bounds, maxZoom: $maxZoom, minZoom: $minZoom, promoteId: $promoteId, scheme: $scheme, tiles: $tiles, url: $url, volatile: $volatile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeVectorSourceImpl &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution) &&
            const DeepCollectionEquality().equals(other._bounds, _bounds) &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom) &&
            (identical(other.minZoom, minZoom) || other.minZoom == minZoom) &&
            const DeepCollectionEquality().equals(other.promoteId, promoteId) &&
            (identical(other.scheme, scheme) || other.scheme == scheme) &&
            const DeepCollectionEquality().equals(other._tiles, _tiles) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.volatile, volatile) ||
                other.volatile == volatile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      attribution,
      const DeepCollectionEquality().hash(_bounds),
      maxZoom,
      minZoom,
      const DeepCollectionEquality().hash(promoteId),
      scheme,
      const DeepCollectionEquality().hash(_tiles),
      url,
      volatile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeVectorSourceImplCopyWith<_$ThemeVectorSourceImpl> get copyWith =>
      __$$ThemeVectorSourceImplCopyWithImpl<_$ThemeVectorSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeVectorSourceImplToJson(
      this,
    );
  }
}

abstract class _ThemeVectorSource implements ThemeVectorSource {
  const factory _ThemeVectorSource(
      {final String? attribution,
      final List<double> bounds,
      final int maxZoom,
      final int minZoom,
      final dynamic promoteId,
      final ThemeSourceScheme scheme,
      final List<String>? tiles,
      final String? url,
      final bool volatile}) = _$ThemeVectorSourceImpl;

  factory _ThemeVectorSource.fromJson(Map<String, dynamic> json) =
      _$ThemeVectorSourceImpl.fromJson;

  @override

  /// Contains an attribution to be displayed when the map is shown to a user.
  String? get attribution;
  @override

  /// An array containing the longitude and latitude of the southwest and
  /// northeast corners of the source's bounding box in the following order:
  /// [sw.lng, sw.lat, ne.lng, ne.lat].
  /// When this property is included in a source, no tiles outside of the
  /// given bounds are requested by Mapbox GL.
  List<double> get bounds;
  @override

  /// Maximum zoom level for which tiles are available, as in the TileJSON
  /// spec. Data from tiles at the maxzoom are used when displaying the map
  /// at higher zoom levels.
  int get maxZoom;
  @override

  /// Minimum zoom level for which tiles are available, as in the
  /// TileJSON spec.
  int get minZoom;
  @override

  /// A property to use as a feature id (for feature state). Either a
  /// property name, or an object of the form
  /// {<sourceLayer>: <propertyName>}. If specified as a string for a vector
  /// tile source, the same property is used across all its source layers.
  /// If specified as an object only specified source layers will have id
  /// overriden, others will fallback to original feature id
  dynamic get promoteId;
  @override

  /// Influences the y direction of the tile coordinates. The global-mercator
  /// (aka Spherical Mercator) profile is assumed.
  ThemeSourceScheme get scheme;
  @override

  /// An array of one or more tile source URLs, as in the TileJSON spec.
  List<String>? get tiles;
  @override

  /// A URL to a TileJSON resource. Supported protocols are
  /// http:, https:, and mapbox://<Tileset ID>.
  String? get url;
  @override

  /// A setting to determine whether a source's tiles are cached locally.
  bool get volatile;
  @override
  @JsonKey(ignore: true)
  _$$ThemeVectorSourceImplCopyWith<_$ThemeVectorSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
