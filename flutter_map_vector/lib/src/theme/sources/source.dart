import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@Freezed(copyWith: false)
class ThemeSource with _$ThemeSource {
  const factory ThemeSource({
    required ThemeSourceType type,
  }) = _ThemeSource;

  factory ThemeSource.fromJson(Map<String, Object?> json) =>
      _$ThemeSourceFromJson(json);
}

@JsonEnum()
enum ThemeSourceType {
  vector,
  raster,
  rasterDem,
  geojson,
  image,
  video;
}

@JsonEnum()
enum ThemeSourceScheme {
  /// Slippy map tilenames scheme.
  xyz,

  /// OSGeo spec scheme.
  tms;
}
