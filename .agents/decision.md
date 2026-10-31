# Technical decisions

Append new decisions at the top. Format: date, decision, reason.

## 2026-10-31: Raising min Dart/Flutter or a dependency is not a breaking release

Bumping the minimum Dart or Flutter version, or a dependency constraint, is a
minor/patch release in these packages, not a major one. Pub resolves a version
that is allowed for the consumer's SDK, so older apps keep getting the older
package release.

## 2026-10-31: vector_map_tiles_* are outside the workspace

`vector_map_tiles` v9 beta needs `vector_tile_renderer ^6`, which needs
`protobuf ^3`. `pmtiles ^2` (used by `flutter_map_pmtiles`) needs `protobuf ^6`,
so they cannot share one workspace resolution. The packages resolve standalone
(no `resolution: workspace`). `vector_map_tiles_pmtiles` uses `pmtiles ^1.3` and
`vector_map_tiles ^9.0.0-beta.9` (later betas need `latlong2 ^0.10`, which
`pmtiles` 1.x forbids). `vector_map_tiles_mbtiles` uses the same version so both can be used in one app.
v10 (experimental flutter_gpu) is deliberately avoided.

## 2026-10-31: very_good_analysis 11 in all packages

All packages use `very_good_analysis ^11.0.0` (requires Dart 3.13). It is only a
dev dependency, so it does not constrain consumers of the packages. Its lints
require `await` on returned futures in async functions and the `new(...)`
constructor syntax (already needs Dart 3.13, as `flutter_map_maplibre` does).

## 2026-10-31: Example platform minimums follow maplibre 0.4

`maplibre` 0.4 needs iOS 15, macOS 14.3 and Swift Package Manager. The example
uses those deployment targets and the root and example `pubspec.yaml` require
Dart 3.13, because the workspace already requires it through
`flutter_map_maplibre`. Gradle is on the latest 8.14.x patch release.

## 2026-10-31: CocoaPods is no longer used in the example

No Podfile is tracked and the Xcode workspace does not reference Pods. Stale
`Pods-RunnerTests` references and the `update-ios-pods` workflow were removed.
