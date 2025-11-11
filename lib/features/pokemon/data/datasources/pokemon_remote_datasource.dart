import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PokemonRemoteDataSource {
  final Dio dio;
  final SharedPreferences prefs;

  PokemonRemoteDataSource({required this.dio, required this.prefs});

  Future<Map<String, dynamic>> getPokemonList({
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final localData = await _getLocalPokemonList(
        offset: offset,
        limit: limit,
      );
      if (localData != null) return localData;

      final response = await dio.get(
        'pokemon',
        queryParameters: {'offset': offset, 'limit': limit},
      );

      _saveLocalPokemonList(response.data);

      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Error inesperado: $e');
    }
  }

  Future<Map<String, dynamic>> searchPokemonByName(String name) async {
    try {
      final response = await getPokemonList(offset: 0, limit: 1328);
      final results = (response['results'] as List);
      final query = name.toLowerCase();
      final filtered = results.where((pokemon) {
        final pname = (pokemon as Map<String, dynamic>)['name'] as String? ?? '';
        return pname.toLowerCase().contains(query);
      }).toList();
      return {'count': filtered.length, 'results': filtered};
    } catch (e) {
      throw Exception('Error inesperado: $e');
    }
  }

  Future<Map<String, dynamic>> getPokemonDetail(String name) async {
    try {
      final localData = await _getLocalPokemonDetail(name);
      if (localData != null) return localData;

      final response = await dio.get('pokemon/$name');

      _saveLocalPokemonDetail(name, response.data);
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Error inesperado: $e');
    }
  }

  Future<Map<String, dynamic>> getPokemonSpecies(String name) async {
    try {
      final localData = await _getLocalPokemonDescription(name);
      if (localData != null) return localData;

      final response = await dio.get('pokemon-species/$name');

      final data = {
        "flavor_text_entries": response.data['flavor_text_entries']
      };

      _saveLocalPokemonDescription(name, data);
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Error inesperado: $e');
    }
  }

  Future<Map<String, dynamic>> getPokemonByType(String type) async {
    try {
      final localData = await _getLocalPokemonByType(type);
      if (localData != null) return localData;

      final response = await dio.get('type/$type');

      _saveLocalPokemonByType(type, response.data);
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Error inesperado: $e');
    }
  }

  Future<Map<String, dynamic>?> _getLocalPokemonList({
    required int offset,
    required int limit,
  }) async {
    final jsonString = prefs.getString('pokemon_list_${offset}_$limit');
    if (jsonString != null) {
      return json.decode(jsonString);
    }
    return null;
  }

  Future<void> _saveLocalPokemonList(Map<String, dynamic> data) async {
    final offset = data['offset'] ?? 0;
    final limit = data['results']?.length ?? 20;
    final jsonString = json.encode(data);
    await prefs.setString('pokemon_list_${offset}_$limit', jsonString);
  }

  Future<Map<String, dynamic>?> _getLocalPokemonDetail(String name) async {
    final jsonString = prefs.getString('pokemon_detail_$name');
    if (jsonString != null) {
      return json.decode(jsonString);
    }
    return null;
  }

  Future<void> _saveLocalPokemonDetail(
    String name,
    Map<String, dynamic> data,
  ) async {
    final jsonString = json.encode(data);
    await prefs.setString('pokemon_detail_$name', jsonString);
  }

  Future<Map<String, dynamic>?> _getLocalPokemonDescription(String name) async {
    final jsonString = prefs.getString('pokemon_description_$name');
    if (jsonString != null) {
      return json.decode(jsonString);
    }
    return null;
  }

  Future<void> _saveLocalPokemonDescription(
    String name,
    Map<String, dynamic> data,
  ) async {
    final jsonString = json.encode(data);
    await prefs.setString('pokemon_description_$name', jsonString);
  }

  Future<Map<String, dynamic>?> _getLocalPokemonByType(String type) async {
    final jsonString = prefs.getString('pokemon_type_$type');
    if (jsonString != null) {
      return json.decode(jsonString);
    }
    return null;
  }

  Future<void> _saveLocalPokemonByType(
    String type,
    Map<String, dynamic> data,
  ) async {
    final jsonString = json.encode(data);
    await prefs.setString('pokemon_type_$type', jsonString);
  }
}
