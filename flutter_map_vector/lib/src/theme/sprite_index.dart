import 'package:freezed_annotation/freezed_annotation.dart';

part 'sprite_index.freezed.dart';
part 'sprite_index.g.dart';

/// A sprite is a single image that contains all the icon and pattern images
/// included in a style.
///
/// When a sprite is associated with a style, its images can be used to render
/// the following style properties:
/// - background-pattern
/// - fill-pattern
/// - line-pattern
/// - fill-extrusion-pattern
/// - icon-image
///
/// Mapbox APIs and SDKs will use this URL template to request the two sprite
/// files required to render icons and patterns on your map. You can read more
/// about loading sprite files below.
@Freezed()
class SpriteIndexItem with _$SpriteIndexItem {
  const factory SpriteIndexItem({
    /// width of the sprite item
    required int width,

    /// height of the sprite item
    required int height,

    /// x location within the sprite
    required int x,

    /// y location within the sprite
    required int y,

    /// The device pixel ratio (also called CSS Pixel Ratio) is what determines
    /// how a device's screen resolution is interpreted by the browser and
    /// also by CSS.
    /// https://datacadamia.com/web/css/pixel_ratio
    required int pixelRatio,

    /// An array of four numbers, with the first two specifying the left, top
    /// corner, and the last two specifying the right, bottom corner.
    ///
    /// If present, and if the image uses icon-text-fit, the symbol's text
    /// will be resized to fit inside the content box.
    @Assert(
      'content == null || (content.length == 4)',
      'content needs to have exactly 4 items.',
    )
    List<int>? content,

    /// An array of two-element arrays, consisting of two numbers that
    /// represent the from position and the to position of areas that
    /// can be stretched.
    @Assert(
      'stretchX == null || (stretchX.length == 2)',
      'stretchX needs to have exactly 2 items.',
    )
    List<List<int>>? stretchX,

    /// Same as stretchX, but for the vertical dimension.
    @Assert(
      'stretchY == null || (stretchY.length == 2)',
      'stretchY needs to have exactly 2 items.',
    )
    List<List<int>>? stretchY,
  }) = _SpriteIndexItem;

  factory SpriteIndexItem.fromJson(Map<String, Object?> json) =>
      _$SpriteIndexItemFromJson(json);
}
