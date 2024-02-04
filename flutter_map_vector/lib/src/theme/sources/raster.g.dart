// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raster.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeRasterSourceImpl _$$ThemeRasterSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeRasterSourceImpl(
      type: $enumDecode(_$ThemeSourceTypeEnumMap, json['type']),
      attribution: json['attribution'] as String?,
      bounds: (json['bounds'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [-180, -85.051129, 180, 85.051129],
      maxZoom: json['maxZoom'] as int? ?? 22,
      minZoom: json['minZoom'] as int? ?? 0,
      scheme: $enumDecodeNullable(_$ThemeSourceSchemeEnumMap, json['scheme']) ??
          ThemeSourceScheme.xyz,
      tiles:
          (json['tiles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tileSize: (json['tileSize'] as num?)?.toDouble() ?? 512,
      url: json['url'] as String?,
      volatile: json['volatile'] as bool? ?? false,
    );

Map<String, dynamic> _$$ThemeRasterSourceImplToJson(
        _$ThemeRasterSourceImpl instance) =>
    <String, dynamic>{
      'type': _$ThemeSourceTypeEnumMap[instance.type]!,
      'attribution': instance.attribution,
      'bounds': instance.bounds,
      'maxZoom': instance.maxZoom,
      'minZoom': instance.minZoom,
      'scheme': _$ThemeSourceSchemeEnumMap[instance.scheme]!,
      'tiles': instance.tiles,
      'tileSize': instance.tileSize,
      'url': instance.url,
      'volatile': instance.volatile,
    };

const _$ThemeSourceTypeEnumMap = {
  ThemeSourceType.vector: 'vector',
  ThemeSourceType.raster: 'raster',
  ThemeSourceType.rasterDem: 'rasterDem',
  ThemeSourceType.geojson: 'geojson',
  ThemeSourceType.image: 'image',
  ThemeSourceType.video: 'video',
};

const _$ThemeSourceSchemeEnumMap = {
  ThemeSourceScheme.xyz: 'xyz',
  ThemeSourceScheme.tms: 'tms',
};
