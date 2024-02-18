import 'package:vector_tile/vector_tile.dart';

extension VectorTileValueExt on VectorTileValue {
  Object? getValue() => switch (type) {
        ValueType.string => stringValue,
        ValueType.float => floatValue,
        ValueType.double => doubleValue,
        ValueType.int => intValue,
        ValueType.uint => uintValue,
        ValueType.sint => sintValue,
        ValueType.bool => boolValue,
      };
}
