import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map_plugins_example/flutter_map_cache/page.dart';
import 'package:flutter_map_plugins_example/flutter_map_compass/page.dart';
import 'package:flutter_map_plugins_example/flutter_map_maplibre/page.dart';
import 'package:flutter_map_plugins_example/flutter_map_maplibre/page2.dart';
import 'package:flutter_map_plugins_example/flutter_map_mbtiles/page.dart';
import 'package:flutter_map_plugins_example/flutter_map_pmtiles/page.dart';
import 'package:flutter_map_plugins_example/vector_map_tiles_mbtiles/page.dart';
import 'package:flutter_map_plugins_example/vector_map_tiles_pmtiles/page.dart';
import 'package:flutter_web_plugins/url_strategy.dart';
import 'package:url_launcher/url_launcher_string.dart';

void main() {
  usePathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_map_plugins',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => const SelectionPage(),
        '/flutter_map_cache': (context) => const FlutterMapCachePage(),
        '/flutter_map_pmtiles': (context) => const FlutterMapPmTilesPage(),
        '/flutter_map_maplibre': (context) => const MapLibreFlutterMapPage(),
        '/flutter_map_maplibre2': (context) => const FlutterMapMapLibrePage(),
        '/vector_map_tiles_pmtiles': (context) => VectorMapTilesPmTilesPage(),
        '/flutter_map_mbtiles': (context) => const FlutterMapMbTilesPage(),
        '/vector_map_tiles_mbtiles': (context) =>
            const VectorMapTilesMbTilesPage(),
        '/flutter_map_compass': (context) => const FlutterMapCompassPage(),
      },
    );
  }
}

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    const children = [
      SelectionItemWidget(
        title: 'flutter_map_cache',
        desc: 'A slim yet powerful caching plugin for flutter_map '
            'tile layers.',
        routeName: '/flutter_map_cache',
      ),
      SelectionItemWidget(
        title: 'flutter_map_compass',
        desc: 'A simple compass layer to indicate the map rotation and '
            'reset the rotation on click',
        routeName: '/flutter_map_compass',
      ),
      SelectionItemWidget(
        title: 'flutter_map_maplibre',
        desc: 'Performant vector tiles for flutter_map',
        routeName: '/flutter_map_maplibre',
      ),
      SelectionItemWidget(
        title: 'flutter_map_maplibre 2',
        desc: 'Use flutter_map layers in maplibre',
        routeName: '/flutter_map_maplibre2',
      ),
      SelectionItemWidget.disabledOnWeb(
        title: 'flutter_map_mbtiles',
        desc: 'MBTiles for flutter_map',
        routeName: '/flutter_map_mbtiles',
      ),
      SelectionItemWidget(
        title: 'flutter_map_pmtiles',
        desc: 'PMTiles for flutter_map',
        routeName: '/flutter_map_pmtiles',
      ),
      SelectionItemWidget.disabledOnWeb(
        title: 'vector_map_tiles_mbtiles',
        desc: 'MBTiles for vector_map_files / flutter_map',
        routeName: '/vector_map_tiles_mbtiles',
      ),
      SelectionItemWidget.disabledOnWeb(
        title: 'vector_map_tiles_pmtiles',
        desc: 'PMTiles for vector_map_files / flutter_map',
        routeName: '/vector_map_tiles_pmtiles',
      ),
    ];

    final width = MediaQuery.sizeOf(context).width;
    final githubButton = width < 350
        ? IconButton(onPressed: _openGithub, icon: const Icon(Icons.link))
        : TextButton(
            onPressed: _openGithub,
            child: const Text('Source Code'),
          );
    return Scaffold(
      appBar: AppBar(
        title: const Text('flutter_map_plugins'),
        actions: [githubButton],
      ),
      body: ColoredBox(
        color: Colors.blueGrey.withValues(alpha: 0.3),
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: GridView.count(
            crossAxisCount: max(width ~/ 250, 1),
            childAspectRatio: 2,
            children: children,
          ),
        ),
      ),
    );
  }

  void _openGithub() => launchUrlString(
        'https://github.com/josxha/flutter_map_plugins',
      );
}

class SelectionItemWidget extends StatelessWidget {
  const SelectionItemWidget({
    required this.title,
    required this.desc,
    required this.routeName,
    this.disabled = false,
    this.disabledMessage = 'Disabled',
    super.key,
  });

  const SelectionItemWidget.disabledOnWeb({
    required this.title,
    required this.desc,
    required this.routeName,
    super.key,
  })  : disabled = kIsWeb,
        disabledMessage = 'Not on web';
  static const _titleStyle = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  static const _bannerTextStyle = TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: 10,
    fontWeight: FontWeight.w900,
    height: 1,
  );
  final String title;
  final String desc;
  final String routeName;
  final bool disabled;
  final String disabledMessage;

  @override
  Widget build(BuildContext context) {
    final content = Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title, style: _titleStyle, textAlign: TextAlign.center),
          const Spacer(),
          Text(desc, textAlign: TextAlign.center),
          const Spacer(),
        ],
      ),
    );

    return Card(
      color: disabled ? Colors.white70 : Colors.white,
      child: InkWell(
        onTap:
            disabled ? null : () => Navigator.of(context).pushNamed(routeName),
        child: disabled
            ? ClipRect(
                child: Banner(
                  message: disabledMessage,
                  textStyle: _bannerTextStyle,
                  color: Colors.grey,
                  location: BannerLocation.bottomEnd,
                  child: content,
                ),
              )
            : content,
      ),
    );
  }
}
