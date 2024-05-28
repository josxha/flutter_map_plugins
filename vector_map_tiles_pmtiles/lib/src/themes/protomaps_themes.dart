import 'package:vector_tile_renderer/vector_tile_renderer.dart';

// ignore_for_file: prefer_single_quotes, require_trailing_commas

part 'black.dart';
part 'dark.dart';
part 'grayscale.dart';
part 'light.dart';
part 'white.dart';

/// Protomaps themes, version 3.0.1
///
/// All themes are published by Protomaps under CC0 / public domain.
///
/// https://unpkg.com/browse/protomaps-themes-base@2.0.0-alpha.5/dist/layers/
///
/// https://github.com/protomaps/basemaps/blob/main/CHANGELOG.md
class ProtomapsThemes {
  /// Default constructor. Prefer to use the named constructors.
  const ProtomapsThemes({
    this.logger,
    this.sources = const {
      "protomaps": {
        "type": "vector",
        "attribution":
            '<a href="https://github.com/protomaps/basemaps">Protomaps</a> © <a href="https://openstreetmap.org">OpenStreetMap</a>',
        "url": "https://example.com/tiles.json"
      }
    },
    this.glyphs =
        "https://protomaps.github.io/basemaps-assets/fonts/{fontstack}/{range}.pbf",
  });

  /// The [Logger] that gets provided to vector_map_tiles
  final Logger? logger;

  /// A Map of Tile Sources
  final Map<String, Object> sources;

  /// An URL template for the glyphs
  final String glyphs;

  /// build the [Theme].
  Theme build(List<Map<String, Object>> layers) =>
      ThemeReader(logger: logger).read({
        "version": 8,
        "sources": sources,
        "layers": layers,
        "glyphs": glyphs,
      });

  /// Default Protomaps black theme
  static Theme black({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(_themeBlack);

  /// Default Protomaps dark theme
  static Theme dark({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(_themeDark);

  /// Default Protomaps grayscale theme
  static Theme grayscale({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(_themeGrayscale);

  /// Default Protomaps light theme
  static Theme light({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(_themeLight);

  /// Default Protomaps white theme
  static Theme white({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(_themeWhite);
}
