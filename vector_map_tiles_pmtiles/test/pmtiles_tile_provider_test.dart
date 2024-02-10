import 'package:flutter_test/flutter_test.dart';
import 'package:vector_map_tiles_pmtiles/src/vector_tile_provider.dart';

import 'integration_test.mocks.dart';

Future<void> main() async {
  test('Create tile provider from archive', () async {
    final mockPmTiles = MockPmTilesArchive();
    final provider = PmTilesVectorTileProvider.fromArchive(mockPmTiles);
    expect(provider.archive, equals(mockPmTiles));
  });
}
