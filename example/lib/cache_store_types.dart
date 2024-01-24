import 'dart:io';

import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:dio_cache_interceptor_db_store/dio_cache_interceptor_db_store.dart';
import 'package:dio_cache_interceptor_file_store/dio_cache_interceptor_file_store.dart';
import 'package:dio_cache_interceptor_hive_store/dio_cache_interceptor_hive_store.dart';
import 'package:flutter/material.dart';

enum CacheStoreTypes {
  memCache('MemCache'),
  dbCache('DbCache (Drift)'),
  fileCache('FileCache'),
  hiveCache('HiveCache');

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
      };

  CacheStore getCacheStoreWeb() => switch (this) {
        CacheStoreTypes.memCache => MemCacheStore(),
        CacheStoreTypes.dbCache => DbCacheStore(
            databasePath: '', // ignored on web
            databaseName: 'DbCacheStore',
          ),
        CacheStoreTypes.fileCache => FileCacheStore(
            'FileCacheStore',
          ),
        CacheStoreTypes.hiveCache => HiveCacheStore(
            'HiveCacheStore',
            hiveBoxName: 'HiveCacheStore',
          ),
      };

  static List<DropdownMenuEntry<CacheStoreTypes>> get dropdownList =>
      CacheStoreTypes.values
          .map(
            (e) => DropdownMenuEntry<CacheStoreTypes>(
              value: e,
              label: e.name,
            ),
          )
          .toList(growable: false);
}
