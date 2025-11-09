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
  Future<PokemonDetailModel> getPokemonDetail(String name) async {
    try {
      final json = await dataSource.getPokemonDetail(name);
      return PokemonDetailModel.fromJson(json);
    } catch (e) {
      throw Exception('Error fetching pokemon detail: $e');
    }
  }
}

@riverpod
PokemonRemoteDataSource pokemonRemoteDataSource(
  Ref ref,
) {
  final dio = ref.watch(dioProvider);
  return PokemonRemoteDataSource(dio: dio);
}

/// Provider del Repository
@riverpod
PokemonRepository pokemonRepository(Ref ref) {
  final dataSource = ref.watch(pokemonRemoteDataSourceProvider);
  return PokemonRepositoryImpl(dataSource: dataSource);
}