// GENERATED CODE - DO NOT MODIFY BY HAND

part of '_3d_light.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Theme3dLightImpl _$$Theme3dLightImplFromJson(Map<String, dynamic> json) =>
    _$Theme3dLightImpl(
      id: json['id'] as String,
      properties: json['properties'],
      type: $enumDecodeNullable(_$Theme3dLightTypeEnumMap, json['type']),
      measureLight: json['measure-light'],
      castShadows: json['cast-shadows'] as bool? ?? false,
      color: json['color'] == null
          ? const Color(0xffffffff)
          : const ColorConverter().fromJson(json['color'] as String),
      direction: (json['direction'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      intensity: (json['intensity'] as num?)?.toDouble() ?? 0.5,
    );

Map<String, dynamic> _$$Theme3dLightImplToJson(_$Theme3dLightImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'properties': instance.properties,
      'type': _$Theme3dLightTypeEnumMap[instance.type],
      'measure-light': instance.measureLight,
      'cast-shadows': instance.castShadows,
      'color': const ColorConverter().toJson(instance.color),
      'direction': instance.direction,
      'intensity': instance.intensity,
    };

const _$Theme3dLightTypeEnumMap = {
  Theme3dLightType.ambient: 'ambient',
  Theme3dLightType.directional: 'directional',
  Theme3dLightType.flat: 'flat',
};
