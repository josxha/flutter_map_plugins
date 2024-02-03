import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'video_source.freezed.dart';
part 'video_source.g.dart';

/// A video source. The "urls" value is an array. For each URL in the array, a
/// video element source will be created. To support the video across
/// browsers, supply URLs in multiple formats.
//
// The "coordinates" array contains [longitude, latitude] pairs for the video
// corners listed in clockwise order:
// top left, top right, bottom right, bottom left.
///
/// https://docs.mapbox.com/style-spec/reference/sources/#video
@Freezed()
class ThemeVideoSource with _$ThemeVideoSource {
  @Implements<ThemeSource>()
  const factory ThemeVideoSource({
    /// Corners of image specified in longitude, latitude pairs. Note: When
    /// using globe projection, the image will be centered at the North or
    /// South Pole in the respective hemisphere if the average latitude value
    /// exceeds 85 degrees or falls below -85 degrees.
    ///
    /// The "coordinates" array contains [longitude, latitude] pairs for the
    /// image corners listed in clockwise order:
    /// top left, top right, bottom right, bottom left.
    @Assert(
      'coordinates.length == 4',
      'The coordinates array needs to have exactly 4 items.',
    )
    required List<List<double>> coordinates,

    /// URL that points to an image. If the URL is not specified, the image is
    /// expected to be loaded directly during runtime.
    String? url,
  }) = _ThemeVideoSource;

  factory ThemeVideoSource.fromJson(Map<String, Object?> json) =>
      _$ThemeVideoSourceFromJson(json);
}
