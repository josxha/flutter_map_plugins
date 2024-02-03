import 'package:freezed_annotation/freezed_annotation.dart';

/// A style's layers property lists all the layers available in that style.
/// The type of layer is specified by the "type" property, and must be one of
/// background, fill, line, symbol, raster, circle, fill-extrusion,
/// heatmap, hillshade, sky.
///
/// Except for layers of the background or sky types, each layer must refer to
/// a source. Layers take the data that they get from a source, optionally
/// filter features, and then define how those features are styled.
///
/// https://docs.mapbox.com/style-spec/reference/layers/
@Freezed()
abstract interface class ThemeLayer {
  /// Rendering type of this layer.
  ThemeLayerType get type;

  /// Unique layer name.
  String get id;

  /// An expression specifying conditions on source features. Only features
  /// that match the filter are displayed. Zoom expressions in filters are
  /// only evaluated at integer zoom levels. The ["feature-state", ...]
  /// expression is not supported in filter expressions. The ["pitch"] and
  /// ["distance-from-center"] expressions are supported only for filter
  /// expressions on the symbol layer.
  Object? get filter;

  /// Layout properties for the layer.
  Object? get layout;

  /// The maximum zoom level for the layer. At zoom levels equal to or
  /// greater than the maxzoom, the layer will be hidden.
  int? get maxZoom;

  /// The minimum zoom level for the layer. At zoom levels less than the
  /// minzoom, the layer will be hidden.
  int? get minZoom;

  /// Default paint properties for this layer.
  Object? get paint;

  /// The slot this layer is assigned to. If specified, and a slot with that
  /// name exists, it will be placed at that position in the layer order.
  String? get slot;

  /// Name of a source description to be used for this layer. Required for
  /// all layer types except background and slot.
  String? get source;

  /// Layer to use from a vector tile source. Required for vector
  /// tile sources; prohibited for all other source types, including
  /// GeoJSON sources.
  String? get sourceLayer;
}

/// Rendering type of the layer.
@JsonEnum()
enum ThemeLayerType {
  /// A filled polygon with an optional stroked border.
  line,

  /// A stroked line.
  fill,

  /// An icon or a text label.
  symbol,

  /// A filled circle.
  circle,

  /// A heatmap.
  heatmap,

  /// An extruded (3D) polygon.
  @JsonKey(name: 'full-extrusion')
  fillExtrusion,

  /// Raster map textures such as satellite imagery.
  raster,

  /// Client-side hillshading visualization based on DEM data. Currently, the
  /// implementation only supports Mapbox Terrain RGB and Mapzen
  /// Terrarium tiles.
  hillshade,

  /// A 3D model
  model,

  /// The background color or pattern of the map.
  background,

  /// A spherical dome around the map that is always rendered behind all
  /// other layers.
  sky,

  /// Marks the position of a slot.
  slot;
}
