import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol.freezed.dart';
part 'symbol.g.dart';

/// A symbol style layer renders icon and text labels at points or along lines
/// on a map. You can use a symbol layer to configure the visual appearance of
/// labels for features in vector tiles.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#symbol
@Freezed()
class ThemeSymbolLayer with _$ThemeSymbolLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeSymbolLayer({
    /// Rendering type of this layer.
    required ThemeLayerType type,

    /// Unique layer name.
    required String id,

    /// An expression specifying conditions on source features. Only features
    /// that match the filter are displayed. Zoom expressions in filters are
    /// only evaluated at integer zoom levels. The ["feature-state", ...]
    /// expression is not supported in filter expressions. The ["pitch"] and
    /// ["distance-from-center"] expressions are supported only for filter
    /// expressions on the symbol layer.
    dynamic filter,

    /// Layout properties for the layer.
    dynamic layout,

    /// The maximum zoom level for the layer. At zoom levels equal to or
    /// greater than the maxzoom, the layer will be hidden.
    @Assert(
      'maxZoom >= 0 && maxZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'maxzoom')
    double? maxZoom,

    /// The minimum zoom level for the layer. At zoom levels less than the
    /// minzoom, the layer will be hidden.
    @Assert(
      'minZoom >= 0 && minZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'minzoom')
    double? minZoom,

    /// Default paint properties for this layer.
    dynamic paint,

    /// The slot this layer is assigned to. If specified, and a slot with that
    /// name exists, it will be placed at that position in the layer order.
    String? slot,

    /// Name of a source description to be used for this layer. Required for
    /// all layer types except background and slot.
    String? source,

    /// Layer to use from a vector tile source. Required for vector
    /// tile sources; prohibited for all other source types, including
    /// GeoJSON sources.
    @JsonKey(name: 'source-layer') String? sourceLayer,
    // TODO add parameters
  }) = _ThemeSymbolLayer;

  factory ThemeSymbolLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeSymbolLayerFromJson(json);
}
