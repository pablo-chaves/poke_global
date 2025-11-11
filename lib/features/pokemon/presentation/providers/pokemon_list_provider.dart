import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../data/models/pokemon_model.dart';
import '../../data/repositories/pokemon_repository_impl.dart';

part 'pokemon_list_provider.g.dart';

@riverpod
class PokemonList extends _$PokemonList {
  int _offset = 0;
  final int _limit = 1328;
  List<PokemonModel> _allPokemon = [];
  bool _hasMore = true;
  bool _isLoading = false;
  List<String> _selectedTypes = [];
  String _searchQuery = '';

  @override
  Future<List<PokemonModel>> build() async {
    return _fetchPokemon();
  }

  Future<List<PokemonModel>> searchPokemonByName(String name) async {
    _searchQuery = name;
    return _applyFilters();
  }

  Future<void> setTypeFilters(List<String> types) async {
    _selectedTypes = types;
    await _applyFilters();
  }

  Future<List<PokemonModel>> _applyFilters() async {
    final repository = await ref.read(pokemonRepositoryProvider.future);
    state = const AsyncValue.loading();
    
    List<PokemonModel> result;

    if (_selectedTypes.isNotEmpty) {
      final allTypePokemon = <String, PokemonModel>{};
      
      for (final type in _selectedTypes) {
        try {
          final typePokemon = await repository.getPokemonByType(type);
          for (final pokemon in typePokemon) {
            allTypePokemon[pokemon.name] = pokemon;
          }
        } catch (e) {
          continue;
        }
      }
      
      result = allTypePokemon.values.toList();
      
      if (_searchQuery.isNotEmpty) {
        final query = _searchQuery.toLowerCase();
        result = result.where((pokemon) {
          return pokemon.name.toLowerCase().contains(query);
        }).toList();
      }
    } else {
      if (_searchQuery.isEmpty) {
        result = await repository.getPokemonList(offset: 0, limit: 1328);
      } else {
        result = await repository.searchPokemonByName(_searchQuery);
      }
    }

    state = AsyncValue.data(result);
    _allPokemon = result;
    _hasMore = false;
    return _allPokemon;
  }

  Future<List<PokemonModel>> _fetchPokemon() async {
    if (!_hasMore) return _allPokemon;

    final repository = await ref.read(pokemonRepositoryProvider.future);

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
    if (!_hasMore || _isLoading) return;

    _isLoading = true;
    _offset += _limit;
    state = const AsyncValue.loading();
    state = await AsyncValue.guard(() => _fetchPokemon());
    _isLoading = false;
  }

  Future<void> refresh() async {
    _offset = 0;
    _allPokemon.clear();
    _hasMore = true;
    ref.invalidateSelf();
  }

  bool get hasMore => _hasMore;
  bool get isLoading => _isLoading;
  List<String> get selectedTypes => _selectedTypes;
}
