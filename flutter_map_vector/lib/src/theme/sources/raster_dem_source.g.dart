// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'raster_dem_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeRasterDemSourceImpl _$$ThemeRasterDemSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeRasterDemSourceImpl(
      attribution: json['attribution'] as String?,
      bounds: (json['bounds'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [-180, -85.051129, 180, 85.051129],
      encoding:
          $enumDecodeNullable(_$RasterDemEncodingEnumMap, json['encoding']) ??
              RasterDemEncoding.mapbox,
      maxZoom: json['maxZoom'] as int? ?? 22,
      minZoom: json['minZoom'] as int? ?? 0,
      tiles:
          (json['tiles'] as List<dynamic>?)?.map((e) => e as String).toList(),
      tileSize: (json['tileSize'] as num?)?.toDouble() ?? 512,
      url: json['url'] as String?,
      volatile: json['volatile'] as bool? ?? false,
    );

Map<String, dynamic> _$$ThemeRasterDemSourceImplToJson(
        _$ThemeRasterDemSourceImpl instance) =>
    <String, dynamic>{
      'attribution': instance.attribution,
      'bounds': instance.bounds,
      'encoding': _$RasterDemEncodingEnumMap[instance.encoding]!,
      'maxZoom': instance.maxZoom,
      'minZoom': instance.minZoom,
      'tiles': instance.tiles,
      'tileSize': instance.tileSize,
      'url': instance.url,
      'volatile': instance.volatile,
    };

const _$RasterDemEncodingEnumMap = {
  RasterDemEncoding.terrarium: 'terrarium',
  RasterDemEncoding.mapbox: 'mapbox',
};
