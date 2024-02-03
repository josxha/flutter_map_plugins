// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_source.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeVideoSourceImpl _$$ThemeVideoSourceImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeVideoSourceImpl(
      coordinates: (json['coordinates'] as List<dynamic>)
          .map((e) =>
              (e as List<dynamic>).map((e) => (e as num).toDouble()).toList())
          .toList(),
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ThemeVideoSourceImplToJson(
        _$ThemeVideoSourceImpl instance) =>
    <String, dynamic>{
      'coordinates': instance.coordinates,
      'url': instance.url,
    };
