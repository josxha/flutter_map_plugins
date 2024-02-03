// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeRootImpl _$$ThemeRootImplFromJson(Map<String, dynamic> json) =>
    _$ThemeRootImpl(
      sources: const SourceConverter()
          .fromJson(json['sources'] as Map<String, Object?>),
      version: json['version'] as int,
      bearing: (json['bearing'] as num?)?.toDouble() ?? 0,
      camera: json['camera'],
      center: (json['center'] as List<dynamic>?)
          ?.map((e) => (e as num).toDouble())
          .toList(),
      fog: json['fog'],
      fragment: json['fragment'] as bool,
      glyphs: json['glyphs'] as String? ??
          'mapbox://fonts/mapbox/{fontstack}/{range}.pbf',
      imports: json['imports'] as List<dynamic>?,
      light: json['light'],
      lights: json['lights'] as List<dynamic>?,
      metadata: json['metadata'] as Map<String, dynamic>?,
      models: json['models'],
      name: json['name'] as String,
      pitch: (json['pitch'] as num?)?.toDouble() ?? 0,
      projection: json['projection'],
      schema: json['schema'],
      sprite: json['sprite'] as String?,
      terrain: json['terrain'],
      transition: json['transition'],
      zoom: (json['zoom'] as num?)?.toDouble(),
      created: json['created'] as String?,
      id: json['id'] as String?,
      modified: json['modified'] as String?,
      owner: json['owner'] as String?,
      visibility: json['visibility'] as String?,
      protected: json['protected'] as bool?,
      draft: json['draft'] as bool?,
    );

Map<String, dynamic> _$$ThemeRootImplToJson(_$ThemeRootImpl instance) =>
    <String, dynamic>{
      'sources': const SourceConverter().toJson(instance.sources),
      'version': instance.version,
      'bearing': instance.bearing,
      'camera': instance.camera,
      'center': instance.center,
      'fog': instance.fog,
      'fragment': instance.fragment,
      'glyphs': instance.glyphs,
      'imports': instance.imports,
      'light': instance.light,
      'lights': instance.lights,
      'metadata': instance.metadata,
      'models': instance.models,
      'name': instance.name,
      'pitch': instance.pitch,
      'projection': instance.projection,
      'schema': instance.schema,
      'sprite': instance.sprite,
      'terrain': instance.terrain,
      'transition': instance.transition,
      'zoom': instance.zoom,
      'created': instance.created,
      'id': instance.id,
      'modified': instance.modified,
      'owner': instance.owner,
      'visibility': instance.visibility,
      'protected': instance.protected,
      'draft': instance.draft,
    };
