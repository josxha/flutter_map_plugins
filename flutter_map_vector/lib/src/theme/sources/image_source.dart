import 'package:flutter_map_vector/src/theme/sources/source.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_source.freezed.dart';
part 'image_source.g.dart';

/// An image source. The "url" value contains the image location.
///
/// https://docs.mapbox.com/style-spec/reference/sources/#image
@Freezed()
class ThemeImageSource with _$ThemeImageSource implements ThemeSource {
  @Implements<ThemeSource>()
  const factory ThemeImageSource({
    required ThemeSourceType type,

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
  }) = _ThemeImageSource;

  factory ThemeImageSource.fromJson(Map<String, Object?> json) =>
      _$ThemeImageSourceFromJson(json);
}
