// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transition.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ThemeTransitionImpl _$$ThemeTransitionImplFromJson(
        Map<String, dynamic> json) =>
    _$ThemeTransitionImpl(
      delay: json['delay'] == null
          ? Duration.zero
          : Duration(microseconds: json['delay'] as int),
      duration: json['duration'] == null
          ? const Duration(milliseconds: 300)
          : Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$ThemeTransitionImplToJson(
        _$ThemeTransitionImpl instance) =>
    <String, dynamic>{
      'delay': instance.delay?.inMicroseconds,
      'duration': instance.duration?.inMicroseconds,
    };
