# flutter_map_mbtiles

Raster and Vector MBTiles `TileProvider`
for [flutter_map](https://pub.dev/packages/flutter_map).

- Supported raster tiles: `jpg`, `png`, `webp`
- If you want to use `pbf` vector tiles
  you can
  use [vector_map_tiles_mbtiles](https://pub.dev/packages/vector_map_tiles_mbtiles).
- Web is not supported because of it's lacking SQLite support.

[![Pub Version](https://img.shields.io/pub/v/flutter_map_mbtiles)](https://pub.dev/packages/flutter_map_mbtiles)
[![likes](https://img.shields.io/pub/likes/flutter_map_mbtiles?logo=flutter)](https://pub.dev/packages/flutter_map_mbtiles)
[![Pub Points](https://img.shields.io/pub/points/flutter_map_mbtiles)](https://pub.dev/packages/flutter_map_mbtiles/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_mbtiles)](https://pub.dev/packages/flutter_map_mbtiles)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

## Getting started

#### pubspec.yaml

```yaml
dependencies:
  flutter_map: ^6.0.0         # in case you don't have it yet 
  flutter_map_mbtiles: ^1.0.0 # this package
```

## Usage

```dart
// provide the path of the MBTiles file to the tile provider.
// The file must be on your file system and the app must have the permission 
// to access to it. The file can't be in your assets.
final _futureTileProvider = MbTilesTileProvider
    .fromSource('path/to/file.mbtiles');

@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        // use your awaited MbTilesTileProvider
        tileProvider: tileProvider,
      ),
    ],
  );
}

@override
void dispose() {
// close mbtiles database
  tileProvider.dispose();
  super.dispose();
}

```

## Additional information

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).
