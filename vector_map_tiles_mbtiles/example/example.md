### Basic usage

1. Open the MBTiles file:

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

### Need more information?

- Read
  the [README.md](https://github.com/josxha/flutter_map_plugins/blob/main/vector_map_tiles_mbtiles/README.md)
- Check out
  the [combined example app](https://github.com/josxha/flutter_map_plugins/tree/main/example)
  that showcases this and other flutter_map
  packages.