import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/flutter_map_cache.dart';
import 'package:test/test.dart';

// ignore_for_file: deprecated_member_use_from_same_package

Future<void> main() async {
  test('create new instance', () {
    final store = MemCacheStore();

    final provider = CachedTileProvider(store: store);

    expect(provider, isA<TileProvider>());
  });
  test('check that interceptors contain a DioCacheInterceptor', () {
    final store = MemCacheStore();

    final provider = CachedTileProvider(store: store);

    expect(
      provider.dio.interceptors.any((entry) => entry is DioCacheInterceptor),
      isTrue,
    );
  });
  test('check that provided interceptors are added', () {
    final store = MemCacheStore();
    final someInterceptor = LogInterceptor(
      logPrint: (object) => debugPrint(object.toString()),
    );

    final provider = CachedTileProvider(
      store: store,
      interceptors: [someInterceptor],
    );

    expect(provider.dio.interceptors, contains(someInterceptor));
    final cacheInterceptor = provider.dio.interceptors
        .firstWhere((entry) => entry is DioCacheInterceptor);
    expect(provider.dio.interceptors, contains(cacheInterceptor));
  });
  test('provided Dio instance but without BaseOptions', () {
    final store = MemCacheStore();
    final dio = Dio();

    final provider = CachedTileProvider(store: store, dio: dio);

    expect(provider.dio, equals(provider.dio));
    expect(provider.dio.options, equals(provider.dio.options));
  });
  test('provided Dio instance and custom BaseOptions', () {
    final store = MemCacheStore();
    const someBaseUrl = 'https://unique-url.example.com';
    final dioOptions = BaseOptions(
      baseUrl: someBaseUrl,
      headers: {'X-API-TOKEN': 'test123'},
    );
    final dio = Dio(dioOptions);

    final provider = CachedTileProvider(store: store, dio: dio);

    expect(provider.dio.options, equals(provider.dio.options));
    expect(provider.dio.options.baseUrl, equals(someBaseUrl));
    expect(provider.dio.options.headers.length, equals(1));
    expect(provider.dio.options.headers['X-API-TOKEN'], equals('test123'));
  });
  test('use empty dioOptions parameter', () {
    final store = MemCacheStore();
    final dioOptions = BaseOptions();

    final provider = CachedTileProvider(store: store, dioOptions: dioOptions);

    expect(provider.dio.options, equals(dioOptions));
    expect(provider.dio.options.headers.isEmpty, isTrue);
  });
  test('use dioOptions parameter with values', () {
    final store = MemCacheStore();
    const someBaseUrl = 'https://unique-url.example.com';
    final dioOptions = BaseOptions(
      baseUrl: someBaseUrl,
      headers: {'X-API-TOKEN': 'test123'},
    );

    final provider = CachedTileProvider(store: store, dioOptions: dioOptions);

    expect(provider.dio.options, equals(provider.dio.options));
    expect(provider.dio.options.baseUrl, equals(someBaseUrl));
    expect(provider.dio.options.headers.length, equals(1));
    expect(provider.dio.options.headers['X-API-TOKEN'], equals('test123'));
  });
  test('assert that this tile provider supports tile cancellation', () {
    final store = MemCacheStore();

    final provider = CachedTileProvider(store: store);

    expect(provider.supportsCancelLoading, isTrue);
  });
}
