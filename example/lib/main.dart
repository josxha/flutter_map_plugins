import 'package:flutter/material.dart';
import 'package:flutter_map_plugins_example/flutter_map_cache/page.dart';
import 'package:flutter_map_plugins_example/flutter_map_pmtiles/page.dart';
import 'package:flutter_map_plugins_example/vector_map_tiles_pmtiles/page.dart';

void main() {
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
      home: const Material(child: SelectionPage()),
    );
  }
}

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: GridView.count(
        crossAxisCount: 2,
        childAspectRatio: 5,
        children: [
          SelectionItemWidget(
            title: 'flutter_map_cache',
            desc:
                'A slim yet powerful caching plugin for flutter_map tile layers.',
            pageBuilder: (context) => const FlutterMapCachePage(),
          ),
          SelectionItemWidget(
            title: 'flutter_map_pmtiles',
            desc: 'PMTiles for flutter_map',
            pageBuilder: (context) => const FlutterMapPmTilesPage(),
          ),
          SelectionItemWidget(
            title: 'vector_map_tiles_pmtiles',
            desc: 'PMTiles for vector_map_files / flutter_map',
            pageBuilder: (context) => VectorMapTilesPmTilesPage(),
          ),
        ],
      ),
    );
  }
}

class SelectionItemWidget extends StatelessWidget {
  final String title;
  final String desc;
  final WidgetBuilder pageBuilder;

  const SelectionItemWidget({
    super.key,
    required this.title,
    required this.desc,
    required this.pageBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () =>
            Navigator.of(context).push(MaterialPageRoute(builder: pageBuilder)),
        child: ListTile(
          title: Text(title),
          subtitle: Text(desc),
        ),
      ),
    );
  }
}
