import 'dart:async';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

/// Image provider with additional caching functionality
class CachedImageProvider extends ImageProvider<CachedImageProvider> {
  /// The dio instance
  final Dio dio;

  /// The tile url
  final String url;

  /// The tile fallback url
  final String? fallbackUrl;

  /// Default constructor for the [CachedImageProvider]
  const CachedImageProvider({
    required this.dio,
    required this.url,
    this.fallbackUrl,
  });

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
      codec: _loadAsync(key, chunkEvents, decode),
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

  Future<Codec> _loadAsync(
    CachedImageProvider key,
    StreamController<ImageChunkEvent> chunkEvents,
    ImageDecoderCallback decode, {
    bool useFallback = false,
  }) async {
    final Uint8List bytes;
    try {
      final response = await dio.get(
        useFallback && fallbackUrl != null ? fallbackUrl! : url,
        options: Options(responseType: ResponseType.bytes),
      );
      bytes = response.data;
    } catch (_) {
      if (useFallback) rethrow;
      return _loadAsync(key, chunkEvents, decode, useFallback: true);
    }

    return decode(await ImmutableBuffer.fromUint8List(bytes));
  }
}
