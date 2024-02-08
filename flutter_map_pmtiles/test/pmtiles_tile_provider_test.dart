import 'package:flutter_map_pmtiles/flutter_map_pmtiles.dart';
import 'package:flutter_test/flutter_test.dart';

import 'integration_test.mocks.dart';

Future<void> main() async {
  test('Create tile provider from archive', () async {
    final mockPmTiles = MockPmTilesArchive();
    final provider = PmTilesTileProvider.fromArchive(mockPmTiles);
    expect(provider.archive, equals(mockPmTiles));
  });
}
