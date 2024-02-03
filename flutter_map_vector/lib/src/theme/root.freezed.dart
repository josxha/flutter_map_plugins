// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'root.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VectorTheme _$VectorThemeFromJson(Map<String, dynamic> json) {
  return _ThemeRoot.fromJson(json);
}

/// @nodoc
mixin _$VectorTheme {
  /// Layers will be created in the order of this array.
  List<ThemeLayer> get layers => throw _privateConstructorUsedError;

  /// Sources supply the data that will be displayed on the map.
//TODO required Map<String, ThemeSource> sources,
  /// Style specification version number. Must be 8.
  @Assert('version == 8', 'Must be 8.')
  int get version => throw _privateConstructorUsedError;

  /// Default bearing, in degrees. The bearing is the compass direction that
  /// is "up"; for example, a bearing of 90° orients the map so that east is
  /// up. This value will be used only if the map has not been positioned by
  /// other means (e.g. map options or user interaction).
  double get bearing => throw _privateConstructorUsedError;

  /// Global setting to control additional camera intrinsics parameters,
  /// e.g. projection type (perspective / orthographic).
  dynamic get camera => throw _privateConstructorUsedError;

  /// Default map center in longitude and latitude. The style center will be
  /// used only if the map has not been positioned by other means
  /// (e.g. map options or user interaction).
  @Assert('center.length == 2', 'longitude and latitude')
  List<double>? get center => throw _privateConstructorUsedError;

  /// A global effect that fades layers and markers based on their distance
  /// to the camera. The fog can be used to approximate the effect of
  /// atmosphere on distant objects and enhance the depth perception of the
  /// map when used with terrain or 3D features. Note: fog is renamed to
  /// atmosphere in the Android and iOS SDKs and planned to be changed in
  /// GL-JS v.3.0.0.
  dynamic get fog => throw _privateConstructorUsedError;

  /// Indicates that a style is a fragment style.
  bool get fragment => throw _privateConstructorUsedError;

  /// A URL template for loading signed-distance-field glyph sets in PBF
  /// format. The URL must include {fontstack} and {range} tokens. This
  /// property is required if any layer uses the text-field layout property.
  /// The URL must be absolute, containing the scheme, authority and path
  /// components.
  ///
  /// https://docs.mapbox.com/style-spec/reference/glyphs/
  String get glyphs => throw _privateConstructorUsedError;

  /// Imports other styles into this style.
  List<dynamic>? get imports => throw _privateConstructorUsedError;

  /// The global light source. Note: This API is deprecated. Prefer using
  /// flat light type instead in the lights API.
  @Deprecated('This API is deprecated. Prefer using flat light type '
      'instead in the lights API.')
  dynamic get light => throw _privateConstructorUsedError;

  /// Array of light sources affecting the whole map and the default for
  /// 3D style, mutually exclusive with the light property
  List<dynamic>? get lights => throw _privateConstructorUsedError;

  /// Arbitrary properties useful to track with the stylesheet, but do not
  /// influence rendering. Properties should be prefixed to avoid collisions,
  /// like 'mapbox:'.
  Map<String, Object?>? get metadata => throw _privateConstructorUsedError;

  /// Specification of models used in the style.
  dynamic get models => throw _privateConstructorUsedError;

  /// A human-readable name for the style.
  String get name => throw _privateConstructorUsedError;

  /// Default pitch, in degrees. Zero is perpendicular to the surface, for a
  /// look straight down at the map, while a greater value like 60 looks
  /// ahead towards the horizon. The style pitch will be used only if the
  /// map has not been positioned by other means (e.g. map options or user
  /// interaction).
  double get pitch => throw _privateConstructorUsedError;

  /// The projection the map should be rendered in. Supported projections
  /// are Mercator, Globe, Albers, Equal Earth, Equirectangular (WGS84),
  /// Lambert conformal conic, Natural Earth, and Winkel Tripel. Terrain, sky
  /// and fog are supported by only Mercator and globe. CustomLayerInterface
  /// is not supported outside of Mercator.
  dynamic get projection => throw _privateConstructorUsedError;

  /// Definition of the schema for configuration options.
  dynamic get schema => throw _privateConstructorUsedError;

  /// A base URL for retrieving the sprite image and metadata. The extensions
  /// .png, .json and scale factor @2x.png will be automatically appended.
  /// This property is required if any layer uses the background-pattern,
  /// fill-pattern, line-pattern, fill-extrusion-pattern, or icon-image
  /// properties. The URL must be absolute, containing the scheme, authority
  /// and path components.
  String? get sprite => throw _privateConstructorUsedError;

  /// A global modifier that elevates layers and markers based on a DEM
  /// data source.
  dynamic get terrain => throw _privateConstructorUsedError;

  /// A global transition definition to use as a default across properties,
  /// to be used for timing transitions between one value and the next when
  /// no property-specific transition is set. Collision-based symbol fading
  /// is controlled independently of the style's transition property.
  dynamic get transition => throw _privateConstructorUsedError;

  /// Default zoom level. The style zoom will be used only if the map has not
  /// been positioned by other means (e.g. map options or user interaction).
  double? get zoom => throw _privateConstructorUsedError;

  /// The date and time the style was created.
  ///
  /// Not used for rendering.
// TODO turn into DateTime
  String? get created => throw _privateConstructorUsedError;

  /// The ID of the style.
  ///
  /// Not used for rendering.
  String? get id => throw _privateConstructorUsedError;

  /// The date and time the style was last modified.
  ///
  /// Not used for rendering.
// TODO turn into DateTime
  String? get modified => throw _privateConstructorUsedError;

  /// The username of the style owner.
  ///
  /// Not used for rendering.
  String? get owner => throw _privateConstructorUsedError;

  /// Access control for the style, either public or private. Private styles
  /// require an access token belonging to the owner. Public styles may be
  /// requested with an access token belonging to any user.
  ///
  /// Not used for rendering.
  String? get visibility => throw _privateConstructorUsedError;

  /// Indicates whether the style is protected (true) or not (false).
  /// Protected styles cannot be edited and deleted.
  ///
  /// Not used for rendering.
  bool? get protected => throw _privateConstructorUsedError;

  /// Indicates whether the style is a draft (true) or whether it has been
  /// published (false).
  ///
  /// Not used for rendering.
  bool? get draft => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VectorThemeCopyWith<VectorTheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VectorThemeCopyWith<$Res> {
  factory $VectorThemeCopyWith(
          VectorTheme value, $Res Function(VectorTheme) then) =
      _$VectorThemeCopyWithImpl<$Res, VectorTheme>;
  @useResult
  $Res call(
      {List<ThemeLayer> layers,
      @Assert('version == 8', 'Must be 8.') int version,
      double bearing,
      dynamic camera,
      @Assert('center.length == 2', 'longitude and latitude')
      List<double>? center,
      dynamic fog,
      bool fragment,
      String glyphs,
      List<dynamic>? imports,
      @Deprecated('This API is deprecated. Prefer using flat light type '
          'instead in the lights API.')
      dynamic light,
      List<dynamic>? lights,
      Map<String, Object?>? metadata,
      dynamic models,
      String name,
      double pitch,
      dynamic projection,
      dynamic schema,
      String? sprite,
      dynamic terrain,
      dynamic transition,
      double? zoom,
      String? created,
      String? id,
      String? modified,
      String? owner,
      String? visibility,
      bool? protected,
      bool? draft});
}

/// @nodoc
class _$VectorThemeCopyWithImpl<$Res, $Val extends VectorTheme>
    implements $VectorThemeCopyWith<$Res> {
  _$VectorThemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layers = null,
    Object? version = null,
    Object? bearing = null,
    Object? camera = freezed,
    Object? center = freezed,
    Object? fog = freezed,
    Object? fragment = null,
    Object? glyphs = null,
    Object? imports = freezed,
    Object? light = freezed,
    Object? lights = freezed,
    Object? metadata = freezed,
    Object? models = freezed,
    Object? name = null,
    Object? pitch = null,
    Object? projection = freezed,
    Object? schema = freezed,
    Object? sprite = freezed,
    Object? terrain = freezed,
    Object? transition = freezed,
    Object? zoom = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? modified = freezed,
    Object? owner = freezed,
    Object? visibility = freezed,
    Object? protected = freezed,
    Object? draft = freezed,
  }) {
    return _then(_value.copyWith(
      layers: null == layers
          ? _value.layers
          : layers // ignore: cast_nullable_to_non_nullable
              as List<ThemeLayer>,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      bearing: null == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
      camera: freezed == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as dynamic,
      center: freezed == center
          ? _value.center
          : center // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      fog: freezed == fog
          ? _value.fog
          : fog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as bool,
      glyphs: null == glyphs
          ? _value.glyphs
          : glyphs // ignore: cast_nullable_to_non_nullable
              as String,
      imports: freezed == imports
          ? _value.imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lights: freezed == lights
          ? _value.lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>?,
      models: freezed == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      projection: freezed == projection
          ? _value.projection
          : projection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sprite: freezed == sprite
          ? _value.sprite
          : sprite // ignore: cast_nullable_to_non_nullable
              as String?,
      terrain: freezed == terrain
          ? _value.terrain
          : terrain // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transition: freezed == transition
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zoom: freezed == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      protected: freezed == protected
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool?,
      draft: freezed == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeRootImplCopyWith<$Res>
    implements $VectorThemeCopyWith<$Res> {
  factory _$$ThemeRootImplCopyWith(
          _$ThemeRootImpl value, $Res Function(_$ThemeRootImpl) then) =
      __$$ThemeRootImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ThemeLayer> layers,
      @Assert('version == 8', 'Must be 8.') int version,
      double bearing,
      dynamic camera,
      @Assert('center.length == 2', 'longitude and latitude')
      List<double>? center,
      dynamic fog,
      bool fragment,
      String glyphs,
      List<dynamic>? imports,
      @Deprecated('This API is deprecated. Prefer using flat light type '
          'instead in the lights API.')
      dynamic light,
      List<dynamic>? lights,
      Map<String, Object?>? metadata,
      dynamic models,
      String name,
      double pitch,
      dynamic projection,
      dynamic schema,
      String? sprite,
      dynamic terrain,
      dynamic transition,
      double? zoom,
      String? created,
      String? id,
      String? modified,
      String? owner,
      String? visibility,
      bool? protected,
      bool? draft});
}

/// @nodoc
class __$$ThemeRootImplCopyWithImpl<$Res>
    extends _$VectorThemeCopyWithImpl<$Res, _$ThemeRootImpl>
    implements _$$ThemeRootImplCopyWith<$Res> {
  __$$ThemeRootImplCopyWithImpl(
      _$ThemeRootImpl _value, $Res Function(_$ThemeRootImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? layers = null,
    Object? version = null,
    Object? bearing = null,
    Object? camera = freezed,
    Object? center = freezed,
    Object? fog = freezed,
    Object? fragment = null,
    Object? glyphs = null,
    Object? imports = freezed,
    Object? light = freezed,
    Object? lights = freezed,
    Object? metadata = freezed,
    Object? models = freezed,
    Object? name = null,
    Object? pitch = null,
    Object? projection = freezed,
    Object? schema = freezed,
    Object? sprite = freezed,
    Object? terrain = freezed,
    Object? transition = freezed,
    Object? zoom = freezed,
    Object? created = freezed,
    Object? id = freezed,
    Object? modified = freezed,
    Object? owner = freezed,
    Object? visibility = freezed,
    Object? protected = freezed,
    Object? draft = freezed,
  }) {
    return _then(_$ThemeRootImpl(
      layers: null == layers
          ? _value._layers
          : layers // ignore: cast_nullable_to_non_nullable
              as List<ThemeLayer>,
      version: null == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as int,
      bearing: null == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double,
      camera: freezed == camera
          ? _value.camera
          : camera // ignore: cast_nullable_to_non_nullable
              as dynamic,
      center: freezed == center
          ? _value._center
          : center // ignore: cast_nullable_to_non_nullable
              as List<double>?,
      fog: freezed == fog
          ? _value.fog
          : fog // ignore: cast_nullable_to_non_nullable
              as dynamic,
      fragment: null == fragment
          ? _value.fragment
          : fragment // ignore: cast_nullable_to_non_nullable
              as bool,
      glyphs: null == glyphs
          ? _value.glyphs
          : glyphs // ignore: cast_nullable_to_non_nullable
              as String,
      imports: freezed == imports
          ? _value._imports
          : imports // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      light: freezed == light
          ? _value.light
          : light // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lights: freezed == lights
          ? _value._lights
          : lights // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      metadata: freezed == metadata
          ? _value._metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as Map<String, Object?>?,
      models: freezed == models
          ? _value.models
          : models // ignore: cast_nullable_to_non_nullable
              as dynamic,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      pitch: null == pitch
          ? _value.pitch
          : pitch // ignore: cast_nullable_to_non_nullable
              as double,
      projection: freezed == projection
          ? _value.projection
          : projection // ignore: cast_nullable_to_non_nullable
              as dynamic,
      schema: freezed == schema
          ? _value.schema
          : schema // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sprite: freezed == sprite
          ? _value.sprite
          : sprite // ignore: cast_nullable_to_non_nullable
              as String?,
      terrain: freezed == terrain
          ? _value.terrain
          : terrain // ignore: cast_nullable_to_non_nullable
              as dynamic,
      transition: freezed == transition
          ? _value.transition
          : transition // ignore: cast_nullable_to_non_nullable
              as dynamic,
      zoom: freezed == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double?,
      created: freezed == created
          ? _value.created
          : created // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      modified: freezed == modified
          ? _value.modified
          : modified // ignore: cast_nullable_to_non_nullable
              as String?,
      owner: freezed == owner
          ? _value.owner
          : owner // ignore: cast_nullable_to_non_nullable
              as String?,
      visibility: freezed == visibility
          ? _value.visibility
          : visibility // ignore: cast_nullable_to_non_nullable
              as String?,
      protected: freezed == protected
          ? _value.protected
          : protected // ignore: cast_nullable_to_non_nullable
              as bool?,
      draft: freezed == draft
          ? _value.draft
          : draft // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeRootImpl implements _ThemeRoot {
  const _$ThemeRootImpl(
      {required final List<ThemeLayer> layers,
      @Assert('version == 8', 'Must be 8.') required this.version,
      this.bearing = 0,
      this.camera,
      @Assert('center.length == 2', 'longitude and latitude')
      final List<double>? center,
      required this.fog,
      required this.fragment,
      this.glyphs = 'mapbox://fonts/mapbox/{fontstack}/{range}.pbf',
      final List<dynamic>? imports,
      @Deprecated('This API is deprecated. Prefer using flat light type '
          'instead in the lights API.')
      this.light,
      final List<dynamic>? lights,
      final Map<String, Object?>? metadata,
      this.models,
      required this.name,
      this.pitch = 0,
      this.projection,
      this.schema,
      this.sprite,
      this.terrain,
      this.transition,
      this.zoom,
      this.created,
      this.id,
      this.modified,
      this.owner,
      this.visibility,
      this.protected,
      this.draft})
      : _layers = layers,
        _center = center,
        _imports = imports,
        _lights = lights,
        _metadata = metadata;

  factory _$ThemeRootImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeRootImplFromJson(json);

  /// Layers will be created in the order of this array.
  final List<ThemeLayer> _layers;

  /// Layers will be created in the order of this array.
  @override
  List<ThemeLayer> get layers {
    if (_layers is EqualUnmodifiableListView) return _layers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_layers);
  }

  /// Sources supply the data that will be displayed on the map.
//TODO required Map<String, ThemeSource> sources,
  /// Style specification version number. Must be 8.
  @override
  @Assert('version == 8', 'Must be 8.')
  final int version;

  /// Default bearing, in degrees. The bearing is the compass direction that
  /// is "up"; for example, a bearing of 90° orients the map so that east is
  /// up. This value will be used only if the map has not been positioned by
  /// other means (e.g. map options or user interaction).
  @override
  @JsonKey()
  final double bearing;

  /// Global setting to control additional camera intrinsics parameters,
  /// e.g. projection type (perspective / orthographic).
  @override
  final dynamic camera;

  /// Default map center in longitude and latitude. The style center will be
  /// used only if the map has not been positioned by other means
  /// (e.g. map options or user interaction).
  final List<double>? _center;

  /// Default map center in longitude and latitude. The style center will be
  /// used only if the map has not been positioned by other means
  /// (e.g. map options or user interaction).
  @override
  @Assert('center.length == 2', 'longitude and latitude')
  List<double>? get center {
    final value = _center;
    if (value == null) return null;
    if (_center is EqualUnmodifiableListView) return _center;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// A global effect that fades layers and markers based on their distance
  /// to the camera. The fog can be used to approximate the effect of
  /// atmosphere on distant objects and enhance the depth perception of the
  /// map when used with terrain or 3D features. Note: fog is renamed to
  /// atmosphere in the Android and iOS SDKs and planned to be changed in
  /// GL-JS v.3.0.0.
  @override
  final dynamic fog;

  /// Indicates that a style is a fragment style.
  @override
  final bool fragment;

  /// A URL template for loading signed-distance-field glyph sets in PBF
  /// format. The URL must include {fontstack} and {range} tokens. This
  /// property is required if any layer uses the text-field layout property.
  /// The URL must be absolute, containing the scheme, authority and path
  /// components.
  ///
  /// https://docs.mapbox.com/style-spec/reference/glyphs/
  @override
  @JsonKey()
  final String glyphs;

  /// Imports other styles into this style.
  final List<dynamic>? _imports;

  /// Imports other styles into this style.
  @override
  List<dynamic>? get imports {
    final value = _imports;
    if (value == null) return null;
    if (_imports is EqualUnmodifiableListView) return _imports;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// The global light source. Note: This API is deprecated. Prefer using
  /// flat light type instead in the lights API.
  @override
  @Deprecated('This API is deprecated. Prefer using flat light type '
      'instead in the lights API.')
  final dynamic light;

  /// Array of light sources affecting the whole map and the default for
  /// 3D style, mutually exclusive with the light property
  final List<dynamic>? _lights;

  /// Array of light sources affecting the whole map and the default for
  /// 3D style, mutually exclusive with the light property
  @override
  List<dynamic>? get lights {
    final value = _lights;
    if (value == null) return null;
    if (_lights is EqualUnmodifiableListView) return _lights;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Arbitrary properties useful to track with the stylesheet, but do not
  /// influence rendering. Properties should be prefixed to avoid collisions,
  /// like 'mapbox:'.
  final Map<String, Object?>? _metadata;

  /// Arbitrary properties useful to track with the stylesheet, but do not
  /// influence rendering. Properties should be prefixed to avoid collisions,
  /// like 'mapbox:'.
  @override
  Map<String, Object?>? get metadata {
    final value = _metadata;
    if (value == null) return null;
    if (_metadata is EqualUnmodifiableMapView) return _metadata;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  /// Specification of models used in the style.
  @override
  final dynamic models;

  /// A human-readable name for the style.
  @override
  final String name;

  /// Default pitch, in degrees. Zero is perpendicular to the surface, for a
  /// look straight down at the map, while a greater value like 60 looks
  /// ahead towards the horizon. The style pitch will be used only if the
  /// map has not been positioned by other means (e.g. map options or user
  /// interaction).
  @override
  @JsonKey()
  final double pitch;

  /// The projection the map should be rendered in. Supported projections
  /// are Mercator, Globe, Albers, Equal Earth, Equirectangular (WGS84),
  /// Lambert conformal conic, Natural Earth, and Winkel Tripel. Terrain, sky
  /// and fog are supported by only Mercator and globe. CustomLayerInterface
  /// is not supported outside of Mercator.
  @override
  final dynamic projection;

  /// Definition of the schema for configuration options.
  @override
  final dynamic schema;

  /// A base URL for retrieving the sprite image and metadata. The extensions
  /// .png, .json and scale factor @2x.png will be automatically appended.
  /// This property is required if any layer uses the background-pattern,
  /// fill-pattern, line-pattern, fill-extrusion-pattern, or icon-image
  /// properties. The URL must be absolute, containing the scheme, authority
  /// and path components.
  @override
  final String? sprite;

  /// A global modifier that elevates layers and markers based on a DEM
  /// data source.
  @override
  final dynamic terrain;

  /// A global transition definition to use as a default across properties,
  /// to be used for timing transitions between one value and the next when
  /// no property-specific transition is set. Collision-based symbol fading
  /// is controlled independently of the style's transition property.
  @override
  final dynamic transition;

  /// Default zoom level. The style zoom will be used only if the map has not
  /// been positioned by other means (e.g. map options or user interaction).
  @override
  final double? zoom;

  /// The date and time the style was created.
  ///
  /// Not used for rendering.
// TODO turn into DateTime
  @override
  final String? created;

  /// The ID of the style.
  ///
  /// Not used for rendering.
  @override
  final String? id;

  /// The date and time the style was last modified.
  ///
  /// Not used for rendering.
// TODO turn into DateTime
  @override
  final String? modified;

  /// The username of the style owner.
  ///
  /// Not used for rendering.
  @override
  final String? owner;

  /// Access control for the style, either public or private. Private styles
  /// require an access token belonging to the owner. Public styles may be
  /// requested with an access token belonging to any user.
  ///
  /// Not used for rendering.
  @override
  final String? visibility;

  /// Indicates whether the style is protected (true) or not (false).
  /// Protected styles cannot be edited and deleted.
  ///
  /// Not used for rendering.
  @override
  final bool? protected;

  /// Indicates whether the style is a draft (true) or whether it has been
  /// published (false).
  ///
  /// Not used for rendering.
  @override
  final bool? draft;

  @override
  String toString() {
    return 'VectorTheme(layers: $layers, version: $version, bearing: $bearing, camera: $camera, center: $center, fog: $fog, fragment: $fragment, glyphs: $glyphs, imports: $imports, light: $light, lights: $lights, metadata: $metadata, models: $models, name: $name, pitch: $pitch, projection: $projection, schema: $schema, sprite: $sprite, terrain: $terrain, transition: $transition, zoom: $zoom, created: $created, id: $id, modified: $modified, owner: $owner, visibility: $visibility, protected: $protected, draft: $draft)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeRootImpl &&
            const DeepCollectionEquality().equals(other._layers, _layers) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.bearing, bearing) || other.bearing == bearing) &&
            const DeepCollectionEquality().equals(other.camera, camera) &&
            const DeepCollectionEquality().equals(other._center, _center) &&
            const DeepCollectionEquality().equals(other.fog, fog) &&
            (identical(other.fragment, fragment) ||
                other.fragment == fragment) &&
            (identical(other.glyphs, glyphs) || other.glyphs == glyphs) &&
            const DeepCollectionEquality().equals(other._imports, _imports) &&
            const DeepCollectionEquality().equals(other.light, light) &&
            const DeepCollectionEquality().equals(other._lights, _lights) &&
            const DeepCollectionEquality().equals(other._metadata, _metadata) &&
            const DeepCollectionEquality().equals(other.models, models) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pitch, pitch) || other.pitch == pitch) &&
            const DeepCollectionEquality()
                .equals(other.projection, projection) &&
            const DeepCollectionEquality().equals(other.schema, schema) &&
            (identical(other.sprite, sprite) || other.sprite == sprite) &&
            const DeepCollectionEquality().equals(other.terrain, terrain) &&
            const DeepCollectionEquality()
                .equals(other.transition, transition) &&
            (identical(other.zoom, zoom) || other.zoom == zoom) &&
            (identical(other.created, created) || other.created == created) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.modified, modified) ||
                other.modified == modified) &&
            (identical(other.owner, owner) || other.owner == owner) &&
            (identical(other.visibility, visibility) ||
                other.visibility == visibility) &&
            (identical(other.protected, protected) ||
                other.protected == protected) &&
            (identical(other.draft, draft) || other.draft == draft));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(_layers),
        version,
        bearing,
        const DeepCollectionEquality().hash(camera),
        const DeepCollectionEquality().hash(_center),
        const DeepCollectionEquality().hash(fog),
        fragment,
        glyphs,
        const DeepCollectionEquality().hash(_imports),
        const DeepCollectionEquality().hash(light),
        const DeepCollectionEquality().hash(_lights),
        const DeepCollectionEquality().hash(_metadata),
        const DeepCollectionEquality().hash(models),
        name,
        pitch,
        const DeepCollectionEquality().hash(projection),
        const DeepCollectionEquality().hash(schema),
        sprite,
        const DeepCollectionEquality().hash(terrain),
        const DeepCollectionEquality().hash(transition),
        zoom,
        created,
        id,
        modified,
        owner,
        visibility,
        protected,
        draft
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeRootImplCopyWith<_$ThemeRootImpl> get copyWith =>
      __$$ThemeRootImplCopyWithImpl<_$ThemeRootImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeRootImplToJson(
      this,
    );
  }
}

abstract class _ThemeRoot implements VectorTheme {
  const factory _ThemeRoot(
      {required final List<ThemeLayer> layers,
      @Assert('version == 8', 'Must be 8.') required final int version,
      final double bearing,
      final dynamic camera,
      @Assert('center.length == 2', 'longitude and latitude')
      final List<double>? center,
      required final dynamic fog,
      required final bool fragment,
      final String glyphs,
      final List<dynamic>? imports,
      @Deprecated('This API is deprecated. Prefer using flat light type '
          'instead in the lights API.')
      final dynamic light,
      final List<dynamic>? lights,
      final Map<String, Object?>? metadata,
      final dynamic models,
      required final String name,
      final double pitch,
      final dynamic projection,
      final dynamic schema,
      final String? sprite,
      final dynamic terrain,
      final dynamic transition,
      final double? zoom,
      final String? created,
      final String? id,
      final String? modified,
      final String? owner,
      final String? visibility,
      final bool? protected,
      final bool? draft}) = _$ThemeRootImpl;

  factory _ThemeRoot.fromJson(Map<String, dynamic> json) =
      _$ThemeRootImpl.fromJson;

  @override

  /// Layers will be created in the order of this array.
  List<ThemeLayer> get layers;
  @override

  /// Sources supply the data that will be displayed on the map.
//TODO required Map<String, ThemeSource> sources,
  /// Style specification version number. Must be 8.
  @Assert('version == 8', 'Must be 8.')
  int get version;
  @override

  /// Default bearing, in degrees. The bearing is the compass direction that
  /// is "up"; for example, a bearing of 90° orients the map so that east is
  /// up. This value will be used only if the map has not been positioned by
  /// other means (e.g. map options or user interaction).
  double get bearing;
  @override

  /// Global setting to control additional camera intrinsics parameters,
  /// e.g. projection type (perspective / orthographic).
  dynamic get camera;
  @override

  /// Default map center in longitude and latitude. The style center will be
  /// used only if the map has not been positioned by other means
  /// (e.g. map options or user interaction).
  @Assert('center.length == 2', 'longitude and latitude')
  List<double>? get center;
  @override

  /// A global effect that fades layers and markers based on their distance
  /// to the camera. The fog can be used to approximate the effect of
  /// atmosphere on distant objects and enhance the depth perception of the
  /// map when used with terrain or 3D features. Note: fog is renamed to
  /// atmosphere in the Android and iOS SDKs and planned to be changed in
  /// GL-JS v.3.0.0.
  dynamic get fog;
  @override

  /// Indicates that a style is a fragment style.
  bool get fragment;
  @override

  /// A URL template for loading signed-distance-field glyph sets in PBF
  /// format. The URL must include {fontstack} and {range} tokens. This
  /// property is required if any layer uses the text-field layout property.
  /// The URL must be absolute, containing the scheme, authority and path
  /// components.
  ///
  /// https://docs.mapbox.com/style-spec/reference/glyphs/
  String get glyphs;
  @override

  /// Imports other styles into this style.
  List<dynamic>? get imports;
  @override

  /// The global light source. Note: This API is deprecated. Prefer using
  /// flat light type instead in the lights API.
  @Deprecated('This API is deprecated. Prefer using flat light type '
      'instead in the lights API.')
  dynamic get light;
  @override

  /// Array of light sources affecting the whole map and the default for
  /// 3D style, mutually exclusive with the light property
  List<dynamic>? get lights;
  @override

  /// Arbitrary properties useful to track with the stylesheet, but do not
  /// influence rendering. Properties should be prefixed to avoid collisions,
  /// like 'mapbox:'.
  Map<String, Object?>? get metadata;
  @override

  /// Specification of models used in the style.
  dynamic get models;
  @override

  /// A human-readable name for the style.
  String get name;
  @override

  /// Default pitch, in degrees. Zero is perpendicular to the surface, for a
  /// look straight down at the map, while a greater value like 60 looks
  /// ahead towards the horizon. The style pitch will be used only if the
  /// map has not been positioned by other means (e.g. map options or user
  /// interaction).
  double get pitch;
  @override

  /// The projection the map should be rendered in. Supported projections
  /// are Mercator, Globe, Albers, Equal Earth, Equirectangular (WGS84),
  /// Lambert conformal conic, Natural Earth, and Winkel Tripel. Terrain, sky
  /// and fog are supported by only Mercator and globe. CustomLayerInterface
  /// is not supported outside of Mercator.
  dynamic get projection;
  @override

  /// Definition of the schema for configuration options.
  dynamic get schema;
  @override

  /// A base URL for retrieving the sprite image and metadata. The extensions
  /// .png, .json and scale factor @2x.png will be automatically appended.
  /// This property is required if any layer uses the background-pattern,
  /// fill-pattern, line-pattern, fill-extrusion-pattern, or icon-image
  /// properties. The URL must be absolute, containing the scheme, authority
  /// and path components.
  String? get sprite;
  @override

  /// A global modifier that elevates layers and markers based on a DEM
  /// data source.
  dynamic get terrain;
  @override

  /// A global transition definition to use as a default across properties,
  /// to be used for timing transitions between one value and the next when
  /// no property-specific transition is set. Collision-based symbol fading
  /// is controlled independently of the style's transition property.
  dynamic get transition;
  @override

  /// Default zoom level. The style zoom will be used only if the map has not
  /// been positioned by other means (e.g. map options or user interaction).
  double? get zoom;
  @override

  /// The date and time the style was created.
  ///
  /// Not used for rendering.
// TODO turn into DateTime
  String? get created;
  @override

  /// The ID of the style.
  ///
  /// Not used for rendering.
  String? get id;
  @override

  /// The date and time the style was last modified.
  ///
  /// Not used for rendering.
// TODO turn into DateTime
  String? get modified;
  @override

  /// The username of the style owner.
  ///
  /// Not used for rendering.
  String? get owner;
  @override

  /// Access control for the style, either public or private. Private styles
  /// require an access token belonging to the owner. Public styles may be
  /// requested with an access token belonging to any user.
  ///
  /// Not used for rendering.
  String? get visibility;
  @override

  /// Indicates whether the style is protected (true) or not (false).
  /// Protected styles cannot be edited and deleted.
  ///
  /// Not used for rendering.
  bool? get protected;
  @override

  /// Indicates whether the style is a draft (true) or whether it has been
  /// published (false).
  ///
  /// Not used for rendering.
  bool? get draft;
  @override
  @JsonKey(ignore: true)
  _$$ThemeRootImplCopyWith<_$ThemeRootImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
