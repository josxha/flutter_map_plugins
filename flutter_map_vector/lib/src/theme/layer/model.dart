import 'package:flutter_map_vector/src/theme/layer/layer.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'model.freezed.dart';
part 'model.g.dart';

/// A model style layer renders 3D buildings and instanced models (e.g. trees
/// in standard style).model layer renders content from following sources:
///
/// 1. vector or GeoJSON (Used for trees in standard style)
/// 2. batched-model (Used for landmark buildings in standard style)
///
/// To place third party models on the map the first approach should be used.
/// It's possible to adjust rotation, scale, color, color mix and level of
/// details for the models using the properties of the model layer.
///
/// https://docs.mapbox.com/style-spec/reference/layers/#model
@Freezed()
class ThemeModelLayer with _$ThemeModelLayer implements ThemeLayer {
  @Implements<ThemeLayer>()
  const factory ThemeModelLayer({
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
  }) = _ThemeModelLayer;

  factory ThemeModelLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeModelLayerFromJson(json);
}
