import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/pokemon_model.dart';
import '../../data/repositories/pokemon_repository_impl.dart';

part 'pokemon_list_provider.g.dart';

@riverpod
class PokemonList extends _$PokemonList {
  int _offset = 0;
  final int _limit = 20;
  List<PokemonModel> _allPokemon = [];
  bool _hasMore = true;

  @override
  Future<List<PokemonModel>> build() async {
    return _fetchPokemon();
  }

  Future<List<PokemonModel>> _fetchPokemon() async {
    if (!_hasMore) return _allPokemon;

    final repository = ref.read(pokemonRepositoryProvider);
    
    try {
      final newPokemon = await repository.getPokemonList(
        offset: _offset,
        limit: _limit,
      );

      if (newPokemon.isEmpty || newPokemon.length < _limit) {
        _hasMore = false;
      }

      _allPokemon.addAll(newPokemon);
      return _allPokemon;
    } catch (e) {
      throw Exception('Error loading pokemon: $e');
    }
  }

  Future<void> loadMore() async {
    if (!_hasMore) return;

    _offset += _limit;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchPokemon());
  }

  Future<void> refresh() async {
    _offset = 0;
    _allPokemon.clear();
    _hasMore = true;
    ref.invalidateSelf();
  }

  bool get hasMore => _hasMore;
}
