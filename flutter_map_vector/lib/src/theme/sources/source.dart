import 'package:freezed_annotation/freezed_annotation.dart';

@Freezed()
abstract interface class ThemeSource {
  ThemeSourceType get type;
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
