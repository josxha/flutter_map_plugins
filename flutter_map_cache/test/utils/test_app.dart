import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:latlong2/latlong.dart';

// ignore_for_file: diagnostic_describe_all_properties

class TestApp extends StatelessWidget {
  final CacheStore cacheStore;
  final Dio dio;

  const TestApp({super.key, required this.cacheStore, required this.dio});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: FlutterMap(
          options: const MapOptions(
            initialZoom: 0,
            initialCenter: LatLng(0, 0),
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              tileProvider: CachedTileProvider(
                store: cacheStore,
                dio: dio,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
