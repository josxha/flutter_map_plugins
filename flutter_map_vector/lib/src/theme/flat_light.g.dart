// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'flat_light.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeFlatLightImpl _$$ThemeFlatLightImplFromJson(Map<String, dynamic> json) =>
    _$ThemeFlatLightImpl(
      anchor:
          $enumDecodeNullable(_$ThemeFlatLightAnchorEnumMap, json['anchor']) ??
              ThemeFlatLightAnchor.viewport,
      color: json['color'] == null
          ? const Color(0xffffffff)
          : const ColorConverter().fromJson(json['color'] as String),
      intensity: (json['intensity'] as num?)?.toDouble() ?? 0.5,
      position: (json['position'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [1.15, 210, 30],
    );

Map<String, dynamic> _$$ThemeFlatLightImplToJson(
        _$ThemeFlatLightImpl instance) =>
    <String, dynamic>{
      'anchor': _$ThemeFlatLightAnchorEnumMap[instance.anchor]!,
      'color': const ColorConverter().toJson(instance.color),
      'intensity': instance.intensity,
      'position': instance.position,
    };

const _$ThemeFlatLightAnchorEnumMap = {
  ThemeFlatLightAnchor.map: 'map',
  ThemeFlatLightAnchor.viewport: 'viewport',
};