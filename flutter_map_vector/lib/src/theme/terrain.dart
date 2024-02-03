import 'package:freezed_annotation/freezed_annotation.dart';

part 'terrain.freezed.dart';
part 'terrain.g.dart';

/// A style's terrain property is a global modifier that elevates layers and
/// markers based on a DEM data source.
///
/// https://docs.mapbox.com/style-spec/reference/terrain/
@Freezed()
class ThemeTerrain with _$ThemeTerrain {
  const factory ThemeTerrain({
    /// Name of a source of raster_dem type to be used for terrain elevation.
    required String source,
    /// Exaggerates the elevation of the terrain by multiplying the data from
    /// the DEM with this value.
    double? exaggeration,
  }) = _ThemeTerrain;

  factory ThemeTerrain.fromJson(Map<String, Object?> json) =>
      _$ThemeTerrainFromJson(json);
}
