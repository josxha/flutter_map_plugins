import 'package:flutter/material.dart';

class VectorMapTilesMbTilesPage extends StatelessWidget {
  const VectorMapTilesMbTilesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_tiles_mbtiles'),
      ),
      body: const Center(
        child: Text('MBTiles is not supported on web.'),
      ),
    );
  }
}
