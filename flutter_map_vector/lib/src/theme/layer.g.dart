// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'layer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeLayerImpl _$$ThemeLayerImplFromJson(Map<String, dynamic> json) =>
    _$ThemeLayerImpl(
      id: json['id'] as String,
      source: json['source'] as String,
      sourceLayer: json['source-layer'] as String,
      type: json['type'] as String,
      fillColor: json['fill-color'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$ThemeLayerImplToJson(_$ThemeLayerImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'source': instance.source,
      'source-layer': instance.sourceLayer,
      'type': instance.type,
      'fill-color': instance.fillColor,
    };
