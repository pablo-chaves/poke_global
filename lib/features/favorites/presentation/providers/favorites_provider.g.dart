// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Favorites)
const favoritesProvider = FavoritesProvider._();

final class FavoritesProvider
    extends $AsyncNotifierProvider<Favorites, List<FavoritePokemonModel>> {
  const FavoritesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'favoritesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$favoritesHash();

  @$internal
  @override
  Favorites create() => Favorites();
}

String _$favoritesHash() => r'564121eefa12a2407871b1d4b64a9fd5e842a139';

abstract class _$Favorites extends $AsyncNotifier<List<FavoritePokemonModel>> {
  FutureOr<List<FavoritePokemonModel>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<FavoritePokemonModel>>,
              List<FavoritePokemonModel>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<FavoritePokemonModel>>,
                List<FavoritePokemonModel>
              >,
              AsyncValue<List<FavoritePokemonModel>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
