// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'configuration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeConfigImpl _$$ThemeConfigImplFromJson(Map<String, dynamic> json) =>
    _$ThemeConfigImpl(
      id: json['id'] as String,
      url: json['url'] as String,
      config: json['config'] as Map<String, dynamic>?,
      data: json['data'],
    );

Map<String, dynamic> _$$ThemeConfigImplToJson(_$ThemeConfigImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'url': instance.url,
      'config': instance.config,
      'data': instance.data,
    };

_$ThemeConfigOptionImpl _$$ThemeConfigOptionImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeConfigOptionImpl(
      aDefault: json['default'],
      array: json['array'] as bool?,
      maxValue: (json['maxValue'] as num?)?.toDouble(),
      metadata: json['metadata'],
      minValue: (json['minValue'] as num?)?.toDouble(),
      stepValue: (json['stepValue'] as num?)?.toDouble(),
      type: $enumDecodeNullable(_$ThemeConfigOptionTypeEnumMap, json['type']),
      values: json['values'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ThemeConfigOptionImplToJson(
        _$ThemeConfigOptionImpl instance) =>
    <String, dynamic>{
      'default': instance.aDefault,
      'array': instance.array,
      'maxValue': instance.maxValue,
      'metadata': instance.metadata,
      'minValue': instance.minValue,
      'stepValue': instance.stepValue,
      'type': _$ThemeConfigOptionTypeEnumMap[instance.type],
      'values': instance.values,
    };

const _$ThemeConfigOptionTypeEnumMap = {
  ThemeConfigOptionType.string: 'string',
  ThemeConfigOptionType.number: 'number',
  ThemeConfigOptionType.boolean: 'boolean',
  ThemeConfigOptionType.color: 'color',
};
