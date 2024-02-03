// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geojson_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeGeoJsonSourceImpl _$$ThemeGeoJsonSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeGeoJsonSourceImpl(
      attribution: json['attribution'] as String?,
      buffer: json['buffer'] as int? ?? 128,
      cluster: json['cluster'] as bool? ?? false,
      clusterMaxZoom: json['clusterMaxZoom'] as int?,
      clusterMinPoints: json['clusterMinPoints'] as int? ?? 2,
      clusterProperties: json['clusterProperties'],
      clusterRadius: (json['clusterRadius'] as num?)?.toDouble() ?? 50,
      data: json['data'],
      filter: json['filter'],
      generateId: json['generateId'] as bool? ?? false,
      lineMetrics: json['lineMetrics'] as bool? ?? false,
      maxZoom: json['maxZoom'] as int? ?? 18,
      promoteId: json['promoteId'],
      tolerance: (json['tolerance'] as num?)?.toDouble() ?? 0.375,
    );

Map<String, dynamic> _$$ThemeGeoJsonSourceImplToJson(
        _$ThemeGeoJsonSourceImpl instance) =>
    <String, dynamic>{
      'attribution': instance.attribution,
      'buffer': instance.buffer,
      'cluster': instance.cluster,
      'clusterMaxZoom': instance.clusterMaxZoom,
      'clusterMinPoints': instance.clusterMinPoints,
      'clusterProperties': instance.clusterProperties,
      'clusterRadius': instance.clusterRadius,
      'data': instance.data,
      'filter': instance.filter,
      'generateId': instance.generateId,
      'lineMetrics': instance.lineMetrics,
      'maxZoom': instance.maxZoom,
      'promoteId': instance.promoteId,
      'tolerance': instance.tolerance,
    };
