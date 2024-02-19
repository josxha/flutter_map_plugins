# flutter_map_cache

A slim yet powerful caching plugin for flutter_map tile layers.

[![Pub Version](https://img.shields.io/pub/v/flutter_map_cache)](https://pub.dev/packages/flutter_map_cache)
[![likes](https://img.shields.io/pub/likes/flutter_map_cache?logo=flutter)](https://pub.dev/packages/flutter_map_cache)
[![Pub Points](https://img.shields.io/pub/points/flutter_map_cache)](https://pub.dev/packages/flutter_map_cache/score)
[![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_cache)](https://pub.dev/packages/flutter_map_cache)

[![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins)
[![stars](https://badgen.net/github/stars/josxha/flutter_map_plugins?label=stars&color=green&icon=github)](https://github.com/josxha/flutter_map_plugins/stargazers)
[![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_plugins)](https://github.com/josxha/flutter_map_plugins/issues)
[![codecov](https://codecov.io/gh/josxha/flutter_map_plugins/graph/badge.svg?token=5045489G7X)](https://codecov.io/gh/josxha/flutter_map_plugins)

## Motivation

- Many tile providers **require users in their tile usage policy** to cache
  tile requests. This decreases the load on those servers and is important
  especially if they are donation based like the OpenStreetMap.
- Commercial tile providers normally charge per tile request. By caching tiles
  you can reduce the amount of tile requests and **lower your costs**.
- Caching map tiles provides a **better user experience** since the region the
  user visited **loads nearby instantly**. Most of the time a user visits the
  same regions often, e.g. because it is the region he lives in.
- Especially raster tiles that are used by default on flutter_map, the data
  consumption can be high quite fast. Caching tiles **lowers the amount of used
  mobile data and bandwidth**.

## Features

The package uses [dio](https://pub.dev/packages/dio) with the
[dio_cache_interceptor](https://pub.dev/packages/dio_cache_interceptor) package
and supports the storage backend that
you like.

Supported storage backends are:

| Storage backend                                 | Description                                                                                                    |
|-------------------------------------------------|----------------------------------------------------------------------------------------------------------------|
| In-Memory                                       | - For testing purposes<br/>- `flutter_map` has memory caching itself                                           |
| File System                                     | - Easy to setup, no additional storage backend package required<br/>- potentially slower than using a database |
| [Drift](https://pub.dev/packages/drift)         | - SQLite database<br/>- good platform support                                                                  |
| [Hive](https://pub.dev/packages/hive)           | - key-value database<br/>- easy to integrate                                                                   |
| [ObjectBox](https://pub.dev/packages/objectbox) | - NoSQL, ACID compliant<br/>- Fast library<br/>- More complex integration                                      |
| [Isar](https://pub.dev/packages/isar)           | - NoSQL<br/>- Fast library<br/>- More complex integration                                                      |

Other storage backends will be supported as soon as the underlying package
[dio_cache_interceptor](https://pub.dev/packages/dio_cache_interceptor) supports
them.

## Getting started

1. Add the packages you want to use to your `pubspec.yaml` file. Only add the
   packages for the backend you want to use.

```yaml
dependencies:
  flutter_map: ^6.0.0 # in case you don't have it yet 
  flutter_map_cache: ^1.3.0 # this package
  path_provider: ^2.1.2 # in case the storage backend requires a path

  # drift
  dio_cache_interceptor_db_store: ^5.1.0
  sqlite3_flutter_libs: ^0.5.15

  # file system
  dio_cache_interceptor_file_store: ^1.2.2

  # hive
  dio_cache_interceptor_hive_store: ^3.2.1

  # objectbox
  dio_cache_interceptor_objectbox_store: ^1.1.3
  objectbox_flutter_libs: ^1.4.1

  # isar
  isar: ^3.1.0+1
  isar_flutter_libs: ^3.1.0+1
```

2. ⚠️ Some storage backends have their own required setups. Please check them
   out in their package documentations.

## Usage

Using the cache is easy. Here are examples how to use some of the storage
backends:

### Hive

<details open>
  <summary>Click here to expand / hide.</summary>

1. First get the cache directory of the app (i.e. with
   the [path_provider](https://pub.dev/packages/path_provider)
   package).

```dart
import 'package:path_provider/path_provider.dart';

Future<String> getPath() async {
  final cacheDirectory = await getTemporaryDirectory();
  return cacheDirectory.path;
}
```

2. Then use the directory path to initialize the `HiveCacheStore`. You can wrap
   FlutterMap inside a `FutureBuilder` to use
   the `getPath()` method.

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

---
</details>

### In Memory (for testing)

<details>
  <summary>Click here to expand / hide.</summary>

```dart
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';

class MyMap extends StatelessWidget {
  MyMap({super.key});

  // create the cache store as a field variable
  final _cacheStore = MemCacheStore();

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(),
      children: [
        TileLayer(
          urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
          tileProvider: CachedTileProvider(
            // use the store for your CachedTileProvider instance
            store: _cacheStore,
          ),
        ),
      ],
    );
  }
}
```

---
</details>

### File System

<details>
  <summary>Click here to expand / hide.</summary>

```dart
import 'dart:io';

import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_file_store/dio_cache_interceptor_file_store.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:path_provider/path_provider.dart';

class MyMap extends StatefulWidget {
  const MyMap({super.key});

  @override
  State<MyMap> createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  // create the cache store as a field variable
  final Future<CacheStore> _cacheStoreFuture = _getCacheStore();

  /// Get the CacheStore as a Future. This method needs to be static so that it
  /// can be used to initialize a field variable.
  static Future<CacheStore> _getCacheStore() async {
    final dir = await getTemporaryDirectory();
    // Note, that Platform.pathSeparator from dart:io does not work on web,
    // import it from dart:html instead.
    return FileCacheStore('${dir.path}${Platform.pathSeparator}MapTiles');
  }

  @override
  Widget build(BuildContext context) {
    // show a loading screen when _cacheStore hasn't been set yet
    return FutureBuilder<CacheStore>(
      future: _cacheStoreFuture,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final cacheStore = snapshot.data!;
          return FlutterMap(
            options: MapOptions(),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                tileProvider: CachedTileProvider(
                  // use the store for your CachedTileProvider instance
                  store: cacheStore,
                ),
              ),
            ],
          );
        }
        if (snapshot.hasError) {
          return Center(child: Text(snapshot.error.toString()));
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}
```

---
</details>

### More examples

You can find additional example implementations for other storage backends in
[the example app](https://github.com/josxha/flutter_map_plugins/tree/main/example)
on GitHub.

## Common use cases & frequent questions

### How about web?

<details>
  <summary>Click here to expand / hide.</summary>

This package supports the web as long as you use a storage backend that supports
web.

- In Memory works out of the box
- Hive uses for its web support IndexedDB under the hood to support web.
- Drift (SqLite)
  requires [additional setup steps for web](https://drift.simonbinder.eu/web/)

---
</details>

### Does this package support cancellation of tile requests?

<details>
  <summary>Click here to expand / hide.</summary>

Yes. This package includes the tile cancellation out of the box.
There is no need
for [flutter_map_cancellable_tile_provider](https://pub.dev/packages/flutter_map_cancellable_tile_provider/)
when using
this package.

---
</details>

### Remove the api key from the url before it gets used for caching

<details>
  <summary>Click here to expand / hide.</summary>

Commercial tile providers often use an api key that is attached as a parameter
to the url. While this shouldn't be a problem when the api key stays the same
you might want to make it immune to api key changes anyway.

```
final _uuid = Uuid();

CachedTileProvider(
  keyBuilder: (request) {
    return _uuid.v5(
      Uuid.NAMESPACE_URL,
      request.uri.replace(queryParameters: {}).toString(),
    );
  },
),
```

---
</details>

### Can I use this package for an offline map?

<details>
  <summary>Click here to expand / hide.</summary>

This package does not provide support to download tiles automatically.
Only tiles that were previously visited with an active internet connection
show up on the map.

If you need to have the map completely offline, I recommend to check out
the file formats MBTiles or PMTiles.

---
</details>

### What if I want to use sqflite?

<details>
  <summary>Click here to expand / hide.</summary>

Because [dio_cache_interceptor](https://github.com/llfbandit/dio_cache_interceptor)
already supports Drift as a SQLite solution it's unlikely that `sqflite` will
be supported any day soon.

If you still are required to use only sqflite, I recommend to create your own
tile provider by using the
[cached_network_image](https://pub.dev/packages/cached_network_image) package.

---
</details>

## Additional information

Pull requests are welcome. If you want to add support for another storage
backend you can check out
[dio_cache_interceptor](https://github.com/llfbandit/dio_cache_interceptor).

If you need help you
can [open an issue](https://github.com/josxha/flutter_map_plugins/issues/new/choose)
or join
the [`flutter_map` discord server](https://discord.gg/BwpEsjqMAH).
