import 'dart:io' if (dart.library.html) 'dart:html';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/src/cached_image_provider.dart';

export 'package:dio_cache_interceptor/dio_cache_interceptor.dart'
    show CachePolicy;

/// TileProvider with additional caching functionality
class CachedTileProvider extends TileProvider {
  /// Create a new [CachedTileProvider].
  ///
  /// [cachePolicy] allows to set the policy used by the cache, see
  /// [CachePolicy] from dio_cache_interceptor for more information.
  CachedTileProvider({
    required CacheStore store,
    CachePolicy cachePolicy = CachePolicy.forceCache,
    Dio? dio,
    List<Interceptor>? interceptors,
    Duration? maxStale,
    CacheKeyBuilder? keyBuilder,
    List<int> hitCacheOnErrorCodes =
        CachedTileProvider.defaultHitCacheOnErrorCodes,
    bool hitCacheOnNetworkFailure = true,
  }) : dio = dio ?? Dio() {
    this.dio.interceptors.addAll([
      ...?interceptors,
      DioCacheInterceptor(
        options: CacheOptions(
          store: store,
          allowPostMethod: true,
          policy: cachePolicy,
          maxStale: maxStale,
          keyBuilder: keyBuilder ?? CacheOptions.defaultCacheKeyBuilder,
          hitCacheOnErrorCodes: hitCacheOnErrorCodes,
          hitCacheOnNetworkFailure: hitCacheOnNetworkFailure,
        ),
      ),
    ]);
  }

  /// dio http client
  final Dio dio;

  /// List of HTTP status codes that allow to return a previous cached
  /// response.
  ///
  /// If a request fails with a status code in this list,
  /// the cached response (if available) will be used instead of treating
  /// the error as a complete failure.
  static const List<int> defaultHitCacheOnErrorCodes = [HttpStatus.notFound];

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
