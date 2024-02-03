// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeImageSourceImpl _$$ThemeImageSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeImageSourceImpl(
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ThemeImageSourceImplToJson(
        _$ThemeImageSourceImpl instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
      'url': instance.url,
    };
