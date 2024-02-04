import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'raster.freezed.dart';
part 'raster.g.dart';

/// A raster tile source. For raster tiles hosted by Mapbox, the "url" value
/// should be of the form mapbox://tilesetid.
///
/// https://docs.mapbox.com/style-spec/reference/sources/#raster
@Freezed()
class ThemeRasterSource with _$ThemeRasterSource implements ThemeSource {
  @Implements<ThemeSource>()
  const factory ThemeRasterSource({
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

    /// Influences the y direction of the tile coordinates. The global-mercator
    /// (aka Spherical Mercator) profile is assumed.
    @Default(ThemeSourceScheme.xyz) ThemeSourceScheme scheme,

    /// An array of one or more tile source URLs, as in the TileJSON spec.
    List<String>? tiles,

    /// The minimum visual size to display tiles for this layer.
    /// Only configurable for raster layers.
    @Default(512) double tileSize,

    /// A URL to a TileJSON resource. Supported protocols are
    /// http:, https:, and mapbox://<Tileset ID>.
    String? url,

    /// A setting to determine whether a source's tiles are cached locally.
    @Default(false) bool volatile,
  }) = _ThemeRasterSource;

  factory ThemeRasterSource.fromJson(Map<String, Object?> json) =>
      _$ThemeRasterSourceFromJson(json);
}
