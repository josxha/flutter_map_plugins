// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'line.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeLineLayerImpl _$$ThemeLineLayerImplFromJson(Map<String, dynamic> json) =>
    _$ThemeLineLayerImpl(
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
      lineBlur: (json['line-blur'] as num?)?.toDouble() ?? 0,
      lineCap: $enumDecodeNullable(_$ThemeLineCapEnumMap, json['line-cap']) ??
          ThemeLineCap.butt,
      lineColor: json['line-color'] == null
          ? const Color(0xff000000)
          : const ColorConverter().fromJson(json['line-color'] as String),
      lineDashArray: (json['line-dasharray'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      lineEmissiveStrength:
          (json['line-emissive-strength'] as num?)?.toDouble() ?? 0,
      lineGapWidth: (json['line-gap-width'] as num?)?.toDouble() ?? 0,
      lineGradient: json['line-gradient'] as String?,
      lineJoin:
          $enumDecodeNullable(_$ThemeLineJoinEnumMap, json['line-join']) ??
              ThemeLineJoin.miter,
      lineMiterLimit: (json['line-miter-limit'] as num?)?.toDouble() ?? 2,
      lineOffset: (json['line-offset'] as num?)?.toDouble() ?? 0,
      lineOpacity: (json['line-opacity'] as num?)?.toDouble() ?? 1,
      linePattern: json['line-pattern'] as String?,
      lineRoundLimit: (json['line-round-limit'] as num?)?.toDouble() ?? 1.05,
      lineSortKey: (json['line-sort-key'] as num?)?.toDouble(),
      lineTranslate: (json['line-translate'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0, 0],
      lineTranslateAnchor: $enumDecodeNullable(
              _$ThemeFlatLightAnchorEnumMap, json['line-translate-anchor']) ??
          ThemeFlatLightAnchor.map,
      lineTrimOffset: (json['line-trim-offset'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0, 0],
      lineWidth: (json['line-width'] as num?)?.toDouble() ?? 1,
      visibility: $enumDecodeNullable(
              _$ThemeLayerVisibilityEnumMap, json['visiblity']) ??
          ThemeLayerVisibility.visible,
    );

Map<String, dynamic> _$$ThemeLineLayerImplToJson(
        _$ThemeLineLayerImpl instance) =>
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
      'line-blur': instance.lineBlur,
      'line-cap': _$ThemeLineCapEnumMap[instance.lineCap]!,
      'line-color': const ColorConverter().toJson(instance.lineColor),
      'line-dasharray': instance.lineDashArray,
      'line-emissive-strength': instance.lineEmissiveStrength,
      'line-gap-width': instance.lineGapWidth,
      'line-gradient': instance.lineGradient,
      'line-join': _$ThemeLineJoinEnumMap[instance.lineJoin]!,
      'line-miter-limit': instance.lineMiterLimit,
      'line-offset': instance.lineOffset,
      'line-opacity': instance.lineOpacity,
      'line-pattern': instance.linePattern,
      'line-round-limit': instance.lineRoundLimit,
      'line-sort-key': instance.lineSortKey,
      'line-translate': instance.lineTranslate,
      'line-translate-anchor':
          _$ThemeFlatLightAnchorEnumMap[instance.lineTranslateAnchor]!,
      'line-trim-offset': instance.lineTrimOffset,
      'line-width': instance.lineWidth,
      'visiblity': _$ThemeLayerVisibilityEnumMap[instance.visibility]!,
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

const _$ThemeLineCapEnumMap = {
  ThemeLineCap.butt: 'butt',
  ThemeLineCap.round: 'round',
  ThemeLineCap.square: 'square',
};

const _$ThemeLineJoinEnumMap = {
  ThemeLineJoin.bevel: 'bevel',
  ThemeLineJoin.round: 'round',
  ThemeLineJoin.miter: 'miter',
};

const _$ThemeFlatLightAnchorEnumMap = {
  ThemeFlatLightAnchor.map: 'map',
  ThemeFlatLightAnchor.viewport: 'viewport',
};

const _$ThemeLayerVisibilityEnumMap = {
  ThemeLayerVisibility.visible: 'visible',
  ThemeLayerVisibility.none: 'none',
};
