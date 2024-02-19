import 'package:mbtiles/mbtiles.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

@GenerateNiceMocks([MockSpec<MbTiles>()])
import 'common.mocks.dart';

export 'common.mocks.dart';

MockMbTiles createMockMbTiles() {
  final mbtiles = MockMbTiles();
  when(mbtiles.getMetadata()).thenAnswer(
    (_) => const MbTilesMetadata(name: 'MockMbTiles', format: 'pbf'),
  );
  return mbtiles;
}
