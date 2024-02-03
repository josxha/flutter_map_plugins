// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sprite_index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SpriteIndexItemImpl _$$SpriteIndexItemImplFromJson(
        Map<String, dynamic> json) =>
    _$SpriteIndexItemImpl(
      width: json['width'] as int,
      height: json['height'] as int,
      x: json['x'] as int,
      y: json['y'] as int,
      pixelRatio: json['pixelRatio'] as int,
      content:
          (json['content'] as List<dynamic>?)?.map((e) => e as int).toList(),
      stretchX: (json['stretchX'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as int).toList())
          .toList(),
      stretchY: (json['stretchY'] as List<dynamic>?)
          ?.map((e) => (e as List<dynamic>).map((e) => e as int).toList())
          .toList(),
    );

Map<String, dynamic> _$$SpriteIndexItemImplToJson(
        _$SpriteIndexItemImpl instance) =>
    <String, dynamic>{
      'width': instance.width,
      'height': instance.height,
      'x': instance.x,
      'y': instance.y,
      'pixelRatio': instance.pixelRatio,
      'content': instance.content,
      'stretchX': instance.stretchX,
      'stretchY': instance.stretchY,
    };
