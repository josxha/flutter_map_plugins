### Basic usage

```dart
// initiate your tile provider
final _futureTileProvider = MbTilesTileProvider
    .fromSource('eitherAnUrlOrFileSystemPath');

@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        // use your awaited MbTilesTileProvider
        tileProvider: tileProvider,
      ),
    ],
  );
}
```

### Need more information?

- Read
  the [README.md](https://github.com/josxha/flutter_map_plugins/blob/main/flutter_map_mbtiles/README.md)
- Check out
  the [combined example app](https://github.com/josxha/flutter_map_plugins/tree/main/example)
  that showcases this and other flutter_map
  packages.