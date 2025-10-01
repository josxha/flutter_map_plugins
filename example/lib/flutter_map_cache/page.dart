import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:flutter_map_plugins_example/common/attribution_widget.dart';
import 'package:flutter_map_plugins_example/flutter_map_cache/cache_store_types.dart';
import 'package:flutter_map_plugins_example/flutter_map_cache/connectivity_icon.dart';
import 'package:latlong2/latlong.dart';
import 'package:path_provider/path_provider.dart';

class FlutterMapCachePage extends StatefulWidget {
  const FlutterMapCachePage({super.key});

  @override
  State<FlutterMapCachePage> createState() => _FlutterMapCachePageState();
}

class _FlutterMapCachePageState extends State<FlutterMapCachePage> {
  CacheStore _cacheStore = MemCacheStore();
  final _dio = Dio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_map_cache'),
        actions: const [ConnectivityIcon()],
      ),
      body: Column(
        children: [
          Expanded(
            child: FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(47.141344, 9.553680),
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                ),
                maxZoom: 16,
                initialZoom: 8,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  tileProvider: CachedTileProvider(
                    dio: _dio,
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
                  userAgentPackageName: 'com.github.josxha/flutter_map_plugins',
                ),
                const OsmAttributionWidget(),
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
