// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_repository_impl.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pokemonRemoteDataSource)
const pokemonRemoteDataSourceProvider = PokemonRemoteDataSourceProvider._();

final class PokemonRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          AsyncValue<PokemonRemoteDataSource>,
          PokemonRemoteDataSource,
          FutureOr<PokemonRemoteDataSource>
        >
    with
        $FutureModifier<PokemonRemoteDataSource>,
        $FutureProvider<PokemonRemoteDataSource> {
  const PokemonRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRemoteDataSourceHash();

  @$internal
  @override
  $FutureProviderElement<PokemonRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PokemonRemoteDataSource> create(Ref ref) {
    return pokemonRemoteDataSource(ref);
  }
}

String _$pokemonRemoteDataSourceHash() =>
    r'8cb6f788d79b38dcb3468e27a5346f4506649c49';

/// Provider del Repository

@ProviderFor(pokemonRepository)
const pokemonRepositoryProvider = PokemonRepositoryProvider._();

/// Provider del Repository

final class PokemonRepositoryProvider
    extends
        $FunctionalProvider<
          AsyncValue<PokemonRepository>,
          PokemonRepository,
          FutureOr<PokemonRepository>
        >
    with
        $FutureModifier<PokemonRepository>,
        $FutureProvider<PokemonRepository> {
  /// Provider del Repository
  const PokemonRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonRepositoryHash();

  @$internal
  @override
  $FutureProviderElement<PokemonRepository> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PokemonRepository> create(Ref ref) {
    return pokemonRepository(ref);
  }
}

String _$pokemonRepositoryHash() => r'00171918c6599f6cf9eb048f19d83d44d5502fc6';
