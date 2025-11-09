// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_list_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider para la lista de pokémons con paginación

@ProviderFor(PokemonList)
const pokemonListProvider = PokemonListProvider._();

/// Provider para la lista de pokémons con paginación
final class PokemonListProvider
    extends $AsyncNotifierProvider<PokemonList, List<PokemonModel>> {
  /// Provider para la lista de pokémons con paginación
  const PokemonListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pokemonListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pokemonListHash();

  @$internal
  @override
  PokemonList create() => PokemonList();
}

String _$pokemonListHash() => r'0f47cc7d1c7643ae23c064b0f04d764efcbfb0ee';

/// Provider para la lista de pokémons con paginación

abstract class _$PokemonList extends $AsyncNotifier<List<PokemonModel>> {
  FutureOr<List<PokemonModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<PokemonModel>>, List<PokemonModel>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PokemonModel>>, List<PokemonModel>>,
              AsyncValue<List<PokemonModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
