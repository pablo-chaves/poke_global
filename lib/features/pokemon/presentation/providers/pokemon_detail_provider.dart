import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/pokemon_model.dart';
import '../../data/repositories/pokemon_repository_impl.dart';

part 'pokemon_detail_provider.g.dart';

@riverpod
Future<PokemonDetailModel> pokemonDetail(
  Ref ref,
  String name,
) async {
  final repository = await ref.read(pokemonRepositoryProvider.future);
  return await repository.getPokemonDetail(name);
}
