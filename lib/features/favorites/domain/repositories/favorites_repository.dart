import '../../data/models/favorite_pokemon_model.dart';

abstract class FavoritesRepository {
  Future<List<FavoritePokemonModel>> getFavorites();

  Future<void> addFavorite(String pokemonId, String pokemonName);

  Future<void> removeFavorite(String pokemonName);

  Future<bool> isFavorite(String pokemonName);

  Future<void> clearFavorites();
}
