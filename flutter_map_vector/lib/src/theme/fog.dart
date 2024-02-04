import 'dart:ui';

import 'package:flutter_map_vector/src/theme/converter/color_converter.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fog.freezed.dart';
part 'fog.g.dart';

/// A style's fog property is a global styling effect that can be used to
/// create an atmospheric gradient, stars, and haze. These properties can
/// increase realism or match a designer's aesthetic. Fog provides a visual
/// cue to improves depth perception and can boost performance by reducing the
/// number of tiles loaded in the distance.
///
/// Fog is supported only in globe and mercator projections.
///
/// https://docs.mapbox.com/style-spec/reference/fog/
@Freezed()
class ThemeFog with _$ThemeFog {
  const factory ThemeFog({
    /// The color of the atmosphere region immediately below the horizon and
    /// within the range and above the horizon and within horizon-blend. Using
    /// opacity is recommended only for smoothly transitioning fog on/off as
    /// anything less than 100% opacity results in more tiles loaded and drawn.
    @ColorConverter() @Default(Color(0xffffffff)) Color color,

    /// The color of the atmosphere region above the horizon, high-color
    /// extends further above the horizon than the color property and its
    /// spread can be controlled with horizon-blend. The opacity can be set to
    /// 0 to remove the high atmosphere color contribution.
    @ColorConverter() @Default(Color(0xff245cdf)) Color highColor,

    /// Horizon blend applies a smooth fade from the color of the atmosphere
    /// to the color of space. A value of zero leaves a sharp transition from
    /// atmosphere to space. Increasing the value blends the color of atmosphere
    /// into increasingly high angles of the sky.
    ///
    /// Optional number between 0 and 1 inclusive. Defaults to
    /// ["interpolate",["linear"],["zoom"],4,0.2,7,0.1].
    /// Supports smooth-rampinterpolateexpressions. opacityTransitionable.
    double? horizonBlend,

    /// The start and end distance range in which fog fades from fully
    /// transparent to fully opaque. The distance to the point at the center
    /// of the map is defined as zero, so that negative range values are closer
    /// to the camera, and positive values are farther away.
    @Assert('range.all((e) => e >= -20 && e <= 20)')
    @Default([0.5, 10])
    List<double> range,

    /// The color of the region above the horizon and after the end of the
    /// horizon-blend contribution. The opacity can be set to 0 to have a
    /// transparent background.
    ///
    // TODO Defaults to ["interpolate",["linear"],["zoom"],
    // TODO 4,"#010b19",7,"#367ab9"]
    //@JsonKey(name: 'space-color')
    //Color? spaceColor,

    /// A value controlling the star intensity where 0 will show no stars
    /// and 1 will show stars at their maximum intensity.
    // TODO Defaults to ["interpolate",["linear"],["zoom"],5,0.35,6,0]
    //@JsonKey(name: 'star-intensity') double starIntensity,

    /// An array of two number values, specifying the vertical range, measured
    /// in meters, over which the fog should gradually fade out. When both
    /// parameters are set to zero, the fog will be rendered without any
    /// vertical constraints.
    @Assert(
      'verticalRange.all((e) => e >= 0)',
      'Each value of verticalRange has to be >= 0.',
    )
    @JsonKey(name: 'vertical-range')
    @Default([0, 0])
    List<double> verticalRange,
  }) = _ThemeFog;

  factory ThemeFog.fromJson(Map<String, Object?> json) =>
      _$ThemeFogFromJson(json);
}
