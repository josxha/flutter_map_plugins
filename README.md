This repository contains multiple flutter packages that extend the
functionality of [flutter_map](https://pub.dev/packages/flutter_map).

A combined example app can be found under
[./example](https://github.com/josxha/flutter_map_plugins).

### [flutter_map_cache](https://pub.dev/packages/flutter_map_cache)

A slim yet powerful caching plugin for flutter_map tile layers. Supports any
storage backend you would possibly want.

- This package fills the gap
  between [dio_cache_interceptor](https://pub.dev/packages/dio_cache_interceptor)
  and flutter_map.
- Support for tile cancellation

### [flutter_map_pmtiles](https://pub.dev/packages/flutter_map_pmtiles)

This package provides the `PmTilesTileProvider` that can be used with
flutter_map tile layers.

- This package uses [pmtiles](https://pub.dev/packages/pmtiles) under the hood
  for the PMTiles support.
- PMTiles is an open archive format for pyramids of tile data, accessible via
  HTTP Range Requests. Head over to [protomaps.com](https://protomaps.com/) to
  learn more about
  PMTiles.

### [flutter_map_scalebar](https://pub.dev/packages/flutter_map_scalebar)

This package provides the `Scalebar` that is a layer for FlutterMap and renders
a scalebar onto the map.

- This package is based on the scalebar plugin example of flutter_map.
- It is completely customizable (see the example) and has some additional
  improvements and fixes.

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