abstract class FavoritesRepository {
  Future<Set<String>> getFavorites();

  Future<void> addFavorite(String pokemonName);

  Future<void> removeFavorite(String pokemonName);

  Future<bool> isFavorite(String pokemonName);

  Future<void> clearFavorites();
}
