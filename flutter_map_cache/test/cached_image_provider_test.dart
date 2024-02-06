import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:test/test.dart';

// ignore_for_file: deprecated_member_use_from_same_package

Future<void> main() async {
  test('create new instance', () {
    final dio = Dio();
    const url = 'https://tile.openstreetmap.org/0/0/0.png';
    const headers = <String, String>{};
    final cancelLoadingFuture = Future<void>.delayed(const Duration(days: 1));

    final provider = CachedImageProvider(
      dio: dio,
      url: url,
      headers: headers,
      cancelLoading: cancelLoadingFuture,
    );

    expect(provider.dio, equals(dio));
    expect(provider.url, equals(url));
    expect(provider.headers, equals(headers));
    expect(provider.cancelLoading, equals(cancelLoadingFuture));
  });
}
