import 'dart:io';

import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_db_store/dio_cache_interceptor_db_store.dart';
import 'package:dio_cache_interceptor_file_store/dio_cache_interceptor_file_store.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:dio_cache_interceptor_objectbox_store/dio_cache_interceptor_objectbox_store.dart';

enum CacheStoreTypes {
  memCache('MemCache'),
  dbCache('DbCache (Drift)'),
  fileCache('FileCache'),
  hiveCache('HiveCache'),
  // throws FormatException: Unexpected extension byte (at offset 0)
  //sembastCache('SembastCache'),
  objectBoxCache('ObjectBoxCache');

  const CacheStoreTypes(this.name);

  final String name;

  CacheStore getCacheStore(String path) => switch (this) {
        CacheStoreTypes.memCache => MemCacheStore(),
        CacheStoreTypes.dbCache => DbCacheStore(
            databasePath: path,
            databaseName: 'DbCacheStore',
          ),
        CacheStoreTypes.fileCache => FileCacheStore(
            '$path${Platform.pathSeparator}FileCacheStore',
          ),
        CacheStoreTypes.hiveCache => HiveCacheStore(
            '$path${Platform.pathSeparator}HiveCacheStore',
            hiveBoxName: 'HiveCacheStore',
          ),
        CacheStoreTypes.objectBoxCache => ObjectBoxCacheStore(
            storePath: '$path${Platform.pathSeparator}ObjectBoxCacheStore',
          ),
        /*CacheStoreTypes.sembastCache => SembastCacheStore(
            storePath: '$path${Platform.pathSeparator}SembastCacheStore',
            cacheStore: 'SembastCacheStore',
          ),*/
      };
}
