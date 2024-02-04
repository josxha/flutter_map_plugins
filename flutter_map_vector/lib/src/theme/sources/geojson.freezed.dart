// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geojson.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ThemeGeoJsonSource _$ThemeGeoJsonSourceFromJson(Map<String, dynamic> json) {
  return _ThemeGeoJsonSource.fromJson(json);
}

/// @nodoc
mixin _$ThemeGeoJsonSource {
  ThemeSourceType get type => throw _privateConstructorUsedError;

  /// Contains an attribution to be displayed when the map is shown to a user.
  String? get attribution => throw _privateConstructorUsedError;

  /// Size of the tile buffer on each side. A value of 0 produces no buffer.
  /// A value of 512 produces a buffer as wide as the tile itself. Larger
  /// values produce fewer rendering artifacts near tile edges and slower
  /// performance.
  @Assert('buffer >= 0 && buffer <= 512',
      'Buffer value must be between 0 and 512 inclusive.')
  int get buffer => throw _privateConstructorUsedError;

  /// If the data is a collection of point features, setting this to true
  /// clusters the points by radius into groups. Cluster groups become new
  /// Point features in the source with additional properties:
  ///
  /// - cluster Is true if the point is a cluster
  /// - cluster_id A unqiue id for the cluster to be used in conjunction with
  ///   the cluster inspection methods
  /// - point_count Number of original points grouped into this cluster
  /// - point_count_abbreviated An abbreviated point count
  bool get cluster => throw _privateConstructorUsedError;

  /// Max zoom on which to cluster points if clustering is enabled. Defaults
  /// to one zoom less than maxzoom (so that last zoom features are not
  /// clustered). Clusters are re-evaluated at integer zoom levels so setting
  /// clusterMaxZoom to 14 means the clusters will be displayed until z15.
  int? get clusterMaxZoom => throw _privateConstructorUsedError;

  /// Minimum number of points necessary to form a cluster if clustering is
  /// enabled. Defaults to 2.
  int? get clusterMinPoints => throw _privateConstructorUsedError;

  /// An object defining custom properties on the generated clusters if
  /// clustering is enabled, aggregating values from clustered points. Has
  /// the form {"property_name": [operator, map_expression]}. operator is
  /// any expression function that accepts at least 2 operands (e.g. "+" or
  /// "max") — it accumulates the property value from clusters/points the
  /// cluster contains; map_expression produces the value of a single point.
  ///
  /// Example: {"sum": ["+", ["get", "scalerank"]]}.
  ///
  /// For more advanced use cases, in place of operator, you can use a custom
  /// reduce expression that references a special ["accumulated"] value, e.g.:
  /// {"sum": [["+", ["accumulated"], ["get", "sum"]], ["get", "scalerank"]]}
  dynamic get clusterProperties => throw _privateConstructorUsedError;

  /// Radius of each cluster if clustering is enabled. A value of 512
  /// indicates a radius equal to the width of a tile.
  @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
  double? get clusterRadius => throw _privateConstructorUsedError;

  /// A URL to a GeoJSON file, or inline GeoJSON.
  dynamic get data => throw _privateConstructorUsedError;

  /// An expression for filtering features prior to processing them
  /// for rendering.
  dynamic get filter => throw _privateConstructorUsedError;

  /// Whether to generate ids for the geojson features. When enabled, the
  /// feature.id property will be auto assigned based on its index in the
  /// features array, over-writing any previous values.
  bool get generateId => throw _privateConstructorUsedError;

  /// Whether to calculate line distance metrics. This is required for line
  /// layers that specify line-gradient values.
  bool get lineMetrics => throw _privateConstructorUsedError;

  /// Maximum zoom level at which to create vector tiles (higher means
  /// greater detail at high zoom levels).
  int get maxZoom => throw _privateConstructorUsedError;

  /// A property to use as a feature id (for feature state). Either a
  /// property name, or an object of the form {<sourceLayer>: <propertyName>}.
  dynamic get promoteId => throw _privateConstructorUsedError;

  /// Douglas-Peucker simplification tolerance (higher means simpler
  /// geometries and faster performance).
  double get tolerance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ThemeGeoJsonSourceCopyWith<ThemeGeoJsonSource> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ThemeGeoJsonSourceCopyWith<$Res> {
  factory $ThemeGeoJsonSourceCopyWith(
          ThemeGeoJsonSource value, $Res Function(ThemeGeoJsonSource) then) =
      _$ThemeGeoJsonSourceCopyWithImpl<$Res, ThemeGeoJsonSource>;
  @useResult
  $Res call(
      {ThemeSourceType type,
      String? attribution,
      @Assert('buffer >= 0 && buffer <= 512',
          'Buffer value must be between 0 and 512 inclusive.')
      int buffer,
      bool cluster,
      int? clusterMaxZoom,
      int? clusterMinPoints,
      dynamic clusterProperties,
      @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
      double? clusterRadius,
      dynamic data,
      dynamic filter,
      bool generateId,
      bool lineMetrics,
      int maxZoom,
      dynamic promoteId,
      double tolerance});
}

/// @nodoc
class _$ThemeGeoJsonSourceCopyWithImpl<$Res, $Val extends ThemeGeoJsonSource>
    implements $ThemeGeoJsonSourceCopyWith<$Res> {
  _$ThemeGeoJsonSourceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? attribution = freezed,
    Object? buffer = null,
    Object? cluster = null,
    Object? clusterMaxZoom = freezed,
    Object? clusterMinPoints = freezed,
    Object? clusterProperties = freezed,
    Object? clusterRadius = freezed,
    Object? data = freezed,
    Object? filter = freezed,
    Object? generateId = null,
    Object? lineMetrics = null,
    Object? maxZoom = null,
    Object? promoteId = freezed,
    Object? tolerance = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeSourceType,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
      buffer: null == buffer
          ? _value.buffer
          : buffer // ignore: cast_nullable_to_non_nullable
              as int,
      cluster: null == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as bool,
      clusterMaxZoom: freezed == clusterMaxZoom
          ? _value.clusterMaxZoom
          : clusterMaxZoom // ignore: cast_nullable_to_non_nullable
              as int?,
      clusterMinPoints: freezed == clusterMinPoints
          ? _value.clusterMinPoints
          : clusterMinPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      clusterProperties: freezed == clusterProperties
          ? _value.clusterProperties
          : clusterProperties // ignore: cast_nullable_to_non_nullable
              as dynamic,
      clusterRadius: freezed == clusterRadius
          ? _value.clusterRadius
          : clusterRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      generateId: null == generateId
          ? _value.generateId
          : generateId // ignore: cast_nullable_to_non_nullable
              as bool,
      lineMetrics: null == lineMetrics
          ? _value.lineMetrics
          : lineMetrics // ignore: cast_nullable_to_non_nullable
              as bool,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
      promoteId: freezed == promoteId
          ? _value.promoteId
          : promoteId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tolerance: null == tolerance
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ThemeGeoJsonSourceImplCopyWith<$Res>
    implements $ThemeGeoJsonSourceCopyWith<$Res> {
  factory _$$ThemeGeoJsonSourceImplCopyWith(_$ThemeGeoJsonSourceImpl value,
          $Res Function(_$ThemeGeoJsonSourceImpl) then) =
      __$$ThemeGeoJsonSourceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ThemeSourceType type,
      String? attribution,
      @Assert('buffer >= 0 && buffer <= 512',
          'Buffer value must be between 0 and 512 inclusive.')
      int buffer,
      bool cluster,
      int? clusterMaxZoom,
      int? clusterMinPoints,
      dynamic clusterProperties,
      @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
      double? clusterRadius,
      dynamic data,
      dynamic filter,
      bool generateId,
      bool lineMetrics,
      int maxZoom,
      dynamic promoteId,
      double tolerance});
}

/// @nodoc
class __$$ThemeGeoJsonSourceImplCopyWithImpl<$Res>
    extends _$ThemeGeoJsonSourceCopyWithImpl<$Res, _$ThemeGeoJsonSourceImpl>
    implements _$$ThemeGeoJsonSourceImplCopyWith<$Res> {
  __$$ThemeGeoJsonSourceImplCopyWithImpl(_$ThemeGeoJsonSourceImpl _value,
      $Res Function(_$ThemeGeoJsonSourceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? attribution = freezed,
    Object? buffer = null,
    Object? cluster = null,
    Object? clusterMaxZoom = freezed,
    Object? clusterMinPoints = freezed,
    Object? clusterProperties = freezed,
    Object? clusterRadius = freezed,
    Object? data = freezed,
    Object? filter = freezed,
    Object? generateId = null,
    Object? lineMetrics = null,
    Object? maxZoom = null,
    Object? promoteId = freezed,
    Object? tolerance = null,
  }) {
    return _then(_$ThemeGeoJsonSourceImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ThemeSourceType,
      attribution: freezed == attribution
          ? _value.attribution
          : attribution // ignore: cast_nullable_to_non_nullable
              as String?,
      buffer: null == buffer
          ? _value.buffer
          : buffer // ignore: cast_nullable_to_non_nullable
              as int,
      cluster: null == cluster
          ? _value.cluster
          : cluster // ignore: cast_nullable_to_non_nullable
              as bool,
      clusterMaxZoom: freezed == clusterMaxZoom
          ? _value.clusterMaxZoom
          : clusterMaxZoom // ignore: cast_nullable_to_non_nullable
              as int?,
      clusterMinPoints: freezed == clusterMinPoints
          ? _value.clusterMinPoints
          : clusterMinPoints // ignore: cast_nullable_to_non_nullable
              as int?,
      clusterProperties: freezed == clusterProperties
          ? _value.clusterProperties
          : clusterProperties // ignore: cast_nullable_to_non_nullable
              as dynamic,
      clusterRadius: freezed == clusterRadius
          ? _value.clusterRadius
          : clusterRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
      filter: freezed == filter
          ? _value.filter
          : filter // ignore: cast_nullable_to_non_nullable
              as dynamic,
      generateId: null == generateId
          ? _value.generateId
          : generateId // ignore: cast_nullable_to_non_nullable
              as bool,
      lineMetrics: null == lineMetrics
          ? _value.lineMetrics
          : lineMetrics // ignore: cast_nullable_to_non_nullable
              as bool,
      maxZoom: null == maxZoom
          ? _value.maxZoom
          : maxZoom // ignore: cast_nullable_to_non_nullable
              as int,
      promoteId: freezed == promoteId
          ? _value.promoteId
          : promoteId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      tolerance: null == tolerance
          ? _value.tolerance
          : tolerance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ThemeGeoJsonSourceImpl implements _ThemeGeoJsonSource {
  const _$ThemeGeoJsonSourceImpl(
      {required this.type,
      this.attribution,
      @Assert('buffer >= 0 && buffer <= 512',
          'Buffer value must be between 0 and 512 inclusive.')
      this.buffer = 128,
      this.cluster = false,
      this.clusterMaxZoom,
      this.clusterMinPoints = 2,
      this.clusterProperties,
      @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
      this.clusterRadius = 50,
      this.data,
      this.filter,
      this.generateId = false,
      this.lineMetrics = false,
      this.maxZoom = 18,
      this.promoteId,
      this.tolerance = 0.375});

  factory _$ThemeGeoJsonSourceImpl.fromJson(Map<String, dynamic> json) =>
      _$$ThemeGeoJsonSourceImplFromJson(json);

  @override
  final ThemeSourceType type;

  /// Contains an attribution to be displayed when the map is shown to a user.
  @override
  final String? attribution;

  /// Size of the tile buffer on each side. A value of 0 produces no buffer.
  /// A value of 512 produces a buffer as wide as the tile itself. Larger
  /// values produce fewer rendering artifacts near tile edges and slower
  /// performance.
  @override
  @JsonKey()
  @Assert('buffer >= 0 && buffer <= 512',
      'Buffer value must be between 0 and 512 inclusive.')
  final int buffer;

  /// If the data is a collection of point features, setting this to true
  /// clusters the points by radius into groups. Cluster groups become new
  /// Point features in the source with additional properties:
  ///
  /// - cluster Is true if the point is a cluster
  /// - cluster_id A unqiue id for the cluster to be used in conjunction with
  ///   the cluster inspection methods
  /// - point_count Number of original points grouped into this cluster
  /// - point_count_abbreviated An abbreviated point count
  @override
  @JsonKey()
  final bool cluster;

  /// Max zoom on which to cluster points if clustering is enabled. Defaults
  /// to one zoom less than maxzoom (so that last zoom features are not
  /// clustered). Clusters are re-evaluated at integer zoom levels so setting
  /// clusterMaxZoom to 14 means the clusters will be displayed until z15.
  @override
  final int? clusterMaxZoom;

  /// Minimum number of points necessary to form a cluster if clustering is
  /// enabled. Defaults to 2.
  @override
  @JsonKey()
  final int? clusterMinPoints;

  /// An object defining custom properties on the generated clusters if
  /// clustering is enabled, aggregating values from clustered points. Has
  /// the form {"property_name": [operator, map_expression]}. operator is
  /// any expression function that accepts at least 2 operands (e.g. "+" or
  /// "max") — it accumulates the property value from clusters/points the
  /// cluster contains; map_expression produces the value of a single point.
  ///
  /// Example: {"sum": ["+", ["get", "scalerank"]]}.
  ///
  /// For more advanced use cases, in place of operator, you can use a custom
  /// reduce expression that references a special ["accumulated"] value, e.g.:
  /// {"sum": [["+", ["accumulated"], ["get", "sum"]], ["get", "scalerank"]]}
  @override
  final dynamic clusterProperties;

  /// Radius of each cluster if clustering is enabled. A value of 512
  /// indicates a radius equal to the width of a tile.
  @override
  @JsonKey()
  @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
  final double? clusterRadius;

  /// A URL to a GeoJSON file, or inline GeoJSON.
  @override
  final dynamic data;

  /// An expression for filtering features prior to processing them
  /// for rendering.
  @override
  final dynamic filter;

  /// Whether to generate ids for the geojson features. When enabled, the
  /// feature.id property will be auto assigned based on its index in the
  /// features array, over-writing any previous values.
  @override
  @JsonKey()
  final bool generateId;

  /// Whether to calculate line distance metrics. This is required for line
  /// layers that specify line-gradient values.
  @override
  @JsonKey()
  final bool lineMetrics;

  /// Maximum zoom level at which to create vector tiles (higher means
  /// greater detail at high zoom levels).
  @override
  @JsonKey()
  final int maxZoom;

  /// A property to use as a feature id (for feature state). Either a
  /// property name, or an object of the form {<sourceLayer>: <propertyName>}.
  @override
  final dynamic promoteId;

  /// Douglas-Peucker simplification tolerance (higher means simpler
  /// geometries and faster performance).
  @override
  @JsonKey()
  final double tolerance;

  @override
  String toString() {
    return 'ThemeGeoJsonSource(type: $type, attribution: $attribution, buffer: $buffer, cluster: $cluster, clusterMaxZoom: $clusterMaxZoom, clusterMinPoints: $clusterMinPoints, clusterProperties: $clusterProperties, clusterRadius: $clusterRadius, data: $data, filter: $filter, generateId: $generateId, lineMetrics: $lineMetrics, maxZoom: $maxZoom, promoteId: $promoteId, tolerance: $tolerance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ThemeGeoJsonSourceImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.attribution, attribution) ||
                other.attribution == attribution) &&
            (identical(other.buffer, buffer) || other.buffer == buffer) &&
            (identical(other.cluster, cluster) || other.cluster == cluster) &&
            (identical(other.clusterMaxZoom, clusterMaxZoom) ||
                other.clusterMaxZoom == clusterMaxZoom) &&
            (identical(other.clusterMinPoints, clusterMinPoints) ||
                other.clusterMinPoints == clusterMinPoints) &&
            const DeepCollectionEquality()
                .equals(other.clusterProperties, clusterProperties) &&
            (identical(other.clusterRadius, clusterRadius) ||
                other.clusterRadius == clusterRadius) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality().equals(other.filter, filter) &&
            (identical(other.generateId, generateId) ||
                other.generateId == generateId) &&
            (identical(other.lineMetrics, lineMetrics) ||
                other.lineMetrics == lineMetrics) &&
            (identical(other.maxZoom, maxZoom) || other.maxZoom == maxZoom) &&
            const DeepCollectionEquality().equals(other.promoteId, promoteId) &&
            (identical(other.tolerance, tolerance) ||
                other.tolerance == tolerance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      type,
      attribution,
      buffer,
      cluster,
      clusterMaxZoom,
      clusterMinPoints,
      const DeepCollectionEquality().hash(clusterProperties),
      clusterRadius,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(filter),
      generateId,
      lineMetrics,
      maxZoom,
      const DeepCollectionEquality().hash(promoteId),
      tolerance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ThemeGeoJsonSourceImplCopyWith<_$ThemeGeoJsonSourceImpl> get copyWith =>
      __$$ThemeGeoJsonSourceImplCopyWithImpl<_$ThemeGeoJsonSourceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ThemeGeoJsonSourceImplToJson(
      this,
    );
  }
}

abstract class _ThemeGeoJsonSource implements ThemeGeoJsonSource, ThemeSource {
  const factory _ThemeGeoJsonSource(
      {required final ThemeSourceType type,
      final String? attribution,
      @Assert('buffer >= 0 && buffer <= 512',
          'Buffer value must be between 0 and 512 inclusive.')
      final int buffer,
      final bool cluster,
      final int? clusterMaxZoom,
      final int? clusterMinPoints,
      final dynamic clusterProperties,
      @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
      final double? clusterRadius,
      final dynamic data,
      final dynamic filter,
      final bool generateId,
      final bool lineMetrics,
      final int maxZoom,
      final dynamic promoteId,
      final double tolerance}) = _$ThemeGeoJsonSourceImpl;

  factory _ThemeGeoJsonSource.fromJson(Map<String, dynamic> json) =
      _$ThemeGeoJsonSourceImpl.fromJson;

  @override
  ThemeSourceType get type;
  @override

  /// Contains an attribution to be displayed when the map is shown to a user.
  String? get attribution;
  @override

  /// Size of the tile buffer on each side. A value of 0 produces no buffer.
  /// A value of 512 produces a buffer as wide as the tile itself. Larger
  /// values produce fewer rendering artifacts near tile edges and slower
  /// performance.
  @Assert('buffer >= 0 && buffer <= 512',
      'Buffer value must be between 0 and 512 inclusive.')
  int get buffer;
  @override

  /// If the data is a collection of point features, setting this to true
  /// clusters the points by radius into groups. Cluster groups become new
  /// Point features in the source with additional properties:
  ///
  /// - cluster Is true if the point is a cluster
  /// - cluster_id A unqiue id for the cluster to be used in conjunction with
  ///   the cluster inspection methods
  /// - point_count Number of original points grouped into this cluster
  /// - point_count_abbreviated An abbreviated point count
  bool get cluster;
  @override

  /// Max zoom on which to cluster points if clustering is enabled. Defaults
  /// to one zoom less than maxzoom (so that last zoom features are not
  /// clustered). Clusters are re-evaluated at integer zoom levels so setting
  /// clusterMaxZoom to 14 means the clusters will be displayed until z15.
  int? get clusterMaxZoom;
  @override

  /// Minimum number of points necessary to form a cluster if clustering is
  /// enabled. Defaults to 2.
  int? get clusterMinPoints;
  @override

  /// An object defining custom properties on the generated clusters if
  /// clustering is enabled, aggregating values from clustered points. Has
  /// the form {"property_name": [operator, map_expression]}. operator is
  /// any expression function that accepts at least 2 operands (e.g. "+" or
  /// "max") — it accumulates the property value from clusters/points the
  /// cluster contains; map_expression produces the value of a single point.
  ///
  /// Example: {"sum": ["+", ["get", "scalerank"]]}.
  ///
  /// For more advanced use cases, in place of operator, you can use a custom
  /// reduce expression that references a special ["accumulated"] value, e.g.:
  /// {"sum": [["+", ["accumulated"], ["get", "sum"]], ["get", "scalerank"]]}
  dynamic get clusterProperties;
  @override

  /// Radius of each cluster if clustering is enabled. A value of 512
  /// indicates a radius equal to the width of a tile.
  @Assert('clusterRadius >= 0', 'Required to be greater than or equal to 0')
  double? get clusterRadius;
  @override

  /// A URL to a GeoJSON file, or inline GeoJSON.
  dynamic get data;
  @override

  /// An expression for filtering features prior to processing them
  /// for rendering.
  dynamic get filter;
  @override

  /// Whether to generate ids for the geojson features. When enabled, the
  /// feature.id property will be auto assigned based on its index in the
  /// features array, over-writing any previous values.
  bool get generateId;
  @override

  /// Whether to calculate line distance metrics. This is required for line
  /// layers that specify line-gradient values.
  bool get lineMetrics;
  @override

  /// Maximum zoom level at which to create vector tiles (higher means
  /// greater detail at high zoom levels).
  int get maxZoom;
  @override

  /// A property to use as a feature id (for feature state). Either a
  /// property name, or an object of the form {<sourceLayer>: <propertyName>}.
  dynamic get promoteId;
  @override

  /// Douglas-Peucker simplification tolerance (higher means simpler
  /// geometries and faster performance).
  double get tolerance;
  @override
  @JsonKey(ignore: true)
  _$$ThemeGeoJsonSourceImplCopyWith<_$ThemeGeoJsonSourceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
