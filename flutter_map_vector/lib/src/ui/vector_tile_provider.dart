import 'dart:typed_data';

abstract class VectorTileProvider {
  const VectorTileProvider();

  dynamic getTile({required int z, required int x, required int y});

  int get minZoom;

  int get maxZoom;
}

class NetworkVectorTileProvider extends VectorTileProvider {
  final String urlTemplate;

  NetworkVectorTileProvider({required this.urlTemplate});

  @override
  Uint8List getTile({required int z, required int x, required int y}) {
    // TODO: implement getTile
    throw UnimplementedError();
  }

  @override
  // TODO: implement maxZoom
  int get maxZoom => throw UnimplementedError();

  @override
  // TODO: implement minZoom
  int get minZoom => throw UnimplementedError();
}
