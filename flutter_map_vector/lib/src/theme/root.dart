import 'package:flutter_map_vector/src/theme/converter/layer_converter.dart';
import 'package:flutter_map_vector/src/theme/converter/source_converter.dart';
import 'package:flutter_map_vector/src/theme/fog.dart';
import 'package:flutter_map_vector/src/theme/import.dart';
import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:flutter_map_vector/src/theme/terrain.dart';
import 'package:flutter_map_vector/src/theme/transition.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'root.freezed.dart';
part 'root.g.dart';
part 'style_osm_bright.dart';

/// Root level properties of a Mapbox style specify the map's layers, tile
/// sources and other resources, and default values for the initial camera
/// position when not specified elsewhere.
///
/// https://docs.mapbox.com/style-spec/reference/root/
@Freezed()
class VectorTheme with _$VectorTheme {
  static const osmBrightJson = _styleOsmBright;
  static VectorTheme osmBright = VectorTheme.fromJson(_styleOsmBright);

  const factory VectorTheme({
    /// Layers will be created in the order of this array.
    @LayerListConverter() required List<ThemeLayer> layers,

    /// Sources supply the data that will be displayed on the map.
    @SourceConverter() required Map<String, ThemeSource> sources,

    /// Style specification version number. Must be 8.
    @Assert('version == 8', 'Must be 8.') required int version,

    /// Default bearing, in degrees. The bearing is the compass direction that
    /// is "up"; for example, a bearing of 90° orients the map so that east is
    /// up. This value will be used only if the map has not been positioned by
    /// other means (e.g. map options or user interaction).
    @Default(0) double bearing,

    /// Global setting to control additional camera intrinsics parameters,
    /// e.g. projection type (perspective / orthographic).
    dynamic camera,

    /// Default map center in longitude and latitude. The style center will be
    /// used only if the map has not been positioned by other means
    /// (e.g. map options or user interaction).
    @Assert('center.length == 2', 'longitude and latitude')
    List<double>? center,

    /// A global effect that fades layers and markers based on their distance
    /// to the camera. The fog can be used to approximate the effect of
    /// atmosphere on distant objects and enhance the depth perception of the
    /// map when used with terrain or 3D features. Note: fog is renamed to
    /// atmosphere in the Android and iOS SDKs and planned to be changed in
    /// GL-JS v.3.0.0.
    ThemeFog? fog,

    /// Indicates that a style is a fragment style.
    bool? fragment,

    /// A URL template for loading signed-distance-field glyph sets in PBF
    /// format. The URL must include {fontstack} and {range} tokens. This
    /// property is required if any layer uses the text-field layout property.
    /// The URL must be absolute, containing the scheme, authority and path
    /// components.
    ///
    /// https://docs.mapbox.com/style-spec/reference/glyphs/
    @Default('mapbox://fonts/mapbox/{fontstack}/{range}.pbf') String glyphs,

    /// Imports other styles into this style.
    List<ThemeImport>? imports,

    /// The global light source. Note: This API is deprecated. Prefer using
    /// flat light type instead in the lights API.
    @Deprecated(
      'This API is deprecated. Prefer using flat light type '
      'instead in the lights API.',
    )
    dynamic light,

    /// Array of light sources affecting the whole map and the default for
    /// 3D style, mutually exclusive with the light property
    List<dynamic>? lights,

    /// Arbitrary properties useful to track with the stylesheet, but do not
    /// influence rendering. Properties should be prefixed to avoid collisions,
    /// like 'mapbox:'.
    Map<String, Object?>? metadata,

    /// Specification of models used in the style.
    dynamic models,

    /// A human-readable name for the style.
    required String name,

    /// Default pitch, in degrees. Zero is perpendicular to the surface, for a
    /// look straight down at the map, while a greater value like 60 looks
    /// ahead towards the horizon. The style pitch will be used only if the
    /// map has not been positioned by other means (e.g. map options or user
    /// interaction).
    @Default(0) double pitch,

    /// The projection the map should be rendered in. Supported projections
    /// are Mercator, Globe, Albers, Equal Earth, Equirectangular (WGS84),
    /// Lambert conformal conic, Natural Earth, and Winkel Tripel. Terrain, sky
    /// and fog are supported by only Mercator and globe. CustomLayerInterface
    /// is not supported outside of Mercator.
    dynamic projection,

    /// Definition of the schema for configuration options.
    dynamic schema,

    /// A base URL for retrieving the sprite image and metadata. The extensions
    /// .png, .json and scale factor @2x.png will be automatically appended.
    /// This property is required if any layer uses the background-pattern,
    /// fill-pattern, line-pattern, fill-extrusion-pattern, or icon-image
    /// properties. The URL must be absolute, containing the scheme, authority
    /// and path components.
    String? sprite,

    /// A global modifier that elevates layers and markers based on a DEM
    /// data source.
    ThemeTerrain? terrain,

    /// A global transition definition to use as a default across properties,
    /// to be used for timing transitions between one value and the next when
    /// no property-specific transition is set. Collision-based symbol fading
    /// is controlled independently of the style's transition property.
    ThemeTransition? transition,

    /// Default zoom level. The style zoom will be used only if the map has not
    /// been positioned by other means (e.g. map options or user interaction).
    double? zoom,

    /// The date and time the style was created.
    ///
    /// Not used for rendering.
    // TODO turn into DateTime
    String? created,

    /// The ID of the style.
    ///
    /// Not used for rendering.
    String? id,

    /// The date and time the style was last modified.
    ///
    /// Not used for rendering.
    // TODO turn into DateTime
    String? modified,

    /// The username of the style owner.
    ///
    /// Not used for rendering.
    String? owner,

    /// Access control for the style, either public or private. Private styles
    /// require an access token belonging to the owner. Public styles may be
    /// requested with an access token belonging to any user.
    ///
    /// Not used for rendering.
    String? visibility,

    /// Indicates whether the style is protected (true) or not (false).
    /// Protected styles cannot be edited and deleted.
    ///
    /// Not used for rendering.
    bool? protected,

    /// Indicates whether the style is a draft (true) or whether it has been
    /// published (false).
    ///
    /// Not used for rendering.
    bool? draft,
  }) = _ThemeRoot;

  factory VectorTheme.fromJson(Map<String, Object?> json) =>
      _$VectorThemeFromJson(json);
}
