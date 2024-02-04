// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeFogImpl _$$ThemeFogImplFromJson(Map<String, dynamic> json) =>
    _$ThemeFogImpl(
      color: json['color'] == null
          ? const Color(0xffffffff)
          : const ColorConverter().fromJson(json['color'] as String),
      highColor: json['highColor'] == null
          ? const Color(0xff245cdf)
          : const ColorConverter().fromJson(json['highColor'] as String),
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
      'color': const ColorConverter().toJson(instance.color),
      'highColor': const ColorConverter().toJson(instance.highColor),
      'horizonBlend': instance.horizonBlend,
      'range': instance.range,
      'vertical-range': instance.verticalRange,
    };
