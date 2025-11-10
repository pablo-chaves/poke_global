import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/repositories/favorites_repository_impl.dart';

part 'favorites_provider.g.dart';

@riverpod
class Favorites extends _$Favorites {
  @override
  Future<Set<String>> build() async {
    final repository = await ref.watch(favoritesRepositoryProvider.future);
    return await repository.getFavorites();
  }

  Future<void> toggleFavorite(String pokemonName) async {
    final repository = await ref.read(favoritesRepositoryProvider.future);
    final currentFavorites = state.value ?? {};
    final normalizedName = pokemonName.toLowerCase();

    if (currentFavorites.contains(normalizedName)) {
      // Remover
      state = AsyncValue.data(
        currentFavorites.where((name) => name != normalizedName).toSet(),
      );
      await repository.removeFavorite(normalizedName);
    } else {
      // Agregar
      state = AsyncValue.data({...currentFavorites, normalizedName});
      await repository.addFavorite(normalizedName);
    }
  }

  bool isFavorite(String pokemonName) {
    return state.value?.contains(pokemonName.toLowerCase()) ?? false;
  }

  int get count => state.value?.length ?? 0;
  Set<String> get favoritesList => state.value ?? {};

  Future<void> clearAll() async {
    final repository = await ref.read(favoritesRepositoryProvider.future);
    
    state = const AsyncValue.data({});
    await repository.clearFavorites();
  }

  Future<void> refresh() async {
    ref.invalidateSelf();
  }
}
