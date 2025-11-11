import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:poke_global/features/pokemon/data/datasources/pokemon_remote_datasource.dart';
import 'package:poke_global/features/pokemon/data/repositories/pokemon_repository_impl.dart';
import 'package:poke_global/features/pokemon/data/models/pokemon_model.dart';

import '../test_helpers.dart';

class MockPokemonRemoteDataSource extends Mock
    implements PokemonRemoteDataSource {}

void main() {
  group('PokemonRepositoryImpl', () {
    late MockPokemonRemoteDataSource mockDataSource;
    late PokemonRepositoryImpl repository;

    setUp(() async {
      await setupTestEnvironment();
      mockDataSource = MockPokemonRemoteDataSource();
      repository = PokemonRepositoryImpl(dataSource: mockDataSource);
    });

    group('getPokemonList', () {
      test('returns list of pokemon from data source', () async {
        final mockResponse = {
          'count': 2,
          'results': [
            {'name': 'bulbasaur', 'url': 'https://pokeapi.co/api/v2/pokemon/1/'},
            {'name': 'ivysaur', 'url': 'https://pokeapi.co/api/v2/pokemon/2/'},
          ],
        };

        when(() => mockDataSource.getPokemonList(offset: 0, limit: 20))
            .thenAnswer((_) async => mockResponse);

        final result = await repository.getPokemonList(offset: 0, limit: 20);

        expect(result, isA<List<PokemonModel>>());
        expect(result.length, 2);
        expect(result[0].name, 'bulbasaur');
        expect(result[1].name, 'ivysaur');
        verify(() => mockDataSource.getPokemonList(offset: 0, limit: 20))
            .called(1);
      });

      test('throws exception when data source fails', () async {
        when(() => mockDataSource.getPokemonList(offset: any(named: 'offset'), limit: any(named: 'limit')))
            .thenThrow(Exception('Network error'));

        expect(
          () => repository.getPokemonList(offset: 0, limit: 20),
          throwsException,
        );
      });
    });

    group('searchPokemonByName', () {
      test('returns filtered pokemon list', () async {
        final mockResponse = {
          'count': 1,
          'results': [
            {'name': 'pikachu', 'url': 'https://pokeapi.co/api/v2/pokemon/25/'},
          ],
        };

        when(() => mockDataSource.searchPokemonByName('pika'))
            .thenAnswer((_) async => mockResponse);

        final result = await repository.searchPokemonByName('pika');

        expect(result, isA<List<PokemonModel>>());
        expect(result.length, 1);
        expect(result[0].name, 'pikachu');
        verify(() => mockDataSource.searchPokemonByName('pika')).called(1);
      });
    });

    group('getPokemonDetail', () {
      test('returns pokemon detail from data source', () async {
        final mockResponse = {
          'id': 25,
          'name': 'pikachu',
          'height': 4,
          'weight': 60,
          'abilities': [
            {
              'ability': {'name': 'static'}
            }
          ],
          'types': [
            {
              'slot': 1,
              'type': {'name': 'electric'}
            }
          ],
          'stats': [
            {
              'base_stat': 35,
              'stat': {'name': 'hp'}
            }
          ],
          'sprites': {
            'front_default': 'https://example.com/pikachu.png',
            'other': {
              'official-artwork': {
                'front_default': 'https://example.com/pikachu-artwork.png'
              }
            }
          },
        };

        when(() => mockDataSource.getPokemonDetail('pikachu'))
            .thenAnswer((_) async => mockResponse);

        final result = await repository.getPokemonDetail('pikachu');

        expect(result.id, 25);
        expect(result.name, 'pikachu');
        expect(result.height, 4);
        expect(result.weight, 60);
        expect(result.types.length, 1);
        expect(result.types[0].type.name, 'electric');
        verify(() => mockDataSource.getPokemonDetail('pikachu')).called(1);
      });
    });

    group('getPokemonByType', () {
      test('returns pokemon list for specific type', () async {
        final mockResponse = {
          'pokemon': [
            {
              'pokemon': {
                'name': 'charmander',
                'url': 'https://pokeapi.co/api/v2/pokemon/4/'
              }
            },
            {
              'pokemon': {
                'name': 'charmeleon',
                'url': 'https://pokeapi.co/api/v2/pokemon/5/'
              }
            },
          ],
        };

        when(() => mockDataSource.getPokemonByType('fire'))
            .thenAnswer((_) async => mockResponse);

        final result = await repository.getPokemonByType('fire');

        expect(result, isA<List<PokemonModel>>());
        expect(result.length, 2);
        expect(result[0].name, 'charmander');
        expect(result[1].name, 'charmeleon');
        verify(() => mockDataSource.getPokemonByType('fire')).called(1);
      });

      test('throws exception when data source fails', () async {
        when(() => mockDataSource.getPokemonByType(any()))
            .thenThrow(Exception('Network error'));

        expect(
          () => repository.getPokemonByType('fire'),
          throwsException,
        );
      });
    });

    group('getPokemonSpecies', () {
      test('returns pokemon species data', () async {
        final mockResponse = {
          'id': 25,
          'name': 'pikachu',
          'flavor_text_entries': [
            {
              'flavor_text': 'A pokemon description',
              'language': {'name': 'en'}
            }
          ],
          'genera': [
            {
              'genus': 'Mouse Pokémon',
              'language': {'name': 'en'}
            }
          ],
          'gender_rate': 4,
        };

        when(() => mockDataSource.getPokemonSpecies('pikachu'))
            .thenAnswer((_) async => mockResponse);

        final result = await repository.getPokemonSpecies('pikachu');

        expect(result.id, 25);
        expect(result.name, 'pikachu');
        expect(result.genderRate, 4);
        expect(result.genera.length, 1);
        verify(() => mockDataSource.getPokemonSpecies('pikachu')).called(1);
      });
    });
  });
}
