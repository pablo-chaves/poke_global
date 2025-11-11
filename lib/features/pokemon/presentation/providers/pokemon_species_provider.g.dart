// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pokemonSpecies)
const pokemonSpeciesProvider = PokemonSpeciesFamily._();

final class PokemonSpeciesProvider
    extends
        $FunctionalProvider<
          AsyncValue<PokemonSpeciesModel>,
          PokemonSpeciesModel,
          FutureOr<PokemonSpeciesModel>
        >
    with
        $FutureModifier<PokemonSpeciesModel>,
        $FutureProvider<PokemonSpeciesModel> {
  const PokemonSpeciesProvider._({
    required PokemonSpeciesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'pokemonSpeciesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonSpeciesHash();

  @override
  String toString() {
    return r'pokemonSpeciesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PokemonSpeciesModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PokemonSpeciesModel> create(Ref ref) {
    final argument = this.argument as String;
    return pokemonSpecies(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonSpeciesProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonSpeciesHash() => r'7168d20b1779e9561e4798e754d47e617c581e1b';

final class PokemonSpeciesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PokemonSpeciesModel>, String> {
  const PokemonSpeciesFamily._()
    : super(
        retry: null,
        name: r'pokemonSpeciesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PokemonSpeciesProvider call(String name) =>
      PokemonSpeciesProvider._(argument: name, from: this);

  @override
  String toString() => r'pokemonSpeciesProvider';
}
