import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poke_global/features/pokemon/data/models/pokemon_model.dart';
import 'package:poke_global/features/pokemon/domain/repositories/pokemon_repository.dart';
import 'package:poke_global/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:poke_global/features/pokemon/presentation/providers/pokemon_list_provider.dart';

import '../test_helpers.dart';

class MockPokemonRepository extends Mock implements PokemonRepository {}

void main() {
  group('PokemonListProvider', () {
    late MockPokemonRepository mockRepository;

    setUp(() async {
      await setupTestEnvironment();
      mockRepository = MockPokemonRepository();
    });

    ProviderContainer _containerWithMockRepo() {
      final container = ProviderContainer(overrides: [
        pokemonRepositoryProvider.overrideWith((ref) async => mockRepository),
      ]);
      addTearDown(container.dispose);
      return container;
    }

    test('initial state loads pokemon list', () async {
      final mockPokemon = [
        const PokemonModel(
          name: 'bulbasaur',
          url: 'https://pokeapi.co/api/v2/pokemon/1/',
        ),
        const PokemonModel(
          name: 'ivysaur',
          url: 'https://pokeapi.co/api/v2/pokemon/2/',
        ),
      ];

      when(() => mockRepository.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
          .thenAnswer((_) async => mockPokemon);

      final container = _containerWithMockRepo();
      final list = await container.read(pokemonListProvider.future);

      expect(list, mockPokemon);
      verify(() => mockRepository.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
          .called(greaterThanOrEqualTo(1));
    });

    test('searchPokemonByName filters pokemon', () async {
      final mockInitialList = [
        const PokemonModel(
          name: 'bulbasaur',
          url: 'https://pokeapi.co/api/v2/pokemon/1/',
        ),
      ];

      final mockSearchResults = [
        const PokemonModel(
          name: 'pikachu',
          url: 'https://pokeapi.co/api/v2/pokemon/25/',
        ),
      ];

      when(() => mockRepository.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
          .thenAnswer((_) async => mockInitialList);
      when(() => mockRepository.searchPokemonByName('pika'))
          .thenAnswer((_) async => mockSearchResults);

      final container = _containerWithMockRepo();
      await container.read(pokemonListProvider.future);

      final notifier = container.read(pokemonListProvider.notifier);
      await notifier.searchPokemonByName('pika');

      final result = container.read(pokemonListProvider).value!;
      expect(result, mockSearchResults);
      verify(() => mockRepository.searchPokemonByName('pika')).called(1);
    });

    test('setTypeFilters filters pokemon by type', () async {
      final mockInitialList = [
        const PokemonModel(
          name: 'bulbasaur',
          url: 'https://pokeapi.co/api/v2/pokemon/1/',
        ),
      ];

      final mockFirePokemon = [
        const PokemonModel(
          name: 'charmander',
          url: 'https://pokeapi.co/api/v2/pokemon/4/',
        ),
        const PokemonModel(
          name: 'charmeleon',
          url: 'https://pokeapi.co/api/v2/pokemon/5/',
        ),
      ];

      when(() => mockRepository.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
          .thenAnswer((_) async => mockInitialList);
      when(() => mockRepository.getPokemonByType('fire'))
          .thenAnswer((_) async => mockFirePokemon);

      final container = _containerWithMockRepo();
      await container.read(pokemonListProvider.future);

      final notifier = container.read(pokemonListProvider.notifier);
      await notifier.setTypeFilters(['fire']);

      final result = container.read(pokemonListProvider).value!;
      expect(result.length, 2);
      expect(result.any((p) => p.name == 'charmander'), isTrue);
      verify(() => mockRepository.getPokemonByType('fire')).called(1);
    });

    test('setTypeFilters with multiple types combines results', () async {
      final mockInitialList = [
        const PokemonModel(
          name: 'bulbasaur',
          url: 'https://pokeapi.co/api/v2/pokemon/1/',
        ),
      ];

      final mockFirePokemon = [
        const PokemonModel(
          name: 'charmander',
          url: 'https://pokeapi.co/api/v2/pokemon/4/',
        ),
      ];

      final mockWaterPokemon = [
        const PokemonModel(
          name: 'squirtle',
          url: 'https://pokeapi.co/api/v2/pokemon/7/',
        ),
      ];

      when(() => mockRepository.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
          .thenAnswer((_) async => mockInitialList);
      when(() => mockRepository.getPokemonByType('fire'))
          .thenAnswer((_) async => mockFirePokemon);
      when(() => mockRepository.getPokemonByType('water'))
          .thenAnswer((_) async => mockWaterPokemon);

      final container = _containerWithMockRepo();
      await container.read(pokemonListProvider.future);

      final notifier = container.read(pokemonListProvider.notifier);
      await notifier.setTypeFilters(['fire', 'water']);

      final result = container.read(pokemonListProvider).value!;
      expect(result.length, 2);
      expect(result.any((p) => p.name == 'charmander'), isTrue);
      expect(result.any((p) => p.name == 'squirtle'), isTrue);
    });

    test('search with type filters applies both filters', () async {
      final mockInitialList = [
        const PokemonModel(
          name: 'bulbasaur',
          url: 'https://pokeapi.co/api/v2/pokemon/1/',
        ),
      ];

      final mockFirePokemon = [
        const PokemonModel(
          name: 'charmander',
          url: 'https://pokeapi.co/api/v2/pokemon/4/',
        ),
        const PokemonModel(
          name: 'charmeleon',
          url: 'https://pokeapi.co/api/v2/pokemon/5/',
        ),
      ];

      when(() => mockRepository.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
          .thenAnswer((_) async => mockInitialList);
      when(() => mockRepository.getPokemonByType('fire'))
          .thenAnswer((_) async => mockFirePokemon);

      final container = _containerWithMockRepo();
      await container.read(pokemonListProvider.future);

      final notifier = container.read(pokemonListProvider.notifier);
      await notifier.setTypeFilters(['fire']);
      await notifier.searchPokemonByName('char');

      final result = container.read(pokemonListProvider).value!;
      expect(result.length, 2);
      expect(result.every((p) => p.name.contains('char')), isTrue);
    });

    test('selectedTypes getter returns current filters', () async {
      final mockInitialList = [
        const PokemonModel(
          name: 'bulbasaur',
          url: 'https://pokeapi.co/api/v2/pokemon/1/',
        ),
      ];

      when(() => mockRepository.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
          .thenAnswer((_) async => mockInitialList);
      when(() => mockRepository.getPokemonByType(any()))
          .thenAnswer((_) async => []);

      final container = _containerWithMockRepo();
      await container.read(pokemonListProvider.future);

      final notifier = container.read(pokemonListProvider.notifier);
      expect(notifier.selectedTypes, isEmpty);

      await notifier.setTypeFilters(['fire', 'water']);
      expect(notifier.selectedTypes, ['fire', 'water']);
    });
  });
}
