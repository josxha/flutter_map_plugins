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
  mbtiles: ^0.4.0                  # MBTiles package
```

## Usage

1. Open the MBTiles file

The MBTiles file must be stored on the file system and read permission must be
granted to the app.

You can use the [path_provider](https://pub.dev/packages/path_provider) package
to get the path of the app document directory.

```dart
// initiate your tile provider
final mbtiles = MbTiles(mbtilesPath: mbTilesPath, gzip: false);

// OR: in case your protobuf data is not gzip encoded use:
final mbtiles = MbTiles(mbtilesPath: mbTilesPath, gzip: false);
```

2. Provide mbtiles to the `MbTilesVectorTileProvider`:

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(
      minZoom: 8,
      maxZoom: 18,
      initialZoom: 11,
      initialCenter:
      metadata.defaultCenter ?? const LatLng(0, 0),
    ),
    children: [
      VectorTileLayer(
        theme: _theme,
        tileProviders: TileProviders({
          'openmaptiles': MbTilesVectorTileProvider(
            mbtiles: mbtiles,
            silenceTileNotFound: true,
          ),
        }),
        // do not set maximumZoom here to the metadata.maxZoom
        // or tiles won't get over-zoomed.
        maximumZoom: 18,
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