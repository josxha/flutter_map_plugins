import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter_test/flutter_test.dart';

import 'utils/test_app.dart';

Future<void> main() async {
  testWidgets('FlutterMap with CachedTileProvider', (tester) async {
    final dio = Dio(); // createDioReturningEmptyTiles();
    final cacheStore = MemCacheStore();
    await tester.pumpWidget(TestApp(dio: dio, cacheStore: cacheStore));
    await tester.pumpAndSettle();
  });
}
