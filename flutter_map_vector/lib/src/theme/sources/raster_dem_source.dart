import 'package:freezed_annotation/freezed_annotation.dart';

part 'raster_dem_source.freezed.dart';
part 'raster_dem_source.g.dart';

/// A raster DEM source. Only supports Mapbox Terrain-DEM
/// (mapbox://mapbox.mapbox-terrain-dem-v1):
///
/// https://docs.mapbox.com/style-spec/reference/sources/#raster-dem
@Freezed()
class ThemeRasterDemSource with _$ThemeRasterDemSource {
  const factory ThemeRasterDemSource({
    /// Contains an attribution to be displayed when the map is shown to a user.
    String? attribution,

    /// An array containing the longitude and latitude of the southwest and
    /// northeast corners of the source's bounding box in the following order:
    /// [sw.lng, sw.lat, ne.lng, ne.lat].
    /// When this property is included in a source, no tiles outside of the
    /// given bounds are requested by Mapbox GL.
    @Default([-180, -85.051129, 180, 85.051129]) List<double> bounds,

    /// The encoding used by this source. Mapbox Terrain RGB is used by default
    @Default(RasterDemEncoding.mapbox) RasterDemEncoding encoding,

    /// Maximum zoom level for which tiles are available, as in the TileJSON
    /// spec. Data from tiles at the maxzoom are used when displaying the map
    /// at higher zoom levels.
    @Default(22) int maxZoom,

    /// Minimum zoom level for which tiles are available, as in the
    /// TileJSON spec.
    @Default(0) int minZoom,

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
  }) = _ThemeRasterDemSource;

  factory ThemeRasterDemSource.fromJson(Map<String, Object?> json) =>
      _$ThemeRasterDemSourceFromJson(json);
}

/// The encoding used by this source.
@JsonEnum()
enum RasterDemEncoding {
  /// Terrarium format PNG tiles. See https://aws.amazon.com/es/public-datasets/terrain/ for more info.
  terrarium,

  /// Mapbox Terrain RGB tiles. See https://www.mapbox.com/help/access-elevation-data/#mapbox-terrain-rgb for more info.
  mapbox;
}
