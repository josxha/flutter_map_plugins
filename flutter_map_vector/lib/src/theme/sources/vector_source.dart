import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'vector_source.freezed.dart';
part 'vector_source.g.dart';

/// A vector tile source. Tiles must be in Mapbox Vector Tile format. All
/// geometric coordinates in vector tiles must be between -1 * extent and
/// (extent * 2) - 1 inclusive. All layers that use a vector source must
/// specify a "source-layer" value. For vector tiles hosted by Mapbox, the
/// "url" value should be of the form mapbox://tilesetid.
///
/// https://docs.mapbox.com/style-spec/reference/sources/#vector
@Freezed()
class ThemeVectorSource with _$ThemeVectorSource implements ThemeSource {
  @Implements<ThemeSource>()
  const factory ThemeVectorSource({
    required ThemeSourceType type,

    /// Contains an attribution to be displayed when the map is shown to a user.
    String? attribution,

    /// An array containing the longitude and latitude of the southwest and
    /// northeast corners of the source's bounding box in the following order:
    /// [sw.lng, sw.lat, ne.lng, ne.lat].
    /// When this property is included in a source, no tiles outside of the
    /// given bounds are requested by Mapbox GL.
    @Default([-180, -85.051129, 180, 85.051129]) List<double> bounds,

    /// Maximum zoom level for which tiles are available, as in the TileJSON
    /// spec. Data from tiles at the maxzoom are used when displaying the map
    /// at higher zoom levels.
    @Default(22) int maxZoom,

    /// Minimum zoom level for which tiles are available, as in the
    /// TileJSON spec.
    @Default(0) int minZoom,

    /// A property to use as a feature id (for feature state). Either a
    /// property name, or an object of the form
    /// {<sourceLayer>: <propertyName>}. If specified as a string for a vector
    /// tile source, the same property is used across all its source layers.
    /// If specified as an object only specified source layers will have id
    /// overriden, others will fallback to original feature id
    dynamic promoteId,

    /// Influences the y direction of the tile coordinates. The global-mercator
    /// (aka Spherical Mercator) profile is assumed.
    @Default(ThemeSourceScheme.xyz) ThemeSourceScheme scheme,

    /// An array of one or more tile source URLs, as in the TileJSON spec.
    List<String>? tiles,

    /// A URL to a TileJSON resource. Supported protocols are
    /// http:, https:, and mapbox://<Tileset ID>.
    String? url,

    /// A setting to determine whether a source's tiles are cached locally.
    @Default(false) bool volatile,
  }) = _ThemeVectorSource;

  factory ThemeVectorSource.fromJson(Map<String, Object?> json) =>
      _$ThemeVectorSourceFromJson(json);
}
