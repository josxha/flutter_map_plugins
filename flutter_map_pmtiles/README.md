# flutter_map_pmtiles

A TileProvider for flutter_map that adds support for PMTiles.

![Pub Likes](https://img.shields.io/pub/likes/flutter_map_pmtiles)
![Pub Points](https://img.shields.io/pub/points/flutter_map_pmtiles)
![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_pmtiles)
![Pub Version](https://img.shields.io/pub/v/flutter_map_pmtiles)

![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)
![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)
![GitHub Repo stars](https://img.shields.io/github/stars/josxha/flutter_map_plugins?style=social)

## Getting started

Add the following packages to your `pubspec.yaml` file:

```yaml
dependencies:
  flutter_map: ^6.0.0         # in case you don't have it yet 
  flutter_map_pmtiles: ^1.0.0 # this package
```

## Usage

1. Initiate the TileProvider

```dart
// ...from an URL
final Future<PmTilesTileProvider> _futureTileProvider = PmTilesTileProvider
    .fromSource('https://example.com/useYourOwnHostedPMTilesFile.pmtiles');
// ...from an local file on the file system
final Future<PmTilesTileProvider> _futureTileProvider = PmTilesTileProvider
    .fromSource('some/file/system/path.pmtiles');
// ...or provide a PmTilesArchive directly 
// (you'll need to add pmtiles as direct dependency to your project)
final Future<PmTilesTileProvider> _futureTileProvider = PmTilesTileProvider
    .fromArchive(somePmTilesArchive);
```

2. Await the response of the future, e.g. by using a `FutureBuilder`.

3. Provide your `PmTilesTileProvider` to your `TileLayer`

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        // use your awaited PmTilesTileProvider
        tileProvider: tileProvider,
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