# Plugins for the flutter_map ecosystem 🗺️

This repository contains multiple flutter packages that extend the
functionality of [flutter_map](https://pub.dev/packages/flutter_map).

[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)
[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![Issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![Open PRs](https://badgen.net/github/open-prs/josxha/flutter_map_cache?label=Open+PRs&color=green)](https://GitHub.com/josxha/flutter_map_plugins/pulls)

- A combined example app can be found under
  [./example](https://github.com/josxha/flutter_map_plugins)
  or use the hosted version
  at [https://flutter-map-plugins.web.app](https://flutter-map-plugins.web.app/).
- Need a list of all `flutter_map` plugins? Check out
  the [awesome-flutter-map](https://github.com/josxha/awesome-flutter-map?tab=readme-ov-file#awesome-flutter-map)
  list.

## Packages

### [flutter_map_cache](https://pub.dev/packages/flutter_map_cache)

[![Pub Version](https://img.shields.io/pub/v/flutter_map_cache)](https://pub.dev/packages/flutter_map_cache)
[![likes](https://img.shields.io/pub/likes/flutter_map_cache?logo=flutter)](https://pub.dev/packages/flutter_map_cache)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_cache)](https://pub.dev/packages/flutter_map_cache)

A slim yet powerful caching plugin for flutter_map tile layers. Supports any
storage backend you would possibly want.

- This package fills the gap
  between [dio_cache_interceptor](https://pub.dev/packages/dio_cache_interceptor)
  and flutter_map.
- Support for tile cancellation

### [flutter_map_compass](https://pub.dev/packages/flutter_map_compass)

[![Pub Version](https://img.shields.io/pub/v/flutter_map_compass)](https://pub.dev/packages/flutter_map_compass)
[![likes](https://img.shields.io/pub/likes/flutter_map_compass?logo=flutter)](https://pub.dev/packages/flutter_map_compass)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_compass)](https://pub.dev/packages/flutter_map_compass)

A compass for flutter_map that indicates the map rotation. It rotates the map
back to north on top when clicked.

### [flutter_map_mbtiles](https://pub.dev/packages/flutter_map_mbtiles)

[![Pub Version](https://img.shields.io/pub/v/flutter_map_mbtiles)](https://pub.dev/packages/flutter_map_mbtiles)
[![likes](https://img.shields.io/pub/likes/flutter_map_mbtiles?logo=flutter)](https://pub.dev/packages/flutter_map_mbtiles)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_mbtiles)](https://pub.dev/packages/flutter_map_mbtiles)

This package provides the `MbTilesTileProvider` that can be used with
flutter_map tile layers.

- This package uses [mbtiles](https://pub.dev/packages/mbtiles) under the hood
  for the MBTiles support.
- MBTiles is a file format to store map tiles in a single SQLite database.

### [flutter_map_pmtiles](https://pub.dev/packages/flutter_map_pmtiles)

[![Pub Version](https://img.shields.io/pub/v/flutter_map_pmtiles)](https://pub.dev/packages/flutter_map_pmtiles)
[![likes](https://img.shields.io/pub/likes/flutter_map_pmtiles?logo=flutter)](https://pub.dev/packages/flutter_map_pmtiles)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_pmtiles)](https://pub.dev/packages/flutter_map_pmtiles)

This package provides the `PmTilesTileProvider` that can be used with
flutter_map tile layers.

- This package uses [pmtiles](https://pub.dev/packages/pmtiles) under the hood
  for the PMTiles support.
- PMTiles is an open archive format for pyramids of tile data, accessible via
  HTTP Range Requests. Head over to [protomaps.com](https://protomaps.com/) to
  learn more about
  PMTiles.

### [vector_map_tiles_mbtiles](https://pub.dev/packages/vector_map_tiles_mbtiles)

[![Pub Version](https://img.shields.io/pub/v/vector_map_tiles_mbtiles)](https://pub.dev/packages/vector_map_tiles_mbtiles)
[![likes](https://img.shields.io/pub/likes/vector_map_tiles_mbtiles?logo=flutter)](https://pub.dev/packages/vector_map_tiles_mbtiles)
[![Pub Popularity](https://img.shields.io/pub/popularity/vector_map_tiles_mbtiles)](https://pub.dev/packages/vector_map_tiles_mbtiles)

This package provides the `MbTilesVectorTileProvider` that can be used with
the [vector_map_tiles](https://pub.dev/packages/vector_map_tiles) which itself
adds support for vector tiles to flutter_map.

- This package uses [mbtiles](https://pub.dev/packages/mbtiles) under the hood
  for the MBTiles support.
- MBTiles is a file format to store map tiles in a single SQLite database.

### [vector_map_tiles_pmtiles](https://pub.dev/packages/vector_map_tiles_pmtiles)

[![Pub Version](https://img.shields.io/pub/v/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles)
[![likes](https://img.shields.io/pub/likes/vector_map_tiles_pmtiles?logo=flutter)](https://pub.dev/packages/vector_map_tiles_pmtiles)
[![Pub Popularity](https://img.shields.io/pub/popularity/vector_map_tiles_pmtiles)](https://pub.dev/packages/vector_map_tiles_pmtiles)

This package provides the `PmTilesVectorTileProvider` that can be used with
the [vector_map_tiles](https://pub.dev/packages/vector_map_tiles) which itself
adds support for vector tiles to flutter_map.

- This package uses [pmtiles](https://pub.dev/packages/pmtiles) under the hood
  for the PMTiles support.
- PMTiles is an open archive format for pyramids of tile data, accessible via
  HTTP Range Requests. Head over to [protomaps.com](https://protomaps.com/) to
  learn more about
  PMTiles.

## Contributions

A huge thanks to all contributors! 😎

[![List of contributors](https://contrib.rocks/image?repo=josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/graphs/contributors)
