import 'package:flutter_map_vector/src/theme/flat_light.dart';
import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fill.freezed.dart';
part 'fill.g.dart';

/// A fill style layer renders one or more filled (and optionally stroked)
/// polygons on a map. You can use a fill layer to configure the visual
/// appearance of polygon or multipolygon features.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#fill
@Freezed()
class ThemeFillLayer with _$ThemeFillLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeFillLayer({
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

    /// Whether or not the fill should be antialiased.
    @JsonKey(name: 'fill-antialias') @Default(true) bool fillAntialias,

    /// The color of the filled part of this layer. This color can be
    /// specified as rgba with an alpha component and the color's opacity will
    /// not affect the opacity of the 1px stroke, if it is used.
    @JsonKey(name: 'fill-color') @Default('#000000') String fillColor,

    /// Controls the intensity of light emitted on the source features.
    @Default(0)
    @JsonKey(name: 'fill-emissive-strength')
    double fillEmissiveStrength,

    /// The opacity of the entire fill layer. In contrast to the fill-color,
    /// this value will also affect the 1px stroke around the fill, if the
    /// stroke is used.
    @Assert(
      'fillOpacity >= 0 && fillOpacity <= 1',
      'fill-opacity has to be between 0 and 1 inclusive.',
    )
    @Default(1)
    @JsonKey(name: 'fill-opacity')
    double fillOpacity,

    /// The outline color of the fill. Matches the value of fill-color
    /// if unspecified.
    @JsonKey(name: 'fill-outline-color') String? fillOutlineColor,

    /// Name of image in sprite to use for drawing image fills. For seamless
    /// patterns, image width and height must be a factor of two
    /// (2, 4, 8, ..., 512). Note that zoom-dependent expressions will be
    /// evaluated only at integer zoom levels.
    @JsonKey(name: 'fill-pattern') String? fillPattern,

    /// Sorts features in ascending order based on this value. Features with a
    /// higher sort key will appear above features with a lower sort key.
    @JsonKey(name: 'fill-sort-key') double? fillSortKey,

    /// The geometry's offset. Values are [x, y] where negatives indicate
    /// left and up, respectively.
    @Default([0.0])
    @Assert(
      'fillTranslate == null || fillTranslate!.length == 2',
      'fill-opacity has to be between 0 and 1 inclusive.',
    )
    @JsonKey(name: 'fill-translate')
    List<double> fillTranslate,

    /// Controls the frame of reference for fill-translate.
    @Default(ThemeFlatLightAnchor.map)
    @JsonKey(name: 'fill-translate-anchor')
    ThemeFlatLightAnchor fillTranslateAnchor,

    /// Controls the frame of reference for fill-translate.
    @Default(ThemeLayerVisibility.visible) ThemeLayerVisibility visibility,
  }) = _ThemeFillLayer;

  factory ThemeFillLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeFillLayerFromJson(json);
}
