// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeVideoSourceImpl _$$ThemeVideoSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeVideoSourceImpl(
      type: $enumDecode(_$ThemeSourceTypeEnumMap, json['type']),
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ThemeVideoSourceImplToJson(
        _$ThemeVideoSourceImpl instance) =>
    <String, dynamic>{
      'type': _$ThemeSourceTypeEnumMap[instance.type]!,
      'coordinates': instance.coordinates,
      'url': instance.url,
    };

const _$ThemeSourceTypeEnumMap = {
  ThemeSourceType.vector: 'vector',
  ThemeSourceType.raster: 'raster',
  ThemeSourceType.rasterDem: 'rasterDem',
  ThemeSourceType.geojson: 'geojson',
  ThemeSourceType.image: 'image',
  ThemeSourceType.video: 'video',
};
