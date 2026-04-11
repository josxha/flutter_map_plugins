import 'package:flutter/material.dart';

class FlutterMapMbTilesPage extends StatelessWidget {
  const FlutterMapMbTilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('flutter_map_mbtiles'),
      ),
      body: const Center(
        child: Text('MBTiles is not supported on web.'),
      ),
    );
  }
}
