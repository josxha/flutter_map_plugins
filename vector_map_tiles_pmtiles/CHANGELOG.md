## [1.5.0]

- Add Protomaps themes version 4.1.

## [1.4.0]

- Use `vector_map_tiles` version ^8.0.0 (`flutter_map` v7).

## [1.3.0] 2024-05-21

- Update `ProtomapsThemes` to
  include [version 3.0.1 themes](https://github.com/protomaps/basemaps/blob/main/CHANGELOG.md)

## [1.2.0] 2024-02-19

- Update `vector_map_tiles` to version 7.3.0 and bump the dependency constraints
  to `^7.3.0` (thanks to @greensopinion).
- Deprecate `silenceTileNotFound` since it's not used anymore.

## [1.1.0] 2024-02-10

- Add `ProtomapsThemes` with all Protomaps basemap themes.
- Add the parameter `bool silenceTileNotFound` to silence "tile not found"
  exceptions (`TileNotFoundException`).
- Update example and docs

## [1.0.1] 2024-01-30

- Improve documentation
- Fix package score

## [1.0.0] 2024-01-30

- Initial release
- Add `PmTilesVectorTileProvider`