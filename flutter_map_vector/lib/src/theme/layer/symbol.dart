import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'symbol.freezed.dart';
part 'symbol.g.dart';

/// A symbol style layer renders icon and text labels at points or along lines
/// on a map. You can use a symbol layer to configure the visual appearance of
/// labels for features in vector tiles.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#symbol
@Freezed()
class ThemeSymbolLayer with _$ThemeSymbolLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeSymbolLayer({
    required ThemeLayerType type,
    required String id,
    dynamic filter,
    dynamic layout,
    @Assert(
      'maxZoom >= 0 && maxZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'maxzoom')
    double? maxZoom,
    @Assert(
      'minZoom >= 0 && minZoom <= 24',
      'number between 0 and 24 inclusive.',
    )
    @JsonKey(name: 'minzoom')
    double? minZoom,
    dynamic paint,
    String? slot,
    String? source,
    @JsonKey(name: 'source-layer') String? sourceLayer,
    // TODO add parameters
  }) = _ThemeSymbolLayer;

  factory ThemeSymbolLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeSymbolLayerFromJson(json);
}
