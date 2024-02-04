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
    required ThemeLayerType type,
    required String id,
    dynamic filter,
    dynamic layout,
    @Assert(
      'maxZoom >= 0 && maxZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'maxzoom')
    int? maxZoom,
    @Assert(
      'minZoom >= 0 && minZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'minzoom')
    int? minZoom,
    dynamic paint,
    String? slot,
    String? source,
    @JsonKey(name: 'source-layer') String? sourceLayer,
  }) = _ThemeSkyLayer;

  factory ThemeSkyLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeSkyLayerFromJson(json);
}
