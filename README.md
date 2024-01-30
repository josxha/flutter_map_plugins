This repository contains multiple flutter packages that extend the
functionality of [flutter_map](https://pub.dev/packages/flutter_map).

A combined example app can be found under
[./example](https://github.com/josxha/flutter_map_plugins).

### [flutter_map_cache](https://pub.dev/packages/flutter_map_cache)

### [flutter_map_pmtiles](https://pub.dev/packages/flutter_map_pmtiles)

This package provides the `PmTilesTileProvider` that can be used with
flutter_map tile layers.

- This package uses [pmtiles](https://pub.dev/packages/pmtiles) under the hood
  for the PMTiles support.
- PMTiles is an open archive format for pyramids of tile data, accessible via
  HTTP Range Requests. Head over to [protomaps.com](https://protomaps.com/) to
  learn more about
  PMTiles.

### [vector_map_tiles_pmtiles](https://pub.dev/packages/vector_map_tiles_pmtiles)

This package provides the `PmTilesVectorTileProvider` that can be used with
the [vector_map_tiles](https://pub.dev/packages/vector_map_tiles) which itself
adds support for vector tiles to flutter_map.

- This package uses [pmtiles](https://pub.dev/packages/pmtiles) under the hood
  for the PMTiles support.
- PMTiles is an open archive format for pyramids of tile data, accessible via
  HTTP Range Requests. Head over to [protomaps.com](https://protomaps.com/) to
  learn more about
  PMTiles.