
import 'package:poke_global/features/pokemon/data/models/pokemon_model.dart';

abstract class PokemonRepository {
  Future<List<PokemonModel>> getPokemonList({
    int offset = 0,
    int limit = 20,
  });

  Future<List<PokemonModel>> searchPokemonByName(String name);

  Future<PokemonDetailModel> getPokemonDetail(String name);

  Future<PokemonSpeciesModel> getPokemonSpecies(String name);

  Future<List<PokemonModel>> getPokemonByType(String type);
}
