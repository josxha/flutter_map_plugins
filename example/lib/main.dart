import 'package:flutter/material.dart';

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
      home: const SelectionPage(),
    );
  }
}

class SelectionPage extends StatelessWidget {
  const SelectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      children: const [
        SelectionItemWidget(
          title: 'flutter_map_cache',
          desc:
              'A slim yet powerful caching plugin for flutter_map tile layers.',
        ),
        SelectionItemWidget(
          title: 'flutter_map_pmtiles',
          desc: 'PMTiles for flutter_map',
        ),
        SelectionItemWidget(
          title: 'vector_map_tiles_pmtiles',
          desc: 'PMTiles for vector_map_files / flutter_map',
        ),
      ],
    );
  }
}

class SelectionItemWidget extends StatelessWidget {
  final String title;
  final String desc;

  const SelectionItemWidget({
    super.key,
    required this.title,
    required this.desc,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: Text(desc),
      ),
    );
  }
}
