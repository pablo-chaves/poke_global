import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_model.freezed.dart';
part 'pokemon_model.g.dart';

@freezed
abstract class PokemonListResponse with _$PokemonListResponse {
  const factory PokemonListResponse({
    required int count,
    required List<PokemonModel> results,
  }) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}

/// Modelo de Pokémon básico
@freezed
abstract class PokemonModel with _$PokemonModel {
  const factory PokemonModel({
    required String name,
    required String url,
  }) = _PokemonModel;

  factory PokemonModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonModelFromJson(json);
}

/// Modelo de detalle de Pokémon
@freezed
abstract class PokemonDetailModel with _$PokemonDetailModel {
  const factory PokemonDetailModel({
    required int id,
    required String name,
    required int height,
    required int weight,
    required List<PokemonTypeModel> types,
    required List<PokemonStatModel> stats,
    required PokemonSpritesModel sprites,
  }) = _PokemonDetailModel;

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailModelFromJson(json);
}

@freezed
sealed class PokemonTypeModel with _$PokemonTypeModel {
  const factory PokemonTypeModel({
    required int slot,
    required TypeInfoModel type,
  }) = _PokemonTypeModel;

  factory PokemonTypeModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeModelFromJson(json);
}

@freezed
sealed class TypeInfoModel with _$TypeInfoModel {
  const factory TypeInfoModel({
    required String name,
  }) = _TypeInfoModel;

  factory TypeInfoModel.fromJson(Map<String, dynamic> json) =>
      _$TypeInfoModelFromJson(json);
}

@freezed
sealed class PokemonStatModel with _$PokemonStatModel {
  const factory PokemonStatModel({
    @JsonKey(name: 'base_stat') required int baseStat,
    required StatInfoModel stat,
  }) = _PokemonStatModel;

  factory PokemonStatModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonStatModelFromJson(json);
}

@freezed
sealed class StatInfoModel with _$StatInfoModel {
  const factory StatInfoModel({
    required String name,
  }) = _StatInfoModel;

  factory StatInfoModel.fromJson(Map<String, dynamic> json) =>
      _$StatInfoModelFromJson(json);
}

@freezed
sealed class PokemonSpritesModel with _$PokemonSpritesModel {
  const factory PokemonSpritesModel({
    @JsonKey(name: 'front_default') String? frontDefault,
    PokemonSpritesOtherModel? other,
  }) = _PokemonSpritesModel;

  factory PokemonSpritesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesModelFromJson(json);
}

@freezed
sealed class PokemonSpritesOtherModel with _$PokemonSpritesOtherModel {
  const factory PokemonSpritesOtherModel({
    @JsonKey(name: 'official-artwork') OfficialArtworkModel? officialArtwork,
  }) = _PokemonSpritesOtherModel;

  factory PokemonSpritesOtherModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesOtherModelFromJson(json);
}

@freezed
sealed class OfficialArtworkModel with _$OfficialArtworkModel {
  const factory OfficialArtworkModel({
    @JsonKey(name: 'front_default') String? frontDefault,
  }) = _OfficialArtworkModel;

  factory OfficialArtworkModel.fromJson(Map<String, dynamic> json) =>
      _$OfficialArtworkModelFromJson(json);
}
