## [1.5.0] 2024-02-19

- fix: assertion error when the total amount of bytes is unknown (thanks to
  @Thelm76).
- add: optional `cachePolicy` parameter (thanks to @Thelm76).
- Update README

## [1.4.4] 2024-02-10

- Add web as supported platform
- Update docs
- Add tests

## [1.4.3] 2024-02-06

- Fix: `CachedTileProvider.dio` had its `BaseOptions`
  overridden ([#12](https://github.com/josxha/flutter_map_plugins/issues/12),
  thanks to
  @Thelm76)
- Add tests

## [1.4.2] 2024-02-01

- Migrate GitHub repository to a multi-package repo.
- Update README and package links.

## [1.4.1] 2024-01-24

- Fix description of Isar in the README file.

## [1.4.0] 2024-01-24

- Add `dio` as a parameter to `CachedTileProvider`. You're now able to provide
  and reuse your own Dio instance (thanks to @PatrickWulfe).
- Deprecate the `dioOptions` parameter. Prefer creating your own Dio instance
  and provide it to the `dio` parameter.
- Update the README file (for example add isar to the list of supported storage
  backends).

## [1.3.1]  2023-10-20

- Remove exception from the console when tile requests get cancelled
  (see https://github.com/josxha/flutter_map_plugins/issues/3).

## [1.3.0]  2023-10-09

- Support for flutter_map
  version [^6.0.0](https://pub.dev/packages/flutter_map/changelog#600---20231009)
- Support
  to [cancel map tiles](https://github.com/fleaflet/flutter_map/pull/1622) if
  tiles are still loading but no
  longer needed (
  like [flutter_map_cancellable_tile_provider](https://pub.dev/packages/flutter_map_cancellable_tile_provider))
- Update documentation

## [1.2.0] 2023-06-28

#### CachedTileProvider

- Add the `List<Interceptor>? interceptors` as a Parameter and remove
  the `verbose` parameter. The interceptors will
  get applied before the cache interceptor.
- The `store` parameter is now required.
- Add the option to override the `hitCacheOnErrorExcept` parameter. By default,
  a cached request will not get used if
  the server returns with status code 401 or 403.
- Remove the `dio` parameter but set dio as a public field variable so that it
  can get modified after creation.
- Add `BaseOptions? dioOptions` as a parameter.

#### Fixes

- Use cache when device has no internet connection and a SocketException gets
  thrown.

## [1.1.1] 2023-06-22

- Update documentation and example project
- Use the user agent header provided by the `TileLayer`

## [1.1.0] 2023-06-09

- Add `maxStale` and `keyBuilder` as optional parameters
  to `CachedTileProvider`:

## [1.0.0] 2023-06-09

- Initial version.
