import 'package:dio/dio.dart';

class PokemonRemoteDataSource {
  final Dio dio;

  PokemonRemoteDataSource({required this.dio});

  Future<Map<String, dynamic>> getPokemonList({
    int offset = 0,
    int limit = 20,
  }) async {
    try {
      final response = await dio.get(
        'pokemon',
        queryParameters: {
          'offset': offset,
          'limit': limit,
        },
      );

      return response.data as Map<String, dynamic>;
    }catch (e) {
      throw Exception('Error inesperado: $e');
    }
  }

  Future<Map<String, dynamic>> getPokemonDetail(String name) async {
    try {
      final response = await dio.get('pokemon/$name');
      return response.data as Map<String, dynamic>;
    } catch (e) {
      throw Exception('Error inesperado: $e');
    }
  }
}
