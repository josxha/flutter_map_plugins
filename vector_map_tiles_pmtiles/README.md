# vector_map_tiles_pmtiles

A TileProvider for flutter_map that adds support for PMTiles.

[![Pub Version](https://img.shields.io/pub/v/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles)
[![likes](https://img.shields.io/pub/likes/vector_map_tiles_pmtiles?logo=flutter)](https://pub.dev/packages/vector_map_tiles_pmtiles)
[![Pub Points](https://img.shields.io/pub/points/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

## Getting started

Add the following packages to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_map: ^6.0.0         # in case you don't have it yet 
  vector_map_tiles_pmtiles: ^1.0.0 # this package
```

## Usage

1. Initiate the TileProvider

```dart
// ...from an URL
final Future<
    PmTilesVectorTileProvider> _futureTileProvider = PmTilesVectorTileProvider
    .fromSource('https://example.com/useYourOwnHostedPMTilesFile.pmtiles');
// ...from an local file on the file system
final Future<
    PmTilesVectorTileProvider> _futureTileProvider = PmTilesVectorTileProvider
    .fromSource('some/file/system/path.pmtiles');
// ...or provide a PmTilesArchive directly 
// (you'll need to add pmtiles as direct dependency to your project)
final Future<
    PmTilesVectorTileProvider> _futureTileProvider = PmTilesVectorTileProvider
    .fromArchive(somePmTilesArchive);
```

2. Await the response of the future, e.g. by using a `FutureBuilder`.

3. Provide your `PmTilesVectorTileProvider` to your `TileLayer`

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