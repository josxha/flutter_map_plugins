import 'dart:async';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:pmtiles/pmtiles.dart';

class PmTilesImageProvider extends ImageProvider<PmTilesImageProvider> {
  final PmTilesArchive archive;
  final int tileId;

  PmTilesImageProvider({
    required this.tileId,
    required this.archive,
  });

  @override
  Future<PmTilesImageProvider> obtainKey(
    ImageConfiguration configuration,
  ) {
    return Future.value(this);
  }

  @override
  ImageStreamCompleter loadImage(
    PmTilesImageProvider key,
    ImageDecoderCallback decode,
  ) {
    final chunkEvents = StreamController<ImageChunkEvent>();

    return MultiFrameImageStreamCompleter(
      // ignore: discarded_futures, not actually but the lint thinks so
      codec: _loadAsync(key, chunkEvents, decode),
      chunkEvents: chunkEvents.stream,
      scale: 1,
      debugLabel: tileId.toString(),
      informationCollector: () => [
        DiagnosticsProperty('Tile ID', tileId),
        DiagnosticsProperty('Current provider', key),
      ],
    );
  }

  Future<Codec> _loadAsync(
    PmTilesImageProvider key,
    StreamController<ImageChunkEvent> chunkEvents,
    ImageDecoderCallback decode,
  ) async {
    final data = await archive.tile(tileId);
    final bytes = Uint8List.fromList(data.bytes());
    final codec = decode(await ImmutableBuffer.fromUint8List(bytes));
    return codec;
  }
}
