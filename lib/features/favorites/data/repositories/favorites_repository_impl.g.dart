// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(favoritesLocalDataSource)
const favoritesLocalDataSourceProvider = FavoritesLocalDataSourceProvider._();

final class FavoritesLocalDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<FavoritesLocalDataSource>,
          FavoritesLocalDataSource,
          FutureOr<FavoritesLocalDataSource>
        >
    with
        $FutureModifier<FavoritesLocalDataSource>,
        $FutureProvider<FavoritesLocalDataSource> {
  const FavoritesLocalDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesLocalDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesLocalDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<FavoritesLocalDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FavoritesLocalDataSource> create(Ref ref) {
    return favoritesLocalDataSource(ref);
  }
}

String _$favoritesLocalDataSourceHash() =>
    r'eca9c63d3003227dc33a000786dd2693685d7c87';

@ProviderFor(favoritesRepository)
const favoritesRepositoryProvider = FavoritesRepositoryProvider._();

final class FavoritesRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<FavoritesRepository>,
          FavoritesRepository,
          FutureOr<FavoritesRepository>
        >
    with
        $FutureModifier<FavoritesRepository>,
        $FutureProvider<FavoritesRepository> {
  const FavoritesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<FavoritesRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<FavoritesRepository> create(Ref ref) {
    return favoritesRepository(ref);
  }
}

String _$favoritesRepositoryHash() =>
    r'70cea5ae2663d322d5f068c41419e41fcfb3fa14';
