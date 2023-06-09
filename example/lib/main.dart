import 'dart:io';

import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:flutter_map_cache_example/cache_store_types.dart';
import 'package:flutter_map_cache_example/connectivity_icon.dart';
import 'package:latlong2/latlong.dart';
import 'package:path_provider/path_provider.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatefulWidget {
  const ExampleApp({super.key});

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  late CacheStore _cacheStore = MemCacheStore();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterMap Cache',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('FlutterMap Cache'),
          actions: const [ConnectivityIcon()],
        ),
        body: Column(
          children: [
            Expanded(
              child: FlutterMap(
                options: MapOptions(
                  center: const LatLng(47.141344, 9.553680),
                  interactiveFlags:
                      InteractiveFlag.all & ~InteractiveFlag.rotate,
                  maxZoom: 16,
                  zoom: 8,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    tileProvider: CachedTileProvider(
                      store: _cacheStore,
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
                  FutureBuilder<Directory>(
                    // ignore: discarded_futures
                    future: getApplicationDocumentsDirectory(),
                    builder: (context, snapshot) {
                      if (snapshot.data == null) {
                        return const Expanded(child: LinearProgressIndicator());
                      }
                      final dataPath = snapshot.data!.path;
                      return DropdownMenu<CacheStoreTypes>(
                        initialSelection: CacheStoreTypes.memCache,
                        onSelected: (value) => setState(() {
                          if (value == null) return;
                          _cacheStore = value.getCacheStore(dataPath);
                        }),
                        dropdownMenuEntries: CacheStoreTypes.values
                            .map(
                              (e) => DropdownMenuEntry(
                                value: e,
                                label: e.name,
                              ),
                            )
                            .toList(growable: false),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
