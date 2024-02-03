// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'projection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeProjectionImpl _$$ThemeProjectionImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeProjectionImpl(
      name: $enumDecodeNullable(_$ThemeProjectionNameEnumMap, json['name']) ??
          ThemeProjectionName.mercator,
      center: (json['center'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      parallels: (json['parallels'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
    );

Map<String, dynamic> _$$ThemeProjectionImplToJson(
        _$ThemeProjectionImpl instance) =>
    <String, dynamic>{
      'name': _$ThemeProjectionNameEnumMap[instance.name]!,
      'center': instance.center,
      'parallels': instance.parallels,
    };

const _$ThemeProjectionNameEnumMap = {
  ThemeProjectionName.albers: 'albers',
  ThemeProjectionName.equalEarth: 'equalEarth',
  ThemeProjectionName.equirectangular: 'equirectangular',
  ThemeProjectionName.lambertConformalConic: 'lambertConformalConic',
  ThemeProjectionName.mercator: 'mercator',
  ThemeProjectionName.naturalEarth: 'naturalEarth',
  ThemeProjectionName.winkelTripel: 'winkelTripel',
  ThemeProjectionName.globe: 'globe',
};
