import 'package:poke_global/core/providers/shared_preferences_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../domain/repositories/favorites_repository.dart';
import '../datasources/favorites_local_datasource.dart';

part 'favorites_repository_impl.g.dart';

class FavoritesRepositoryImpl implements FavoritesRepository {
  final FavoritesLocalDataSource dataSource;

  FavoritesRepositoryImpl({required this.dataSource});

  @override
  Future<Set<String>> getFavorites() async {
    return await dataSource.getFavorites();
  }

  @override
  Future<void> addFavorite(String pokemonName) async {
    await dataSource.addFavorite(pokemonName);
  }

  @override
  Future<void> removeFavorite(String pokemonName) async {
    await dataSource.removeFavorite(pokemonName);
  }

  @override
  Future<bool> isFavorite(String pokemonName) async {
    return await dataSource.isFavorite(pokemonName);
  }

  @override
  Future<void> clearFavorites() async {
    await dataSource.clearFavorites();
  }
}

@riverpod
Future<FavoritesLocalDataSource> favoritesLocalDataSource(
  Ref ref,
) async {
  final prefs = await ref.watch(sharedPreferencesProvider.future);
  return FavoritesLocalDataSource(prefs);
}

@riverpod
Future<FavoritesRepository> favoritesRepository(
  Ref ref,
) async {
  final dataSource = await ref.watch(favoritesLocalDataSourceProvider.future);
  return FavoritesRepositoryImpl(dataSource: dataSource);
}