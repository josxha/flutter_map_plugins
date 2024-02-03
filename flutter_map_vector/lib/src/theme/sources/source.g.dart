// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeSourceImpl _$$ThemeSourceImplFromJson(Map<String, dynamic> json) =>
    _$ThemeSourceImpl(
      type: $enumDecode(_$ThemeSourceTypeEnumMap, json['type']),
    );

Map<String, dynamic> _$$ThemeSourceImplToJson(_$ThemeSourceImpl instance) =>
    <String, dynamic>{
      'type': _$ThemeSourceTypeEnumMap[instance.type]!,
    };

const _$ThemeSourceTypeEnumMap = {
  ThemeSourceType.vector: 'vector',
  ThemeSourceType.raster: 'raster',
  ThemeSourceType.rasterDem: 'rasterDem',
  ThemeSourceType.geojson: 'geojson',
  ThemeSourceType.image: 'image',
  ThemeSourceType.video: 'video',
};
