import 'package:flutter_test/flutter_test.dart';
import 'package:vector_map_tiles_pmtiles/vector_map_tiles_pmtiles.dart';

Future<void> main() async {
  test('Build black theme', () async {
    final theme = ProtomapsThemes.black();
    expect(theme.tileSources, equals(<String>{'protomaps'}));
  });
  test('Build dark theme', () async {
    final theme = ProtomapsThemes.dark();
    expect(theme.tileSources, equals(<String>{'protomaps'}));
  });
  test('Build grayscale theme', () async {
    final theme = ProtomapsThemes.grayscale();
    expect(theme.tileSources, equals(<String>{'protomaps'}));
  });
  test('Build light theme', () async {
    final theme = ProtomapsThemes.light();
    expect(theme.tileSources, equals(<String>{'protomaps'}));
  });
  test('Build white theme', () async {
    final theme = ProtomapsThemes.white();
    expect(theme.tileSources, equals(<String>{'protomaps'}));
  });
}
