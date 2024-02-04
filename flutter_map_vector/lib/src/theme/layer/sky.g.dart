// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sky.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeSkyLayerImpl _$$ThemeSkyLayerImplFromJson(Map<String, dynamic> json) =>
    _$ThemeSkyLayerImpl(
      type: $enumDecode(_$ThemeLayerTypeEnumMap, json['type']),
      id: json['id'] as String,
      filter: json['filter'],
      layout: json['layout'],
      maxZoom: (json['maxzoom'] as num?)?.toDouble(),
      minZoom: (json['minzoom'] as num?)?.toDouble(),
      paint: json['paint'],
      slot: json['slot'] as String?,
      source: json['source'] as String?,
      sourceLayer: json['source-layer'] as String?,
    );

Map<String, dynamic> _$$ThemeSkyLayerImplToJson(_$ThemeSkyLayerImpl instance) =>
    <String, dynamic>{
      'type': _$ThemeLayerTypeEnumMap[instance.type]!,
      'id': instance.id,
      'filter': instance.filter,
      'layout': instance.layout,
      'maxzoom': instance.maxZoom,
      'minzoom': instance.minZoom,
      'paint': instance.paint,
      'slot': instance.slot,
      'source': instance.source,
      'source-layer': instance.sourceLayer,
    };

const _$ThemeLayerTypeEnumMap = {
  ThemeLayerType.line: 'line',
  ThemeLayerType.fill: 'fill',
  ThemeLayerType.symbol: 'symbol',
  ThemeLayerType.circle: 'circle',
  ThemeLayerType.heatmap: 'heatmap',
  ThemeLayerType.fillExtrusion: 'fillExtrusion',
  ThemeLayerType.raster: 'raster',
  ThemeLayerType.hillshade: 'hillshade',
  ThemeLayerType.model: 'model',
  ThemeLayerType.background: 'background',
  ThemeLayerType.sky: 'sky',
  ThemeLayerType.slot: 'slot',
};
