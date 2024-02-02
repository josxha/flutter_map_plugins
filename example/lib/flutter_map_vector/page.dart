import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const tileAsset = 'assets/pbf/streets-tile.pbf';

class FlutterMapVectorPage extends StatelessWidget {
  final Future<ByteData> _futureTileData = rootBundle.load(tileAsset);

  FlutterMapVectorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('vector_map_vector'),
      ),
      body: FutureBuilder<ByteData>(
        future: _futureTileData,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final byteData = snapshot.data!;
            return Center(
              child: SizedBox.square(
                dimension: 256,
                child: Text(byteData.lengthInBytes.toString()),
              ),
            );
          }
          if (snapshot.hasError) {
            debugPrint(snapshot.error.toString());
            debugPrintStack(stackTrace: snapshot.stackTrace);
            return Center(child: Text(snapshot.error.toString()));
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
