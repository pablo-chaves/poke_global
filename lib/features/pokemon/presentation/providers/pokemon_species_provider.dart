import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/pokemon_model.dart';
import '../../data/repositories/pokemon_repository_impl.dart';

part 'pokemon_species_provider.g.dart';

@riverpod
Future<PokemonSpeciesModel> pokemonSpecies(
  Ref ref,
  String name,
) async {
  ref.keepAlive();
  final repository = await ref.read(pokemonRepositoryProvider.future);
  return await repository.getPokemonSpecies(name);
}
