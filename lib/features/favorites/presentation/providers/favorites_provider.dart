import 'package:poke_global/features/favorites/data/models/favorite_pokemon_model.dart';
import 'package:poke_global/features/favorites/data/repositories/favorites_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_provider.g.dart';

@riverpod
class Favorites extends _$Favorites {
  @override
  Future<List<FavoritePokemonModel>> build() async {
    final repository = await ref.watch(favoritesRepositoryProvider.future);
    return await repository.getFavorites();
  }

  Future<void> toggleFavorite(String pokemonId, String pokemonName) async {
    final repository = await ref.read(favoritesRepositoryProvider.future);
    final currentFavorites = state.value ?? [];
    final String normalizedName = pokemonName.toLowerCase();

    if (currentFavorites.any((f) => f.name == normalizedName)) {
      // Remover
      state = AsyncValue.data(
        currentFavorites.where((f) => f.name != normalizedName).toList(),
      );
      await repository.removeFavorite(normalizedName);
    } else {
      // Agregar
      final newFavorite = FavoritePokemonModel(id: pokemonId, name: normalizedName);
      state = AsyncValue.data([...currentFavorites, newFavorite]);
      await repository.addFavorite(pokemonId, normalizedName);
    }
  }

  bool isFavorite(String pokemonName) {
    final normalizedName = pokemonName.toLowerCase();
    return state.value?.any((f) => f.name == normalizedName) ?? false;
  }

  int get count => state.value?.length ?? 0;
  List<FavoritePokemonModel> get favoritesList => state.value ?? [];

  Future<void> clearAll() async {
    final repository = await ref.read(favoritesRepositoryProvider.future);
    
    state = const AsyncValue.data([]);
    await repository.clearFavorites();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
