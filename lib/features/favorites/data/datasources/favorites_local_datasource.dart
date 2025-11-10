import 'package:shared_preferences/shared_preferences.dart';

class FavoritesLocalDataSource {
  static const String _favoritesKey = 'favorite_pokemon';
  final SharedPreferences prefs;

  FavoritesLocalDataSource(this.prefs);

  Future<Set<String>> getFavorites() async {
    try {
      final favorites = prefs.getStringList(_favoritesKey) ?? [];
      return favorites.toSet();
    } catch (e) {
      throw Exception('Error al obtener favoritos: $e');
    }
  }

  Future<void> addFavorite(String pokemonName) async {
    try {
      final favorites = await getFavorites();
      favorites.add(pokemonName.toLowerCase());
      await prefs.setStringList(_favoritesKey, favorites.toList());
    } catch (e) {
      throw Exception('Error al agregar favorito: $e');
    }
  }

  Future<void> removeFavorite(String pokemonName) async {
    try {
      final favorites = await getFavorites();
      favorites.remove(pokemonName.toLowerCase());
      await prefs.setStringList(_favoritesKey, favorites.toList());
    } catch (e) {
      throw Exception('Error al remover favorito: $e');
    }
  }

  Future<bool> isFavorite(String pokemonName) async {
    try {
      final favorites = await getFavorites();
      return favorites.contains(pokemonName.toLowerCase());
    } catch (e) {
      return false;
    }
  }

  Future<void> clearFavorites() async {
    try {
      await prefs.remove(_favoritesKey);
    } catch (e) {
      throw Exception('Error al limpiar favoritos: $e');
    }
  }
}
