import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_cache/src/cached_image_provider.dart';

/// TileProvider with additional caching functionality
class CachedTileProvider extends TileProvider {
  /// dio http client
  final Dio dio;

  /// Default constructor of [CachedTileProvider]
  CachedTileProvider({bool verbose = false}) : dio = Dio() {
    dio.interceptors.addAll([
      DioCacheInterceptor(
        options: CacheOptions(
          store: MemCacheStore(),
        ),
      ),
      if (verbose)
        LogInterceptor(
          logPrint: (object) => debugPrint(object.toString()),
          responseHeader: false,
          requestHeader: false,
          request: false,
        ),
    ]);
  }

  @override
  ImageProvider<Object> getImage(
    TileCoordinates coordinates,
    TileLayer options,
  ) =>
      CachedImageProvider(
        dio: dio,
        url: getTileUrl(coordinates, options),
        fallbackUrl: getTileFallbackUrl(coordinates, options),
        coordinates: coordinates,
      );
}
