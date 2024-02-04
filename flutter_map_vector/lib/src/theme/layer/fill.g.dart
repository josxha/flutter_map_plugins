// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fill.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeFillLayerImpl _$$ThemeFillLayerImplFromJson(Map<String, dynamic> json) =>
    _$ThemeFillLayerImpl(
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
      fillAntialias: json['fill-antialias'] as bool? ?? true,
      fillColor: json['fill-color'] == null
          ? const Color(0xff000000)
          : const ColorConverter().fromJson(json['fill-color'] as String),
      fillEmissiveStrength:
          (json['fill-emissive-strength'] as num?)?.toDouble() ?? 0,
      fillOpacity: (json['fill-opacity'] as num?)?.toDouble() ?? 1,
      fillOutlineColor: _$JsonConverterFromJson<String, Color>(
          json['fill-outline-color'], const ColorConverter().fromJson),
      fillPattern: json['fill-pattern'] as String?,
      fillSortKey: (json['fill-sort-key'] as num?)?.toDouble(),
      fillTranslate: (json['fill-translate'] as List<dynamic>?)
              ?.map((e) => (e as num).toDouble())
              .toList() ??
          const [0.0],
      fillTranslateAnchor: $enumDecodeNullable(
              _$ThemeFlatLightAnchorEnumMap, json['fill-translate-anchor']) ??
          ThemeFlatLightAnchor.map,
      visibility: $enumDecodeNullable(
              _$ThemeLayerVisibilityEnumMap, json['visibility']) ??
          ThemeLayerVisibility.visible,
    );

Map<String, dynamic> _$$ThemeFillLayerImplToJson(
        _$ThemeFillLayerImpl instance) =>
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
      'fill-antialias': instance.fillAntialias,
      'fill-color': const ColorConverter().toJson(instance.fillColor),
      'fill-emissive-strength': instance.fillEmissiveStrength,
      'fill-opacity': instance.fillOpacity,
      'fill-outline-color': _$JsonConverterToJson<String, Color>(
          instance.fillOutlineColor, const ColorConverter().toJson),
      'fill-pattern': instance.fillPattern,
      'fill-sort-key': instance.fillSortKey,
      'fill-translate': instance.fillTranslate,
      'fill-translate-anchor':
          _$ThemeFlatLightAnchorEnumMap[instance.fillTranslateAnchor]!,
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

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$ThemeFlatLightAnchorEnumMap = {
  ThemeFlatLightAnchor.map: 'map',
  ThemeFlatLightAnchor.viewport: 'viewport',
};

const _$ThemeLayerVisibilityEnumMap = {
  ThemeLayerVisibility.visible: 'visible',
  ThemeLayerVisibility.none: 'none',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
