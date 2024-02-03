// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeImageSourceImpl _$$ThemeImageSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeImageSourceImpl(
      type: $enumDecode(_$ThemeSourceTypeEnumMap, json['type']),
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ThemeImageSourceImplToJson(
        _$ThemeImageSourceImpl instance) =>
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
