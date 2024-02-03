// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeFogImpl _$$ThemeFogImplFromJson(Map<String, dynamic> json) =>
    _$ThemeFogImpl(
      color: json['color'] as String? ?? '0xffffffff',
      highColor: json['highColor'] as String? ?? '0xff245cdf',
      horizonBlend: (json['horizonBlend'] as num?)?.toDouble(),
      range: (json['range'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.5, 10],
      verticalRange: (json['vertical-range'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0, 0],
    );

Map<String, dynamic> _$$ThemeFogImplToJson(_$ThemeFogImpl instance) =>
    <String, dynamic>{
      'color': instance.color,
      'highColor': instance.highColor,
      'horizonBlend': instance.horizonBlend,
      'range': instance.range,
      'vertical-range': instance.verticalRange,
    };
