### Basic usage

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        tileProvider: CachedTileProvider(
          // maxStale keeps the tile cached for the given Duration and 
          // tries to revalidate the next time it gets requested
          maxStale: const Duration(days: 30),
          // This example uses Hive as storage backend
          store: HiveCacheStore(
            path,
            hiveBoxName: 'HiveCacheStore',
          ),
        ),
      ),
    ],
  );
}
```

### Need more information?

- Read
  the [README.md](https://github.com/josxha/flutter_map_plugins/blob/main/flutter_map_cache/README.md)
- Check out
  the [combined example app](https://github.com/josxha/flutter_map_plugins/tree/main/example)
  that showcases this and other flutter_map packages.