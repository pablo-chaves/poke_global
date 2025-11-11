import 'package:poke_global/core/providers/shared_preferences_provider.dart';
import 'package:poke_global/features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../../core/providers/dio_provider.dart';
import '../../domain/repositories/pokemon_repository.dart';
import '../models/pokemon_model.dart';

part 'pokemon_repository_impl.g.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  final PokemonRemoteDataSource dataSource;

  PokemonRepositoryImpl({required this.dataSource});

  @override
  Future<List<PokemonModel>> getPokemonList({
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final json = await dataSource.getPokemonList(
        offset: offset,
        limit: limit,
      );

      final listResponse = PokemonListResponse.fromJson(json);
      return listResponse.results;
    } catch (e) {
      throw Exception('Error fetching pokemon list: $e');
    }
  }

  @override
  Future<List<PokemonModel>> searchPokemonByName(String name) async {
    try {
      final json = await dataSource.searchPokemonByName(name);
      final listResponse = PokemonListResponse.fromJson(json);
      return listResponse.results;
    } catch (e) {
      throw Exception('Error searching pokemon: $e');
    }
  }

  @override
  Future<PokemonDetailModel> getPokemonDetail(String name) async {
    try {
      final json = await dataSource.getPokemonDetail(name);
      return PokemonDetailModel.fromJson(json);
    } catch (e) {
      throw Exception('Error fetching pokemon detail: $e');
    }
  }
  
  @override
  Future<PokemonSpeciesModel> getPokemonSpecies(String name) async {
    try {
      final json = await dataSource.getPokemonSpecies(name);
      return PokemonSpeciesModel.fromJson(json);
    } catch (e) {
      throw Exception('Error fetching pokemon detail: $e');
    }
  }
}

@riverpod
Future<PokemonRemoteDataSource> pokemonRemoteDataSource(Ref ref) async {
  final dio = ref.watch(dioProvider);
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return PokemonRemoteDataSource(dio: dio, prefs: prefs);
}

/// Provider del Repository
@riverpod
Future<PokemonRepository> pokemonRepository(Ref ref) async{
  final dataSource = await ref.watch(pokemonRemoteDataSourceProvider.future);
  return PokemonRepositoryImpl(dataSource: dataSource);
}
