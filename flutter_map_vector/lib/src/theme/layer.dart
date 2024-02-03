import 'package:freezed_annotation/freezed_annotation.dart';

part 'layer.freezed.dart';
part 'layer.g.dart';

// TODO
@Freezed()
class ThemeLayer with _$ThemeLayer {
  const factory ThemeLayer({
    required String id,
    required String source,
    @JsonKey(name: 'source-layer') required String sourceLayer,
    required String type,
    @JsonKey(name: 'fill-color') required Map<String, Object?> fillColor,
  }) = _ThemeLayer;

  factory ThemeLayer.fromJson(Map<String, Object?> json) =>
      _$ThemeLayerFromJson(json);
}
