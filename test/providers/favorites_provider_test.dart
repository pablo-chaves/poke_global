import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:poke_global/features/favorites/data/models/favorite_pokemon_model.dart';
import 'package:poke_global/features/favorites/domain/repositories/favorites_repository.dart';
import 'package:poke_global/features/favorites/presentation/providers/favorites_provider.dart';
import 'package:poke_global/features/favorites/data/repositories/favorites_repository_impl.dart';

import '../test_helpers.dart';

class FakeFavoritesRepository implements FavoritesRepository {
  final List<FavoritePokemonModel> _favorites = [];

  @override
  Future<void> addFavorite(String pokemonId, String pokemonName) async {
    final normalized = pokemonName.toLowerCase();
    if (_favorites.any((e) => e.name == normalized)) return;
    _favorites.add(FavoritePokemonModel(id: pokemonId, name: normalized));
  }

  @override
  Future<void> clearFavorites() async {
    _favorites.clear();
  }

  @override
  Future<List<FavoritePokemonModel>> getFavorites() async {
    return List.unmodifiable(_favorites);
  }

  @override
  Future<bool> isFavorite(String pokemonName) async {
    final normalized = pokemonName.toLowerCase();
    return _favorites.any((e) => e.name == normalized);
  }

  @override
  Future<void> removeFavorite(String pokemonName) async {
    final normalized = pokemonName.toLowerCase();
    _favorites.removeWhere((e) => e.name == normalized);
  }
}

void main() {
  group('FavoritesProvider', () {
    setUp(() async {
      await setupTestEnvironment();
    });

    ProviderContainer _containerWithFakeRepo() {
      final container = ProviderContainer(overrides: [
        favoritesRepositoryProvider.overrideWith((ref) async => FakeFavoritesRepository()),
      ]);
      addTearDown(container.dispose);
      return container;
    }

    test('initial state loads favorites (empty)', () async {
      final container = _containerWithFakeRepo();

      final list = await container.read(favoritesProvider.future);
      expect(list, isEmpty);
    });

    test('toggleFavorite adds when not present and removes when present', () async {
      final container = _containerWithFakeRepo();
      final notifier = container.read(favoritesProvider.notifier);

      // Esperar a que el build() inicial termine y no sobreescriba el estado
      await container.read(favoritesProvider.future);

      await notifier.toggleFavorite('2', 'Ivysaur');
      final afterAdd = container.read(favoritesProvider).value!;
      expect(afterAdd.any((e) => e.name == 'ivysaur' && e.id == '2'), isTrue);

      await notifier.toggleFavorite('2', 'IVYSAUR');
      final afterRemove = container.read(favoritesProvider).value!;
      expect(afterRemove.any((e) => e.name == 'ivysaur'), isFalse);
    });

    test('isFavorite returns correct value', () async {
      final container = _containerWithFakeRepo();
      final notifier = container.read(favoritesProvider.notifier);

      // Esperar carga inicial
      await container.read(favoritesProvider.future);

      expect(notifier.isFavorite('Bulbasaur'), isFalse);
      await notifier.toggleFavorite('1', 'Bulbasaur');
      expect(notifier.isFavorite('bulbasaur'), isTrue);
    });

    test('clearAll removes all favorites', () async {
      final container = _containerWithFakeRepo();
      final notifier = container.read(favoritesProvider.notifier);

      // Esperar carga inicial
      await container.read(favoritesProvider.future);

      await notifier.toggleFavorite('4', 'Charmander');
      await notifier.toggleFavorite('7', 'Squirtle');
      expect(notifier.count, 2);

      await notifier.clearAll();
      expect(notifier.count, 0);
      expect(notifier.favoritesList, isEmpty);
    });
  });
}
