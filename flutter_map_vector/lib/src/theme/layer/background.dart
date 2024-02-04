import 'dart:ui';

import 'package:flutter_map_vector/src/theme/converter/color_converter.dart';
import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'background.freezed.dart';
part 'background.g.dart';

/// The background style layer covers the entire map. Use a background style
/// layer to configure a color or pattern to show below all other map content.
/// If the background layer is transparent or omitted from the style, any part
/// of the map view that does not show another style layer is transparent.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#background
@Freezed()
class ThemeBackgroundLayer with _$ThemeBackgroundLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeBackgroundLayer({
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

    /// The color with which the background will be drawn.
    @Default(Color(0xff000000))
    @JsonKey(name: 'background-color')
    @ColorConverter()
    Color backgroundColor,

    /// Controls the intensity of light emitted on the source features.
    @Default(0)
    @JsonKey(name: 'background-emissive-strength')
    @Assert(
      'backgroundEmissiveStrength >= 0',
      'background-emissive-strength needs to be >=0',
    )
    double backgroundEmissiveStrength,

    /// The opacity at which the background will be drawn.
    @Assert(
      'backgroundOpacity >= 0 && backgroundOpacity <= 0',
      'background-opacity needs to between 0 and 1 inclusive',
    )
    @Default(1)
    @JsonKey(name: 'background-opacity')
    double backgroundOpacity,

    /// Name of image in sprite to use for drawing an image background. For
    /// seamless patterns, image width and height must be a factor of two
    /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
    /// evaluated only at integer zoom levels.
    @JsonKey(name: 'background-pattern') String? backgroundPattern,

    /// Whether this layer is displayed.
    @Default(ThemeLayerVisibility.visible) ThemeLayerVisibility visibility,
  }) = _ThemeBackgroundLayer;

  factory ThemeBackgroundLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeBackgroundLayerFromJson(json);
}
