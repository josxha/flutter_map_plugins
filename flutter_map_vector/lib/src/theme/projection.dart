import 'package:freezed_annotation/freezed_annotation.dart';

part 'projection.freezed.dart';
part 'projection.g.dart';

/// A style's projection property sets which projection a map is rendered in.
/// Mapbox GL supports the following projections:
///
/// - Globe: A 3D representation of the Earth.
///     - globe
/// - Equal-area projections: Relative size of regions is accurate,
///   but shapes are distorted.
///     - equalEarth
///     - albers
/// - Conformal projections: Shapes and angles are accurate, but sizes
///   are distorted.
///     - mercator
///     - lambertConformalConic
/// - Compromise projections: A balance of size and shape distortion.
///     - winkelTripel
///     - naturalEarth
///     - equirectangular
///
/// https://docs.mapbox.com/style-spec/reference/projection/
@Freezed()
class ThemeProjection with _$ThemeProjection {
  const factory ThemeProjection({
    /// The name of the projection to be used for rendering the map.
    @Default(ThemeProjectionName.mercator) ThemeProjectionName name,

    /// The reference longitude and latitude of the projection. center takes
    /// the form of [lng, lat]. This property is only configurable for conic
    /// projections (Albers and Lambert Conformal Conic). All other
    /// projections are centered on [0, 0].
    @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If a projection center is set the projection needs to be '
          'albers or lambertConformalConic.',
    )
    List<double>? center,

    /// The standard parallels of the projection, denoting the desired
    /// latitude range with minimal distortion. parallels takes the form of
    /// [lat0, lat1]. This property is only configurable for conic projections
    /// (Albers and Lambert Conformal Conic).
    @Assert(
      'center == null || name == ThemeProjectionName.albers '
          '|| name == ThemeProjectionName.lambertConformalConic',
      'If projection parallels is set the projection needs to be '
          'albers or lambertConformalConic.',
    )
    List<double>? parallels,
  }) = _ThemeProjection;

  factory ThemeProjection.fromJson(Map<String, Object?> json) =>
      _$ThemeProjectionFromJson(json);
}

@JsonEnum()
enum ThemeProjectionName {
  /// An Albers equal-area projection centered on the continental
  /// United States. You can configure the projection for a different region
  /// by setting center and parallels properties. You may want to set max
  /// bounds to constrain the map to the relevant region.
  albers,

  /// An Equal Earth projection.
  equalEarth,

  /// An Equirectangular projection. This projection is very similar to the
  /// Plate Carrée projection.
  equirectangular,

  /// A Lambert conformal conic projection. You can configure the projection
  /// for a region by setting center and parallels properties. You may want to
  /// set max bounds to constrain the map to the relevant region.
  lambertConformalConic,

  /// The Mercator projection is the default projection.
  mercator,

  /// A Natural Earth projection.
  naturalEarth,

  /// A Winkel Tripel projection.
  winkelTripel,

  /// A globe projection.
  globe;
}
