# flutter_map_cache

A slim yet powerful caching plugin for flutter_map tile layers.

![Pub Likes](https://img.shields.io/pub/likes/flutter_map_cache)
![Pub Points](https://img.shields.io/pub/points/flutter_map_cache)
![Pub Popularity](https://img.shields.io/pub/popularity/flutter_map_cache)
![Pub Version](https://img.shields.io/pub/v/flutter_map_cache)

![GitHub last commit](https://img.shields.io/github/last-commit/josxha/flutter_map_cache)
![GitHub issues](https://img.shields.io/github/issues/josxha/flutter_map_cache)
![GitHub Repo stars](https://img.shields.io/github/stars/josxha/flutter_map_cache?style=social)

## Features

The package is using [dio](https://pub.dev/packages/dio) with the
[dio_cache_interceptor](https://pub.dev/packages/dio_cache_interceptor) package and supports the storage backend that
you like.

Supported storage backends are:

- [x] In-Memory (for testing)
- [x] File System
- [x] [Drift (SQLite)](https://pub.dev/packages/drift)
- [x] [Hive](https://pub.dev/packages/hive)
- [x] [ObjectBox](https://pub.dev/packages/objectbox)
- [ ] [Isar](https://pub.dev/packages/isar) (planned,
  see [dio_cache_interceptor#122](https://github.com/llfbandit/dio_cache_interceptor/issues/122))
- [ ] [Sembast](https://pub.dev/packages/sembast) (currently broken)

## Getting started

1. Add the packages you want to use to your `pubspec.yaml` file. Only add the packages for the backend you want to use.

```yaml
dependencies:
  flutter_map: ^5.0.0 # in case you don't have it yet 
  flutter_map_cache: ^1.0.0 # this package

  dio_cache_interceptor_db_store: ^5.1.0 # drift
  sqlite3_flutter_libs: ^0.5.15 # drift

  dio_cache_interceptor_file_store: ^1.2.2 # file system

  dio_cache_interceptor_hive_store: ^3.2.1 # hive

  dio_cache_interceptor_objectbox_store: ^1.1.1 # objectbox
  objectbox_flutter_libs: ^1.4.1 # objectbox  
```

2. The storage backends might have their own required setups. Please check them out in their package documentations.

## Usage

Using the cache is easy. Here is an example how to use the Hive backend:

First get the cache directory of the app (i.e. with the [path_provider](https://pub.dev/packages/path_provider)
package).

```dart
import 'package:path_provider/path_provider.dart';

Future<String> getPath() async {
  final cacheDirectory = await getTemporaryDirectory();
  return cacheDirectory.path;
}
```

Then use the directory path to initialize the `HiveCacheStore`. You can wrap FlutterMap inside a `FutureBuilder` to use
the getPath() method.

```dart
@override
Widget build(BuildContext context) {
  return FlutterMap(
    options: MapOptions(),
    children: [
      TileLayer(
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
        tileProvider: CachedTileProvider(
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

## Additional information

Pull requests are welcome. If you want to add support for another storage backend you can check out
[dio_cache_interceptor](https://github.com/llfbandit/dio_cache_interceptor).

If you need help you can [open an issue](https://github.com/josxha/flutter_map_cache/issues/new/choose) or join
the [flutter_map discord server](https://discord.gg/BwpEsjqMAH).
