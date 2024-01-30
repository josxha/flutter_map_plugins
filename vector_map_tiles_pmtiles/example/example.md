### Basic usage

```dart
// initiate your tile provider
final Future<
        PmTilesVectorTileProvider> _futureTileProvider = PmTilesVectorTileProvider
        .fromSource('eitherAnUrlOrFileSystemPath');

@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        // use your awaited PmTilesVectorTileProvider
        tileProvider: tileProvider,
      ),
    ],
  );
}
```

### Need more information?

- Read
  the [README.md](https://github.com/josxha/flutter_map_plugins/blob/main/vector_map_tiles_pmtiles/README.md)
- Check out
  the [combined example app](https://github.com/josxha/flutter_map_plugins/tree/main/example)
  that showcases this and other flutter_map
  packages.