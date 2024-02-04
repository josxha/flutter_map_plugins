import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'geojson.freezed.dart';
part 'geojson.g.dart';

/// A GeoJSON source. Data must be provided via a "data" property, whose value
/// can be a URL or inline GeoJSON.
///
/// https://docs.mapbox.com/style-spec/reference/sources/#geojson
@Freezed()
class ThemeGeoJsonSource with _$ThemeGeoJsonSource implements ThemeSource {
  @Implements<ThemeSource>()
  const factory ThemeGeoJsonSource({
    required ThemeSourceType type,

    /// Contains an attribution to be displayed when the map is shown to a user.
    String? attribution,

    /// Size of the tile buffer on each side. A value of 0 produces no buffer.
    /// A value of 512 produces a buffer as wide as the tile itself. Larger
    /// values produce fewer rendering artifacts near tile edges and slower
    /// performance.
    @Assert(
      'buffer >= 0 && buffer <= 512',
      'Buffer value must be between 0 and 512 inclusive.',
    )
    @Default(128)
    int buffer,

    /// If the data is a collection of point features, setting this to true
    /// clusters the points by radius into groups. Cluster groups become new
    /// Point features in the source with additional properties:
    ///
    /// - cluster Is true if the point is a cluster
    /// - cluster_id A unqiue id for the cluster to be used in conjunction with
    ///   the cluster inspection methods
    /// - point_count Number of original points grouped into this cluster
    /// - point_count_abbreviated An abbreviated point count
    @Default(false) bool cluster,

    /// Max zoom on which to cluster points if clustering is enabled. Defaults
    /// to one zoom less than maxzoom (so that last zoom features are not
    /// clustered). Clusters are re-evaluated at integer zoom levels so setting
    /// clusterMaxZoom to 14 means the clusters will be displayed until z15.
    int? clusterMaxZoom,

    /// Minimum number of points necessary to form a cluster if clustering is
    /// enabled. Defaults to 2.
    @Default(2) int? clusterMinPoints,

    /// An object defining custom properties on the generated clusters if
    /// clustering is enabled, aggregating values from clustered points. Has
    /// the form {"property_name": [operator, map_expression]}. operator is
    /// any expression function that accepts at least 2 operands (e.g. "+" or
    /// "max") — it accumulates the property value from clusters/points the
    /// cluster contains; map_expression produces the value of a single point.
    ///
    /// Example: {"sum": ["+", ["get", "scalerank"]]}.
    ///
    /// For more advanced use cases, in place of operator, you can use a custom
    /// reduce expression that references a special ["accumulated"] value, e.g.:
    /// {"sum": [["+", ["accumulated"], ["get", "sum"]], ["get", "scalerank"]]}
    dynamic clusterProperties,

    /// Radius of each cluster if clustering is enabled. A value of 512
    /// indicates a radius equal to the width of a tile.
    @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
    @Default(50)
    double? clusterRadius,

    /// A URL to a GeoJSON file, or inline GeoJSON.
    dynamic data,

    /// An expression for filtering features prior to processing them
    /// for rendering.
    dynamic filter,

    /// Whether to generate ids for the geojson features. When enabled, the
    /// feature.id property will be auto assigned based on its index in the
    /// features array, over-writing any previous values.
    @Default(false) bool generateId,

    /// Whether to calculate line distance metrics. This is required for line
    /// layers that specify line-gradient values.
    @Default(false) bool lineMetrics,

    /// Maximum zoom level at which to create vector tiles (higher means
    /// greater detail at high zoom levels).
    @Default(18) int maxZoom,

    /// A property to use as a feature id (for feature state). Either a
    /// property name, or an object of the form {<sourceLayer>: <propertyName>}.
    dynamic promoteId,

    /// Douglas-Peucker simplification tolerance (higher means simpler
    /// geometries and faster performance).
    @Default(0.375) double tolerance,
  }) = _ThemeGeoJsonSource;

  factory ThemeGeoJsonSource.fromJson(Map<String, Object?> json) =>
      _$ThemeGeoJsonSourceFromJson(json);
}
