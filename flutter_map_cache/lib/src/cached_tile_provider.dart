import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/src/cached_image_provider.dart';

/// TileProvider with additional caching functionality
class CachedTileProvider extends TileProvider {
  /// dio http client
  final Dio dio;

  /// Create a new [CachedTileProvider]
  CachedTileProvider({
    required CacheStore store,
    Dio? dio,
    @Deprecated(
      '''
      This parameter will be removed in version 2.0.0 of flutter_map_cache.
      
      Please use the `dio` parameter instead and provide your own Dio instance.
      
        CachedTileProvider(
          dio: Dio(
            BaseOptions(...),
          ),
        ),
  ''',
    )
    BaseOptions? dioOptions,
    List<Interceptor>? interceptors,
    Duration? maxStale,
    CacheKeyBuilder? keyBuilder,
    List<int>? hitCacheOnErrorExcept = defaultHitCacheOnErrorExcept,
  }) : dio = dio ?? Dio(dioOptions ?? BaseOptions()) {
    this.dio.interceptors.addAll([
      ...?interceptors,
      DioCacheInterceptor(
        options: CacheOptions(
          store: store,
          allowPostMethod: true,
          policy: CachePolicy.forceCache,
          maxStale: maxStale,
          keyBuilder: keyBuilder ?? CacheOptions.defaultCacheKeyBuilder,
          hitCacheOnErrorExcept: hitCacheOnErrorExcept,
        ),
      ),
    ]);
  }

  /// list of http status codes that will not hit the cache, e.g. if the user
  /// needs authentication or the server is currently not able to handle the
  /// request
  static const List<int> defaultHitCacheOnErrorExcept = [
    HttpStatus.unauthorized,
    HttpStatus.forbidden,
    HttpStatus.badGateway,
  ];

  @override
  bool get supportsCancelLoading => true;

  @override
  ImageProvider<Object> getImageWithCancelLoadingSupport(
    TileCoordinates coordinates,
    TileLayer options,
    Future<void> cancelLoading,
  ) =>
      CachedImageProvider(
        dio: dio,
        url: getTileUrl(coordinates, options),
        fallbackUrl: getTileFallbackUrl(coordinates, options),
        headers: headers,
        cancelLoading: cancelLoading,
      );
}
