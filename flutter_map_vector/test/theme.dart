import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:test/test.dart';

void main() {
  test('parse theme', () {
    final theme = VectorTheme.fromJson(VectorTheme.osmBright);
    expect(theme.layers.length, isNot(0));
  });
}
