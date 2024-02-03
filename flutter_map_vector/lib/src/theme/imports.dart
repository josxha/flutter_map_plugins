import 'package:freezed_annotation/freezed_annotation.dart';

part 'imports.freezed.dart';
part 'imports.g.dart';

/// Imports can be used to add the contents of other styles to the current
/// style. Instead of copying the individual layers, only the other style URL
/// is referenced, so that the imported style is always the most recent
/// version. Imported styles are rendered together with the layers in the
/// current style, but unlike them, they are not available through runtime
/// APIs. Instead, you can specify configuration values for the imported style:
/// {
///     "imports": [
///         {
///             "id": "basemap",
///             "url": "mapbox://styles/mapbox/standard",
///             "config": {
///                 "lightPreset": "dusk",
///                 "showPointOfInterestLabels": false
///             }
///         }
///     ]
/// }
/// A style can import multiple other styles, which in turn can import other
/// styles (up to 5 levels deep).
@Freezed()
class ThemeImports with _$ThemeImports {
  const factory ThemeImports({
    /// Unique import name.
    required String id,

    /// The URL of the style.
    required String url,

    /// Configuration values for the imported style's options.
    Map<String, Object?>? config,

    /// The inlined style that must correspond to the contents of the
    /// specified URL.
    dynamic data,
  }) = _ThemeImports;

  factory ThemeImports.fromJson(Map<String, Object?> json) =>
      _$ThemeImportsFromJson(json);
}
