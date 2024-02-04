import 'dart:typed_data';

import 'package:http/http.dart';

abstract class VectorTileProvider {
  const VectorTileProvider();

  Future<Uint8List> getTile({required int z, required int x, required int y});

  int? get minZoom;

  int? get maxZoom;
}

class NetworkVectorTileProvider extends VectorTileProvider {
  final String urlTemplate;
  @override
  final int? maxZoom;
  @override
  final int? minZoom;
  late final Client client;

  NetworkVectorTileProvider({
    required this.urlTemplate,
    this.minZoom,
    this.maxZoom,
  }) {
    client = Client();
  }

  @override
  Future<Uint8List> getTile({
    required int z,
    required int x,
    required int y,
  }) async {
    final url = urlTemplate
        .replaceFirst('{z}', z.toString())
        .replaceFirst('{x}', x.toString())
        .replaceFirst('{y}', y.toString());
    final response = await client.get(Uri.parse(url));
    return response.bodyBytes;
  }
}
