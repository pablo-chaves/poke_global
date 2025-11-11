import 'dart:convert';
import 'package:poke_global/features/favorites/data/models/favorite_pokemon_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FavoritesLocalDataSource {
  static const String _favoritesKey = 'favorite_pokemon';
  final SharedPreferences prefs;

  FavoritesLocalDataSource(this.prefs);

  Future<List<FavoritePokemonModel>> getFavorites() async {
    try {
      final favoritesJson = prefs.getString(_favoritesKey);
      if (favoritesJson == null || favoritesJson.isEmpty) {
        return [];
      }
      final List<dynamic> decoded = json.decode(favoritesJson);
      return decoded.map((json) => FavoritePokemonModel.fromJson(json as Map<String, dynamic>)).toList();
    } catch (e) {
      throw Exception('Error al obtener favoritos: $e');
    }
  }

  Future<void> addFavorite(String pokemonId, String pokemonName) async {
    try {
      final favorites = await getFavorites();
      final newFavorite = FavoritePokemonModel(
        id: pokemonId,
        name: pokemonName.toLowerCase(),
      );
      
      // Evitar duplicados
      if (!favorites.any((f) => f.name == newFavorite.name)) {
        favorites.add(newFavorite);
        final favoritesJson = json.encode(
          favorites.map((f) => f.toJson()).toList(),
        );
        await prefs.setString(_favoritesKey, favoritesJson);
      }
    } catch (e) {
      throw Exception('Error al agregar favorito: $e');
    }
  }

  Future<void> removeFavorite(String pokemonName) async {
    try {
      final favorites = await getFavorites();
      favorites.removeWhere((f) => f.name == pokemonName.toLowerCase());
      final favoritesJson = json.encode(
        favorites.map((f) => f.toJson()).toList(),
      );
      await prefs.setString(_favoritesKey, favoritesJson);
    } catch (e) {
      throw Exception('Error al remover favorito: $e');
    }
  }

  Future<bool> isFavorite(String pokemonName) async {
    try {
      final favorites = await getFavorites();
      return favorites.any((f) => f.name == pokemonName.toLowerCase());
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
