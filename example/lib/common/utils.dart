import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

/// This function copies an asset file from the asset bundle to the temporary
/// app directory.
///
/// **It is not recommended to use this in production and for larger files.**
/// Instead download your files from a web server or s3 storage.
Future<File> copyAssetToFile(String assetFile) async {
  final tempDir = await getTemporaryDirectory();
  final filename = assetFile.split('/').last;
  final file = File('${tempDir.path}/$filename');

  final data = await rootBundle.load(assetFile);
  await file.writeAsBytes(
    data.buffer.asUint8List(data.offsetInBytes, data.lengthInBytes),
    flush: true,
  );
  return file;
}
