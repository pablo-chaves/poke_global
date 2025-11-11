import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_pokemon_model.freezed.dart';
part 'favorite_pokemon_model.g.dart';

@freezed
abstract class FavoritePokemonModel with _$FavoritePokemonModel {
  const factory FavoritePokemonModel({
    required String id,
    required String name,
  }) = _FavoritePokemonModel;

  factory FavoritePokemonModel.fromJson(Map<String, dynamic> json) =>
      _$FavoritePokemonModelFromJson(json);
}
