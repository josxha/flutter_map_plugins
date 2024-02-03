import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fill_extrusion.freezed.dart';
part 'fill_extrusion.g.dart';

@Freezed()
class ThemeFillExtrusionLayer
    with _$ThemeFillExtrusionLayer
    implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeFillExtrusionLayer({
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
  }) = _ThemeFillExtrusionLayer;

  factory ThemeFillExtrusionLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeFillExtrusionLayerFromJson(json);
}
