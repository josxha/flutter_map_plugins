# vector_map_tiles_mbtiles

A TileProvider for flutter_map that adds support for MBTiles.

- Supported vector tile format: `pbf` (sometimes known as `mvt`)
- If you have raster tiles
  you can
  use [flutter_map_mbtiles](https://pub.dev/packages/flutter_map_mbtiles).
- Web is not supported because of it's lacking SQLite support.

[![Pub Version](https://img.shields.io/pub/v/vector_map_tiles_mbtiles)](https://pub.dev/packages/vector_map_tiles_mbtiles)
[![likes](https://img.shields.io/pub/likes/vector_map_tiles_mbtiles?logo=flutter)](https://pub.dev/packages/vector_map_tiles_mbtiles)
[![Pub Points](https://img.shields.io/pub/points/vector_map_tiles_mbtiles)](https://pub.dev/packages/vector_map_tiles_mbtiles/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/vector_map_tiles_mbtiles)](https://pub.dev/packages/vector_map_tiles_mbtiles)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

## Getting started

Add the following packages to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_map: ^6.0.0              # in case you don't have it yet 
  vector_map_tiles_mbtiles: ^1.0.0 # this package
```

## Usage

1. Initiate the VectorTileProvider

```dart
// ...from an local file on the file system
final _futureTileProvider = MbTilesVectorTileProvider
    .fromSource('some/file/system/path.mbtiles');

// ...or provide a MbTilesArchive directly 
// (you'll need to add mbtiles as direct dependency to your project)
final _futureTileProvider = PmgTilesVectorTileProvider
    .fromArchive(someMbTilesArchive);
```

2. Await the response of the future, e.g. by using a `FutureBuilder`.

3. Provide your `MbTilesVectorTileProvider` to your `TileLayer`

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      VectorTileLayer(
        theme: ProvidedThemes.lightTheme(),
        tileProviders: TileProviders({
          'openmaptiles': tileProvider,
        }),
      ),
    ],
  );
}
```

## Additional information

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).