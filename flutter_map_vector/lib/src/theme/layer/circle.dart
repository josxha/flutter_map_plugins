import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'circle.freezed.dart';
part 'circle.g.dart';

/// A circle style layer renders one or more filled circles on a map. You can
/// use a circle layer to configure the visual appearance of point or point
/// collection features in vector tiles. A circle layer renders circles whose
/// radii are measured in screen units.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#circle
@Freezed()
class ThemeCircleLayer with _$ThemeCircleLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeCircleLayer({
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
    ) @JsonKey(name: 'maxzoom') double? maxZoom,

    /// The minimum zoom level for the layer. At zoom levels less than the
    /// minzoom, the layer will be hidden.
    @Assert(
      'minZoom >= 0 && minZoom <= 24',
      'number between 0 and 24 inclusive.',
    ) @JsonKey(name: 'minzoom') double? minZoom,

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
  }) = _ThemeCircleLayer;

  factory ThemeCircleLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeCircleLayerFromJson(json);
}