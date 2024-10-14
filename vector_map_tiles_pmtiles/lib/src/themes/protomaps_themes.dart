import 'package:vector_map_tiles_pmtiles/src/themes/v3/_package.dart' as v3;
import 'package:vector_map_tiles_pmtiles/src/themes/v4/_package.dart' as v4;
import 'package:vector_tile_renderer/vector_tile_renderer.dart';

// ignore_for_file: prefer_single_quotes, require_trailing_commas

/// Protomaps themes, version 3.0.1
///
/// All themes are published by Protomaps under CC0 / public domain.
///
/// https://unpkg.com/browse/protomaps-themes-base@4.1.0/dist/layers/
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

  /// Prefer to use a versioned theme.
  @Deprecated('Prefer to use a versioned theme')
  static Theme black({Logger? logger}) => blackV3(logger: logger);

  /// Prefer to use a versioned theme.
  @Deprecated('Prefer to use a versioned theme')
  static Theme dark({Logger? logger}) => darkV3(logger: logger);

  /// Prefer to use a versioned theme.
  @Deprecated('Prefer to use a versioned theme')
  static Theme grayscale({Logger? logger}) => grayscaleV3(logger: logger);

  /// Prefer to use a versioned theme.
  @Deprecated('Prefer to use a versioned theme')
  static Theme light({Logger? logger}) => lightV3(logger: logger);

  /// Prefer to use a versioned theme.
  @Deprecated('Prefer to use a versioned theme')
  static Theme white({Logger? logger}) => whiteV3(logger: logger);

  /// Protomaps black theme version 3
  static Theme blackV3({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v3.themeBlack);

  /// Protomaps dark theme version 3
  static Theme darkV3({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v3.themeDark);

  /// Protomaps grayscale theme version 3
  static Theme grayscaleV3({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v3.themeGrayscale);

  /// Protomaps light theme version 3
  static Theme lightV3({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v3.themeLight);

  /// Protomaps white theme version 3
  static Theme whiteV3({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v3.themeWhite);

  /// Protomaps black theme version 4
  static Theme blackV4({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v4.themeBlack);

  /// Protomaps dark theme version 4
  static Theme darkV4({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v4.themeDark);

  /// Protomaps grayscale theme version 4
  static Theme grayscaleV4({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v4.themeGrayscale);

  /// Protomaps light theme version 4
  static Theme lightV4({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v4.themeLight);

  /// Protomaps white theme version 4
  static Theme whiteV4({Logger? logger}) =>
      ProtomapsThemes(logger: logger).build(v4.themeWhite);
}
