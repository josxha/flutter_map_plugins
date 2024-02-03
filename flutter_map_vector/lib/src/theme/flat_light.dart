import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'flat_light.freezed.dart';
part 'flat_light.g.dart';

/// Flat lighting is the traditional lighting mode which is used to illuminate
/// fill extrusions and the hillshade layer. You should choose this mode if
/// your map doesn’t contain models or fill extrusions, and you don’t need
/// complex lighting options.
///
/// https://docs.mapbox.com/style-spec/reference/light/#flat-lighting
@Freezed()
class ThemeFlatLight with _$ThemeFlatLight {
  const factory ThemeFlatLight({
    /// Whether extruded geometries are lit relative to the map or viewport.
    @Default(ThemeFlatLightAnchor.viewport) ThemeFlatLightAnchor anchor,

    /// Color tint for lighting extruded geometries.
    @Default(Color(0x00ffffff)) dynamic color,

    /// Intensity of lighting (on a scale from 0 to 1). Higher numbers will
    /// present as more extreme contrast.
    @Assert('intensity >= 0 && intensity <= 1') @Default(0.5) double intensity,

    /// Position of the light source relative to lit (extruded) geometries, in
    /// [0] r radial coordinate
    /// [1] a azimuthal angle
    /// [2] p polar angle
    /// where r indicates the distance from the center of the base of an object
    /// to its light, a indicates the position of the light relative to 0°
    /// (0° when light.anchor is set to viewport corresponds to the top of the
    /// viewport, or 0° when light.anchor is set to map corresponds to due
    /// north, and degrees proceed clockwise), and p indicates the height of the
    /// light (from 0°, directly above, to 180°, directly below).
    @Assert(
      'position.length == 3',
      '[r radial coordinate, a azimuthal angle, p polar angle]',
    )
    @Default([1.15, 210, 30])
    List<double> position,
  }) = _ThemeFlatLight;

  factory ThemeFlatLight.fromJson(Map<String, Object?> json) =>
      _$ThemeFlatLightFromJson(json);
}

@JsonEnum()
enum ThemeFlatLightAnchor {
  /// The position of the light source is aligned to the rotation of the map.
  map,

  /// The position of the light source is aligned to the rotation of
  /// the viewport.
  viewport;
}
