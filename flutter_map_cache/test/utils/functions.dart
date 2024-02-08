import 'package:dio/dio.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

Dio createDioReturningEmptyTiles() {
  final dio = Dio();

  final dioAdapter = DioAdapter(dio: dio);

  const url = 'https://tile.openstreetmap.org/0/0/0.png';

  dioAdapter.onGet(
    url,
    (server) => server.reply(
      200,
      TileProvider.transparentImage,
      delay: const Duration(seconds: 1),
    ),
  );

  return dio;
}
