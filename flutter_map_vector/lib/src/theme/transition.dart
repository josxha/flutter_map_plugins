import 'package:freezed_annotation/freezed_annotation.dart';

part 'transition.freezed.dart';
part 'transition.g.dart';

/// A transition property controls timing for the interpolation between a
/// transitionable style property's previous value and new value. A style's
/// root transition property provides global transition defaults for that style.
///
/// https://docs.mapbox.com/style-spec/reference/transition/
@Freezed()
class ThemeTransition with _$ThemeTransition {
  const factory ThemeTransition({
    /// Length of time before a transition begins.
    @Default(Duration.zero) Duration? delay,
    /// Time allotted for transitions to complete.
    @Default(Duration(milliseconds: 300)) Duration? duration,
  }) = _ThemeTransition;

  factory ThemeTransition.fromJson(Map<String, Object?> json) =>
      _$ThemeTransitionFromJson(json);
}
