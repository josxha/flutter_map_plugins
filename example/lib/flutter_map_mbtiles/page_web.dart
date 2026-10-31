import 'package:flutter/material.dart';

/// The `mbtiles` package does not support web.
class FlutterMapMbTilesPage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('flutter_map_mbtiles')),
      body: const Center(child: Text('MBTiles are not supported on web.')),
    );
  }
}
