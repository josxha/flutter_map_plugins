import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sky.freezed.dart';
part 'sky.g.dart';

/// A sky style layer renders a stylized spherical dome that encompasses the
/// entire map and is automatically rendered behind all layers. This can be
/// used to fill the area above the horizon with a simulated sky that
/// represents a particular time-of-day, or stylized custom gradients.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#sky
///
/// As of v2.9.0, fog is the preferred method for atmospheric styling.
/// Sky layer is not supported by the globe projection, and will be phased
/// out in a future release.
@Freezed()
class ThemeSkyLayer with _$ThemeSkyLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeSkyLayer({
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
  }) = _ThemeSkyLayer;

  factory ThemeSkyLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeSkyLayerFromJson(json);
}
