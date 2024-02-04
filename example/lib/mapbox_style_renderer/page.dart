import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

const tileAsset = 'assets/pbf/streets-tile.pbf';

class MapboxStyleRendererPage extends StatelessWidget {
  final Future<ByteData> _futureTileData = rootBundle.load(tileAsset);

  MapboxStyleRendererPage({super.key});

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
            final bytes = byteData.buffer.asUint8List(
              byteData.offsetInBytes,
              byteData.lengthInBytes,
            );
            return Center(
              child: SizedBox.square(
                dimension: 256,
                child: Text('${bytes.lengthInBytes} bytes'),
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
