import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:flutter_map_cache_example/cache_store_types.dart';
import 'package:flutter_map_cache_example/example_app_wrapper.dart';
import 'package:flutter_map_cache_example/misc.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  CacheStore _cacheStore = MemCacheStore();

  @override
  Widget build(BuildContext context) {
    return ExampleAppWrapper(
      child: Column(
        children: [
          Expanded(
            child: FlutterMap(
              options: mapOptions,
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  tileProvider: CachedTileProvider(
                    maxStale: const Duration(days: 30),
                    store: _cacheStore,
                    interceptors: [
                      LogInterceptor(
                        logPrint: (object) => debugPrint(object.toString()),
                        responseHeader: false,
                        requestHeader: false,
                        request: false,
                      ),
                    ],
                  ),
                  userAgentPackageName: 'com.github.josxha/flutter_map_cache',
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text('CacheStore Type'),
                if (kIsWeb)
                  DropdownMenu<CacheStoreTypes>(
                    initialSelection: CacheStoreTypes.memCache,
                    onSelected: (value) {
                      if (value == null) return;
                      debugPrint('CacheStore changed to ${value.name}');
                      setState(() {
                        _cacheStore = value.getCacheStoreWeb();
                      });
                    },
                    dropdownMenuEntries: CacheStoreTypes.dropdownList,
                  ),
                if (!kIsWeb)
                  FutureBuilder<Directory>(
                    // ignore: discarded_futures
                    future: getTemporaryDirectory(), // not available on web
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        final dataPath = snapshot.requireData.path;
                        return DropdownMenu<CacheStoreTypes>(
                          initialSelection: CacheStoreTypes.memCache,
                          onSelected: (value) {
                            if (value == null) return;
                            debugPrint('CacheStore changed to ${value.name}');
                            setState(() {
                              _cacheStore = value.getCacheStore(dataPath);
                            });
                          },
                          dropdownMenuEntries: CacheStoreTypes.dropdownList,
                        );
                      }
                      if (snapshot.hasError) {
                        debugPrint(snapshot.error.toString());
                        debugPrintStack(stackTrace: snapshot.stackTrace);
                        return Expanded(
                          child: Text(snapshot.error.toString()),
                        );
                      }
                      return const Expanded(child: LinearProgressIndicator());
                    },
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
