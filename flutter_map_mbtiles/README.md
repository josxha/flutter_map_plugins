# flutter_map_mbtiles

Raster and Vector MBTiles `TileProvider` for [flutter_map](https://pub.dev/packages/flutter_map).

- Supported raster tiles: `jpg`, `png`, `webp`
- Supported vector tiles: `pbf`
- Web is not supported because of it's lack of sqlite support

![Pub Likes](https://img.shields.io/pub/likes/flutter_map_mbtiles)
![Pub Points](https://img.shields.io/pub/points/flutter_map_mbtiles)
![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_mbtiles)
![Pub Version](https://img.shields.io/pub/v/flutter_map_mbtiles)

![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_mbtiles)
![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_mbtiles)
![GitHub Repo stars](https://img.shields.io/github/stars/josxha/flutter_map_mbtiles?style=social)

## Getting started

#### pubspec.yaml

```yaml
dependencies:
  flutter_map_mbtiles: ^0.0.1
```

## Usage

```dart
late final MBTiles mbtiles;

@override
void initState() {
  // open mbtiles
  mbtiles = MBTiles(
    mbtilesPath: 'assets/mbtiles/countries-raster.mbtiles',
  );
  super.initState();
}

@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(
      initialZoom: zoom,
      initialCenter: center,
      onPositionChanged: (position, hasGesture) {
        if (position.center == null || position.zoom == null) return;
        setState(() {
          center = position.center!;
          zoom = position.zoom!;
        });
      },
      minZoom: 0,
      maxZoom: 6,
    ),
    children: [
      TileLayer(
        tileProvider: MBTilesTileProvider(
          mbtiles: mbtiles,
        ),
      ),
    ],
  );
}

@override
void dispose() {
  // close mbtiles
  mbtiles.dispose();
  super.dispose();
}

```