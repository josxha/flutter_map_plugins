import 'dart:async';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_map/flutter_map.dart';

/// Image provider with additional caching functionality
class CachedImageProvider extends ImageProvider<CachedImageProvider> {
  /// The dio instance
  final Dio dio;

  /// The tile url
  final String url;

  /// The tile fallback url
  final String? fallbackUrl;

  /// The tile layer headers (i.e. the user agent)
  final Map<String, String> headers;

  /// The cancellation token that gets provided to dio
  final cancelToken = CancelToken();

  /// Call this callback to cancel the request
  final Future<void> cancelLoading;

  /// Default constructor for the [CachedImageProvider]
  CachedImageProvider({
    required this.dio,
    required this.url,
    this.fallbackUrl,
    required this.headers,
    required this.cancelLoading,
  }) {
    cancelLoading.then((_) => cancelToken.cancel());
  }

  @override
  Future<CachedImageProvider> obtainKey(
    ImageConfiguration configuration,
  ) {
    return Future.value(this);
  }

  @override
  ImageStreamCompleter loadImage(
    CachedImageProvider key,
    ImageDecoderCallback decode,
  ) {
    final chunkEvents = StreamController<ImageChunkEvent>();

    return MultiFrameImageStreamCompleter(
      // ignore: discarded_futures, not actually but the lint thinks so
      codec: loadAsync(key, chunkEvents, decode),
      chunkEvents: chunkEvents.stream,
      scale: 1,
      debugLabel: url,
      informationCollector: () => [
        DiagnosticsProperty('URL', url),
        DiagnosticsProperty('Fallback URL', fallbackUrl),
        DiagnosticsProperty('Current provider', key),
      ],
    );
  }

  /// This method does the actual fetching of the image
  Future<Codec> loadAsync(
    CachedImageProvider key,
    StreamController<ImageChunkEvent> chunkEvents,
    ImageDecoderCallback decode, {
    bool useFallback = false,
  }) async {
    try {
      final response = await dio.get(
        useFallback && fallbackUrl != null ? fallbackUrl! : url,
        cancelToken: cancelToken,
        options: Options(
          responseType: ResponseType.bytes,
          headers: headers,
        ),
        onReceiveProgress: (count, total) {
          if (count < 1) return;
          chunkEvents.add(
            ImageChunkEvent(
              cumulativeBytesLoaded: count,
              // Dio returns -1 when the total amount of bytes are unknown while
              // ImageChunkEvent expects null.
              expectedTotalBytes: total < 0 ? null : total,
            ),
          );
        },
      );
      final bytes = Uint8List.fromList(response.data);
      final codec = decode(await ImmutableBuffer.fromUint8List(bytes));
      cancelLoading.ignore();
      return codec;
    } catch (error) {
      // check if request is cancelled
      if (error is DioException) {
        if (error.type == DioExceptionType.cancel) {
          // request has been cancelled by flutter_map
          // return an empty image to void this exception
          return decode(
            await ImmutableBuffer.fromUint8List(TileProvider.transparentImage),
          );
        }
      }
      // check if already used fallback
      if (useFallback) rethrow;
      // check if no fallback url set
      if (fallbackUrl == null) rethrow;
      // use fallback url
      return loadAsync(key, chunkEvents, decode, useFallback: true);
    }
  }
}
