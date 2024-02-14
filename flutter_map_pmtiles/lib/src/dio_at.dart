import 'dart:io';

import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;
import 'package:pmtiles/pmtiles.dart';

class DioAt implements ReadAt {
  final Dio dio;
  final String url;
  final Map<int, CancelToken> cancelTokens = {};
  final bool _dioCreatedInternally;

  DioAt({Dio? dio, required this.url})
      : dio = dio ?? Dio(),
        _dioCreatedInternally = dio == null;

  @override
  Future<http.ByteStream> readAt(int offset, int length) async {
    const tileId = -1; // TODO use the tileId to get the right CancelToken

    final Response<ResponseBody> response = await dio.get(url,
        cancelToken: cancelTokens[tileId],
        options: Options(
          responseType: ResponseType.stream,
          headers: {
            HttpHeaders.rangeHeader: 'bytes=$offset-${offset + length - 1}',
          },
        ));

    if (response.statusCode != HttpStatus.partialContent) {
      throw HttpException('Unexpected status code: ${response.statusCode}');
    }

    final responseLength =
        response.headers.value(HttpHeaders.contentLengthHeader);
    if (responseLength != null && int.parse(responseLength) != length) {
      throw HttpException(
          'Unexpected Content-Length: $responseLength expected $length');
    }

    return http.ByteStream(response.data!.stream);
  }

  @override
  Future<void> close() async {
    if (_dioCreatedInternally) dio.close();
  }
}
