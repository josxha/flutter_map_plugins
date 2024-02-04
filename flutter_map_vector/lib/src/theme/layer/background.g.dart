// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'background.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeBackgroundLayerImpl _$$ThemeBackgroundLayerImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeBackgroundLayerImpl(
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
      backgroundColor: json['background-color'] as String? ?? '#000000',
      backgroundEmissiveStrength:
          (json['background-emissive-strength'] as num?)?.toDouble() ?? 0,
      backgroundOpacity: (json['background-opacity'] as num?)?.toDouble() ?? 1,
      backgroundPattern: json['background-pattern'] as String?,
      visibility: $enumDecodeNullable(
              _$ThemeLayerVisibilityEnumMap, json['visibility']) ??
          ThemeLayerVisibility.visible,
    );

Map<String, dynamic> _$$ThemeBackgroundLayerImplToJson(
        _$ThemeBackgroundLayerImpl instance) =>
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
      'background-color': instance.backgroundColor,
      'background-emissive-strength': instance.backgroundEmissiveStrength,
      'background-opacity': instance.backgroundOpacity,
      'background-pattern': instance.backgroundPattern,
      'visibility': _$ThemeLayerVisibilityEnumMap[instance.visibility]!,
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

const _$ThemeLayerVisibilityEnumMap = {
  ThemeLayerVisibility.visible: 'visible',
  ThemeLayerVisibility.none: 'none',
};
