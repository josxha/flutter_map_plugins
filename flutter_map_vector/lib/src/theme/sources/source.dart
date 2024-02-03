import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.freezed.dart';
part 'source.g.dart';

@Freezed(genericArgumentFactories: true)
sealed class ThemeSource<T> with _$ThemeSource<T> {
  const factory ThemeSource.vector(T data) = _ThemeSourceVector;

  const factory ThemeSource.raster(String message) = _ThemeSourceRaster;

  factory ThemeSource.fromJson(
    Map<String, dynamic> json,
    T Function(Object?) fromJsonT,
  ) =>
      _$ThemeSourceFromJson(json, fromJsonT);
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
