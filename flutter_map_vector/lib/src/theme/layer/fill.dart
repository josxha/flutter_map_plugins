import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fill.freezed.dart';
part 'fill.g.dart';

@Freezed()
class ThemeFillLayer with _$ThemeFillLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeFillLayer({
    required ThemeLayerType type,
    required String id,
    dynamic filter,
    dynamic layout,
    @Assert(
      'maxZoom >= 0 && maxZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'maxzoom')
    int? maxZoom,
    @Assert(
      'minZoom >= 0 && minZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'minzoom')
    int? minZoom,
    dynamic paint,
    String? slot,
    String? source,
    @JsonKey(name: 'source-layer') String? sourceLayer,
  }) = _ThemeFillLayer;

  factory ThemeFillLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeFillLayerFromJson(json);
}
