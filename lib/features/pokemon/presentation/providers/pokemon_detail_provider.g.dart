// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// Provider para obtener el detalle de un pokémon específico

@ProviderFor(pokemonDetail)
const pokemonDetailProvider = PokemonDetailFamily._();

/// Provider para obtener el detalle de un pokémon específico

final class PokemonDetailProvider
    extends
        $FunctionalProvider<
          AsyncValue<PokemonDetailModel>,
          PokemonDetailModel,
          FutureOr<PokemonDetailModel>
        >
    with
        $FutureModifier<PokemonDetailModel>,
        $FutureProvider<PokemonDetailModel> {
  /// Provider para obtener el detalle de un pokémon específico
  const PokemonDetailProvider._({
    required PokemonDetailFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'pokemonDetailProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailHash();

  @override
  String toString() {
    return r'pokemonDetailProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PokemonDetailModel> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<PokemonDetailModel> create(Ref ref) {
    final argument = this.argument as String;
    return pokemonDetail(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonDetailHash() => r'3a6a150974a821fefc63cf21b621fa62da3ccbfa';

/// Provider para obtener el detalle de un pokémon específico

final class PokemonDetailFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PokemonDetailModel>, String> {
  const PokemonDetailFamily._()
    : super(
        retry: null,
        name: r'pokemonDetailProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  /// Provider para obtener el detalle de un pokémon específico

  PokemonDetailProvider call(String name) =>
      PokemonDetailProvider._(argument: name, from: this);

  @override
  String toString() => r'pokemonDetailProvider';
}
