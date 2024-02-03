import 'package:flutter_map_vector/flutter_map_vector.dart';
import 'package:test/test.dart';

void main() {
  test('parse theme', () {
    final _ = VectorTheme.fromJson(VectorTheme.osmBright);
  });
}
