import 'package:freezed_annotation/freezed_annotation.dart';

class DurationConverter
    implements JsonConverter<Duration, Map<String, dynamic>> {
  const DurationConverter();

  @override
  Duration? fromJson(dynamic jsonValue) {
    if (jsonValue == null) return null;

  }

  @override
  Map<String, dynamic> toJson(Duration data) => data.toJson();
}
