import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:flutter_map_cache_example/info_table.dart';
import 'package:latlong2/latlong.dart';

void main() => runApp(const ExampleApp());

class ExampleApp extends StatelessWidget {
  const ExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterMap Cache',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('FlutterMap Cache'),
        ),
        body: Column(
          children: [
            const ColoredBox(
              color: Colors.white,
              child: InfoTable(),
            ),
            Expanded(
              child: FlutterMap(
                options: MapOptions(
                  center: const LatLng(47.141344, 9.553680),
                  interactiveFlags:
                      InteractiveFlag.all & ~InteractiveFlag.rotate,
                  maxZoom: 18,
                  zoom: 8,
                ),
                children: [
                  TileLayer(
                    urlTemplate:
                        'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                    tileProvider: CachedTileProvider(),
                    userAgentPackageName: 'com.github.josxha/flutter_map_cache',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
