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
    required ThemeLayerType type,
    required String id,
    dynamic filter,
    dynamic layout,
    @Assert(
      'maxZoom >= 0 && maxZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'maxzoom')
    double? maxZoom,
    @Assert(
      'minZoom >= 0 && minZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'minzoom')
    double? minZoom,
    dynamic paint,
    String? slot,
    String? source,
    @JsonKey(name: 'source-layer') String? sourceLayer,
  }) = _ThemeCircleLayer;

  factory ThemeCircleLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeCircleLayerFromJson(json);
}
