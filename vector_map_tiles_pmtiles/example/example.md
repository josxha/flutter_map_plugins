### Basic usage

```dart
/// Initiate your tile provider.
/// The source can be a PMTiles file that is either hosted or local on 
/// your file system. flutter assets however are not supported.
final _futureTileProvider = PmTilesVectorTileProvider
    .fromSource('eitherAnUrlOrFileSystemPath');

/// The theme specifies the look of the rendered map.
/// Note: Styles from Mapbox, OpenMapTiles and others and not compatible
/// with Protomaps styles.
final mapTheme = ProtomapsThemes.light();

@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      VectorTileLayer(
        // the map theme
        theme: mapTheme,

        tileProviders: TileProviders({
          // the awaited vector tile provider
          'protomaps': tileProvider,
        }),

        // disable the file cache when you change the PMTiles source
        // fileCacheTtl: Duration.zero,
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