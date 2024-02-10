import 'package:vector_tile_renderer/vector_tile_renderer.dart';

// ignore_for_file: prefer_single_quotes, require_trailing_commas

part 'black.dart';
part 'dark.dart';
part 'grayscale.dart';
part 'light.dart';
part 'white.dart';

/// Protomaps themes, version 2.0.0-alpha.5
///
/// All themes are published by Protomaps under CC0 / public domain.
///
/// https://unpkg.com/browse/protomaps-themes-base@2.0.0-alpha.5/dist/layers/
class ProtomapsThemes {
  final Logger? logger;
  final Map<String, Object> sources;
  final String glyphs;

  const ProtomapsThemes({
    this.logger,
    this.sources = const {
      "protomaps": {
        "type": "vector",
        "attribution":
            "<a href=\"https://github.com/protomaps/basemaps\">Protomaps</a> © <a href=\"https://openstreetmap.org\">OpenStreetMap</a>",
        "url": "https://example.com/tiles.json"
      }
    },
    this.glyphs =
        "https://protomaps.github.io/basemaps-assets/fonts/{fontstack}/{range}.pbf",
  });

  Theme build(List<Map<String, Object>> layers) =>
      ThemeReader(logger: logger).read({
        "version": 8,
        "sources": sources,
        "layers": layers,
        "glyphs": glyphs,
      });

  /// Default Protomaps black theme
  static Theme black({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(themeBlack);

  /// Default Protomaps dark theme
  static Theme dark({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(themeDark);

  /// Default Protomaps grayscale theme
  static Theme grayscale({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(themeGrayscale);

  /// Default Protomaps light theme
  static Theme light({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(themeLight);

  /// Default Protomaps white theme
  static Theme white({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(themeWhite);
}
