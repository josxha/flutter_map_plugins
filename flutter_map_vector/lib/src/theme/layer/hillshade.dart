import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hillshade.freezed.dart';
part 'hillshade.g.dart';

@Freezed()
class ThemeHillshadeLayer with _$ThemeHillshadeLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeHillshadeLayer({
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
  }) = _ThemeHillshadeLayer;

  factory ThemeHillshadeLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeHillshadeLayerFromJson(json);
}
