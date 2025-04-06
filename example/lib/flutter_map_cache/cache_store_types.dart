import 'dart:io';

import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:http_cache_drift_store/http_cache_drift_store.dart';
import 'package:http_cache_file_store/http_cache_file_store.dart';
import 'package:http_cache_hive_store/http_cache_hive_store.dart';

enum CacheStoreTypes {
  memCache('MemCache'),
  dbCache('DbCache (Drift)'),
  fileCache('FileCache'),
  hiveCache('HiveCache');

  const CacheStoreTypes(this.name);

  final String name;

  CacheStore getCacheStore(String path) => switch (this) {
        CacheStoreTypes.memCache => MemCacheStore(),
        CacheStoreTypes.dbCache => DriftCacheStore(
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
        CacheStoreTypes.dbCache => DriftCacheStore(
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
