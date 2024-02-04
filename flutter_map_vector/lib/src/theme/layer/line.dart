import 'package:flutter_map_vector/src/theme/flat_light.dart';
import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'line.freezed.dart';
part 'line.g.dart';

/// A line style layer renders one or more stroked polylines on the map. You
/// can use a line layer to configure the visual appearance of polyline or
/// multipolyline features.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#line
@Freezed()
class ThemeLineLayer with _$ThemeLineLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeLineLayer({
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

    /// Blur applied to the line, in pixels.
    @JsonKey(name: 'line-blur') @Default(0) double lineBlur,

    /// The display of line endings.
    @Default(ThemeLineCap.butt) @JsonKey(name: 'line-cap') ThemeLineCap lineCap,

    /// The color with which the line will be drawn.
    @JsonKey(name: 'line-color') @Default('#000000') String lineColor,

    /// Specifies the lengths of the alternating dashes and gaps that form the
    /// dash pattern. The lengths are later scaled by the line width. To
    /// convert a dash length to pixels, multiply the length by the current
    /// line width. Note that GeoJSON sources with lineMetrics: true specified
    /// won't render dashed lines to the expected scale. Also note that
    /// zoom-dependent expressions will be evaluated only at integer
    /// zoom levels.
    @JsonKey(name: 'line-dasharray')
    @Assert(
      'lineDashArray.all((e) => e >= 0)',
      'line-dasharray has to be greater than or equal to 0',
    )
    List<double>? lineDashArray,

    /// Controls the intensity of light emitted on the source features.
    @Assert(
      'lineEmissiveStrength >= 0',
      'line-emissive-strength has to be greater than or equal to 0.',
    )
    @JsonKey(name: 'line-emissive-strength')
    @Default(0)
    double lineEmissiveStrength,

    /// Draws a line casing outside of a line's actual path. Value indicates
    /// the width of the inner gap.
    @JsonKey(name: 'line-gap-width') @Default(0) double lineGapWidth,

    /// A gradient used to color a line feature at various distances along
    /// its length. Defined using a step or interpolate expression which
    /// outputs a color for each corresponding line-progress input value.
    /// line-progress is a percentage of the line feature's total length as
    /// measured on the webmercator projected coordinate plane (a number
    /// between 0 and 1). Can only be used with GeoJSON sources that specify
    /// "lineMetrics": true.
    @JsonKey(name: 'line-gradient') String? lineGradient,

    /// The display of lines when joining.
    @Default(ThemeLineJoin.miter)
    @JsonKey(name: 'line-join')
    ThemeLineJoin lineJoin,

    /// Used to automatically convert miter joins to bevel joins for
    /// sharp angles.
    @Default(2) @JsonKey(name: 'line-miter-limit') double lineMiterLimit,

    /// The line's offset. For linear features, a positive value offsets the
    /// line to the right, relative to the direction of the line, and a
    /// negative value to the left. For polygon features, a positive value
    /// results in an inset, and a negative value results in an outset.
    @JsonKey(name: 'line-offset') @Default(0) double lineOffset,

    /// The opacity at which the line will be drawn.
    @JsonKey(name: 'line-opacity')
    @Default(1)
    @Assert(
      'lineOpacity >= 0 && lineOpacity <= 1',
      'line-opacity has to be between 0 and 1',
    )
    double lineOpacity,

    /// Name of image in sprite to use for drawing image lines. For seamless
    /// patterns, image width must be a factor of two (2, 4, 8, ..., 512).
    /// Note that zoom-dependent expressions will be evaluated only at integer
    /// zoom levels.
    @JsonKey(name: 'line-pattern') String? linePattern,

    /// Used to automatically convert round joins to miter joins for
    /// shallow angles.
    @JsonKey(name: 'line-round-limit') @Default(1.05) double lineRoundLimit,

    /// Sorts features in ascending order based on this value. Features with a
    /// higher sort key will appear above features with a lower sort key.
    @JsonKey(name: 'line-sort-key') double? lineSortKey,

    /// The geometry's offset. Values are [x, y] where negatives indicate
    /// left and up, respectively.
    @JsonKey(name: 'line-translate')
    @Default([0, 0])
    List<double> lineTranslate,

    /// Controls the frame of reference for line-translate.
    @JsonKey(name: 'line-translate-anchor')
    @Default(ThemeFlatLightAnchor.map)
    ThemeFlatLightAnchor lineTranslateAnchor,

    /// The line part between [trim-start, trim-end] will be marked as
    /// transparent to make a route vanishing effect. The line trim-off offset
    /// is based on the whole line range [0.0, 1.0].
    @JsonKey(name: 'line-trim-offset')
    @Default([0, 0])
    @Assert(
      'lineTrimOffset.all((e) => e >= 0 && e <= 1)',
      'The values of line-trim-offset have to be between 0 and 1',
    )
    List<double> lineTrimOffset,

    /// Stroke thickness.
    @JsonKey(name: 'line-width')
    @Default(1)
    @Assert(
      'lineWidth >= 0 && lineWidth <= 1',
      'line-width has to be between 0 and 1 inclusive',
    )
    double lineWidth,

    /// Whether this layer is displayed.
    @Default(ThemeLayerVisibility.visible)
    @JsonKey(name: 'visiblity')
    ThemeLayerVisibility visibility,
  }) = _ThemeLineLayer;

  factory ThemeLineLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeLineLayerFromJson(json);
}

enum ThemeLineCap {
  /// A cap with a squared-off end which is drawn to the exact endpoint of
  /// the line.
  butt,

  /// A cap with a rounded end which is drawn beyond the endpoint of the line
  /// at a radius of one-half of the line's width and centered on the
  /// endpoint of the line.
  round,

  /// A cap with a squared-off end which is drawn beyond the endpoint of the
  /// line at a distance of one-half of the line's width.
  square;
}

/// The display of lines when joining.
enum ThemeLineJoin {
  /// A join with a squared-off end which is drawn beyond the endpoint of the
  /// line at a distance of one-half of the line's width.
  bevel,

  /// A join with a rounded end which is drawn beyond the endpoint of the line
  /// at a radius of one-half of the line's width and centered on the endpoint
  /// of the line.
  round,

  /// A join with a sharp, angled corner which is drawn with the outer sides
  /// beyond the endpoint of the path until they meet.
  miter;
}
