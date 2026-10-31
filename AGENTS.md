# AGENTS.md

Monorepo of flutter_map plugins, managed as a Dart pub workspace with melos.

## Packages

- `flutter_map_cache`, `flutter_map_compass`, `flutter_map_maplibre`,
  `flutter_map_mbtiles`, `flutter_map_pmtiles`, `example`: members of the
  workspace (see root `pubspec.yaml`).
- `vector_map_tiles_mbtiles`, `vector_map_tiles_pmtiles`: NOT in the workspace
  (dependency conflict, see `.agents/decision.md`). Run `flutter pub get`,
  `flutter analyze` and `flutter test` inside each of them separately.

## Commands

- Workspace: `flutter pub get`, then `flutter analyze` / `flutter test` in each
  package (or `melos run test`).
- Keep `dart analyze --fatal-infos --fatal-warnings` and `dart format` clean (`very_good_analysis` 11).

## Conventions

- Every user-visible change gets a `CHANGELOG.md` entry and a version bump in
  that package's `pubspec.yaml`.
- Technical decisions are recorded in `.agents/decision.md`. Read it before
  changing versions or dependency constraints, and append new decisions there.

## Releasing

Push a tag `{package_name}-v{version}` (e.g. `flutter_map_cache-v2.1.1`). The
`publish.yml` workflow checks the pubspec version and changelog, runs analyze and
tests and publishes the package to pub.dev. Automated publishing must be enabled
for each package on pub.dev with the tag pattern `{package_name}-v{{version}}`.
