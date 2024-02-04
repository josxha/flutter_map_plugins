// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raster_dem.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeRasterDemSource _$ThemeRasterDemSourceFromJson(Map<String, dynamic> json) {
  return _ThemeRasterDemSource.fromJson(json);
}

/// @nodoc
mixin _$ThemeRasterDemSource {
  ThemeSourceType get type => throw _privateConstructorUsedError;

  /// Contains an attribution to be displayed when the map is shown to a user.
  String? get attribution => throw _privateConstructorUsedError;

  /// An array containing the longitude and latitude of the southwest and
  /// northeast corners of the source's bounding box in the following order:
  /// [sw.lng, sw.lat, ne.lng, ne.lat].
  /// When this property is included in a source, no tiles outside of the
  /// given bounds are requested by Mapbox GL.
  List<double> get bounds => throw _privateConstructorUsedError;

  /// The encoding used by this source. Mapbox Terrain RGB is used by default
  RasterDemEncoding get encoding => throw _privateConstructorUsedError;

  /// Maximum zoom level for which tiles are available, as in the TileJSON
  /// spec. Data from tiles at the maxzoom are used when displaying the map
  /// at higher zoom levels.
  int get maxZoom => throw _privateConstructorUsedError;

  /// Minimum zoom level for which tiles are available, as in the
  /// TileJSON spec.
  int get minZoom => throw _privateConstructorUsedError;

  /// An array of one or more tile source URLs, as in the TileJSON spec.
  List<String>? get tiles => throw _privateConstructorUsedError;

  /// The minimum visual size to display tiles for this layer.
  /// Only configurable for raster layers.
  double get tileSize => throw _privateConstructorUsedError;

  /// A URL to a TileJSON resource. Supported protocols are
  /// http:, https:, and mapbox://<Tileset ID>.
  String? get url => throw _privateConstructorUsedError;

  /// A setting to determine whether a source's tiles are cached locally.
  bool get volatile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeRasterDemSourceCopyWith<ThemeRasterDemSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeRasterDemSourceCopyWith<$Res> {
  factory $ThemeRasterDemSourceCopyWith(ThemeRasterDemSource value,
          $Res Function(ThemeRasterDemSource) then) =
      _$ThemeRasterDemSourceCopyWithImpl<$Res, ThemeRasterDemSource>;
  @useResult
  $Res call(
      {ThemeSourceType type,
      String? attribution,
      List<double> bounds,
      RasterDemEncoding encoding,
      int maxZoom,
      int minZoom,
      List<String>? tiles,
      double tileSize,
      String? url,
      bool volatile});
}

/// @nodoc
class _$ThemeRasterDemSourceCopyWithImpl<$Res,
        $Val extends ThemeRasterDemSource>
    implements $ThemeRasterDemSourceCopyWith<$Res> {
  _$ThemeRasterDemSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? attribution = freezed,
    Object? bounds = null,
    Object? encoding = null,
    Object? maxZoom = null,
    Object? minZoom = null,
    Object? tiles = freezed,
    Object? tileSize = null,
    Object? url = freezed,
    Object? volatile = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeSourceType,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds: null == bounds
          ? _value.bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as List<double>,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as RasterDemEncoding,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int,
      tiles: freezed == tiles
          ? _value.tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tileSize: null == tileSize
          ? _value.tileSize
          : tileSize // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$ThemeRasterDemSourceImplCopyWith<$Res>
    implements $ThemeRasterDemSourceCopyWith<$Res> {
  factory _$$ThemeRasterDemSourceImplCopyWith(_$ThemeRasterDemSourceImpl value,
          $Res Function(_$ThemeRasterDemSourceImpl) then) =
      __$$ThemeRasterDemSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeSourceType type,
      String? attribution,
      List<double> bounds,
      RasterDemEncoding encoding,
      int maxZoom,
      int minZoom,
      List<String>? tiles,
      double tileSize,
      String? url,
      bool volatile});
}

/// @nodoc
class __$$ThemeRasterDemSourceImplCopyWithImpl<$Res>
    extends _$ThemeRasterDemSourceCopyWithImpl<$Res, _$ThemeRasterDemSourceImpl>
    implements _$$ThemeRasterDemSourceImplCopyWith<$Res> {
  __$$ThemeRasterDemSourceImplCopyWithImpl(_$ThemeRasterDemSourceImpl _value,
      $Res Function(_$ThemeRasterDemSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? attribution = freezed,
    Object? bounds = null,
    Object? encoding = null,
    Object? maxZoom = null,
    Object? minZoom = null,
    Object? tiles = freezed,
    Object? tileSize = null,
    Object? url = freezed,
    Object? volatile = null,
  }) {
    return _then(_$ThemeRasterDemSourceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeSourceType,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
      bounds: null == bounds
          ? _value._bounds
          : bounds // ignore: cast_nullable_to_non_nullable
              as List<double>,
      encoding: null == encoding
          ? _value.encoding
          : encoding // ignore: cast_nullable_to_non_nullable
              as RasterDemEncoding,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
      minZoom: null == minZoom
          ? _value.minZoom
          : minZoom // ignore: cast_nullable_to_non_nullable
              as int,
      tiles: freezed == tiles
          ? _value._tiles
          : tiles // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      tileSize: null == tileSize
          ? _value.tileSize
          : tileSize // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$ThemeRasterDemSourceImpl implements _ThemeRasterDemSource {
  const _$ThemeRasterDemSourceImpl(
      {required this.type,
      this.attribution,
      final List<double> bounds = const [-180, -85.051129, 180, 85.051129],
      this.encoding = RasterDemEncoding.mapbox,
      this.maxZoom = 22,
      this.minZoom = 0,
      final List<String>? tiles,
      this.tileSize = 512,
      this.url,
      this.volatile = false})
      : _bounds = bounds,
        _tiles = tiles;

  factory _$ThemeRasterDemSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeRasterDemSourceImplFromJson(json);

  @override
  final ThemeSourceType type;

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

  /// The encoding used by this source. Mapbox Terrain RGB is used by default
  @override
  @JsonKey()
  final RasterDemEncoding encoding;

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

  /// The minimum visual size to display tiles for this layer.
  /// Only configurable for raster layers.
  @override
  @JsonKey()
  final double tileSize;

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
    return 'ThemeRasterDemSource(type: $type, attribution: $attribution, bounds: $bounds, encoding: $encoding, maxZoom: $maxZoom, minZoom: $minZoom, tiles: $tiles, tileSize: $tileSize, url: $url, volatile: $volatile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeRasterDemSourceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution) &&
            const DeepCollectionEquality().equals(other._bounds, _bounds) &&
            (identical(other.encoding, encoding) ||
                other.encoding == encoding) &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom) &&
            (identical(other.minZoom, minZoom) || other.minZoom == minZoom) &&
            const DeepCollectionEquality().equals(other._tiles, _tiles) &&
            (identical(other.tileSize, tileSize) ||
                other.tileSize == tileSize) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.volatile, volatile) ||
                other.volatile == volatile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      attribution,
      const DeepCollectionEquality().hash(_bounds),
      encoding,
      maxZoom,
      minZoom,
      const DeepCollectionEquality().hash(_tiles),
      tileSize,
      url,
      volatile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeRasterDemSourceImplCopyWith<_$ThemeRasterDemSourceImpl>
      get copyWith =>
          __$$ThemeRasterDemSourceImplCopyWithImpl<_$ThemeRasterDemSourceImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeRasterDemSourceImplToJson(
      this,
    );
  }
}

abstract class _ThemeRasterDemSource
    implements ThemeRasterDemSource, ThemeSource {
  const factory _ThemeRasterDemSource(
      {required final ThemeSourceType type,
      final String? attribution,
      final List<double> bounds,
      final RasterDemEncoding encoding,
      final int maxZoom,
      final int minZoom,
      final List<String>? tiles,
      final double tileSize,
      final String? url,
      final bool volatile}) = _$ThemeRasterDemSourceImpl;

  factory _ThemeRasterDemSource.fromJson(Map<String, dynamic> json) =
      _$ThemeRasterDemSourceImpl.fromJson;

  @override
  ThemeSourceType get type;
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

  /// The encoding used by this source. Mapbox Terrain RGB is used by default
  RasterDemEncoding get encoding;
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

  /// An array of one or more tile source URLs, as in the TileJSON spec.
  List<String>? get tiles;
  @override

  /// The minimum visual size to display tiles for this layer.
  /// Only configurable for raster layers.
  double get tileSize;
  @override

  /// A URL to a TileJSON resource. Supported protocols are
  /// http:, https:, and mapbox://<Tileset ID>.
  String? get url;
  @override

  /// A setting to determine whether a source's tiles are cached locally.
  bool get volatile;
  @override
  @JsonKey(ignore: true)
  _$$ThemeRasterDemSourceImplCopyWith<_$ThemeRasterDemSourceImpl>
      get copyWith => throw _privateConstructorUsedError;
}
