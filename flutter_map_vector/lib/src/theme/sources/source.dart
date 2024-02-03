import 'package:flutter_map_vector/src/theme/sources/vector_source.dart';

sealed class ThemeSource {
  const ThemeSource();

  ThemeSource fromJson(Map<String, Object?> json) =>
      switch (json['type']) {
        'vector' => ThemeVectorSource.fromJson(json),
        _ => throw AssertionError("Can't parse the source: $json"),
      };
}

enum ThemeSourceType {
  vector,
  raster,
  rasterDem,
  geojson,
  image,
  video;
}

enum ThemeSourceScheme {
  /// Slippy map tilenames scheme.
  xyz,

  /// OSGeo spec scheme.
  tms;
}
