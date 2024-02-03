import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '_3d_light.freezed.dart';
part '_3d_light.g.dart';

/// 3D lighting is a new lighting mode introduced in Maps SDK v11 for iOS and
/// Android, and Web SDK v3. It is used for illuminating the entire scene,
/// including extruded features, 3D models and all other layers. You should
/// choose this mode if your map uses 3D models, or fill extrusions that should
/// cast shadows, or if you want the global lights to affect the illumination
/// of the entire scene.
///
/// https://docs.mapbox.com/style-spec/reference/light/#3d-lighting
// TODO A lot of fields have to support interpolate expressions
@Freezed()
class Theme3dLight with _$Theme3dLight {
  const factory Theme3dLight({
    /// Unique light name.
    required String id,

    /// Properties of the light.
    dynamic properties,

    /// Type of the light to be added
    Theme3dLightType? type,

    /// Using the measure-light expression, a layer can change its color based
    /// on the light configuration.
    @JsonKey(name: 'measure-light') dynamic measureLight,

    /// Enable/Disable shadow casting for this light
    @JsonKey(name: 'cast-shadows') @Default(false) bool castShadows,

    /// Color of the directional light.
    @Default(Color(0x00ffffff)) dynamic color,

    /// Direction of the light source specified as
    /// [0] a azimuthal angle
    /// [1] p polar angle
    /// where a indicates the azimuthal angle of the light relative to
    /// north (in degrees and proceeding clockwise), and p indicates polar
    /// angle of the light (from 0°, directly above, to 180°, directly below).
    List<double>? direction,

    // A multiplier for the color of the directional light.
    @Assert('intensity >= 0 && intensity <= 1') @Default(0.5) double intensity,
  }) = _Theme3dLight;

  factory Theme3dLight.fromJson(Map<String, Object?> json) =>
      _$Theme3dLightFromJson(json);
}

enum Theme3dLightType {
  /// An indirect light affecting all objects in the map adding a constant
  /// amount of light on them. It has no explicit direction and cannot
  /// cast shadows.
  ambient,

  /// A light that has a direction and is located at infinite distance, so its
  /// rays are parallel. It simulates the sun light and can cast shadows.
  directional,

  /// A global directional light source which is only applied on 3D and
  /// hillshade layers. Using this type disables other light sources.
  flat;
}
