### Basic usage

```dart

Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        // use your awaited PmTilesTileProvider
        tileProvider: tileProvider,
      ),
      // place the ScalebarLayer as the last list item, to have it on top
      const Scalebar(),
    ],
  );
}
```

### Need more information?

- Read
  the [README.md](https://github.com/josxha/flutter_map_plugins/blob/main/flutter_map_pmtiles/README.md)
- Check out
  the [combined example app](https://github.com/josxha/flutter_map_plugins/tree/main/example)
  that showcases this and other flutter_map
  packages.