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
  const factory PokemonModel({required String name, required String url}) =
      _PokemonModel;

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
    required List<PokemonAbilitiesModel> abilities,
    required List<PokemonTypeModel> types,
    required List<PokemonStatModel> stats,
    required PokemonSpritesModel sprites,
  }) = _PokemonDetailModel;

  factory PokemonDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailModelFromJson(json);
}

/// Modelo de descripción
@freezed
abstract class PokemonSpeciesModel with _$PokemonSpeciesModel {
  const factory PokemonSpeciesModel({
    required int id,
    required String name,
    @JsonKey(name: 'flavor_text_entries')
    required List<FlavorTextModel> flavorTextEntries,
    required List<GeneraModel> genera,
    @JsonKey(name: 'gender_rate') required int genderRate,
  }) = _PokemonSpeciesModel;

  factory PokemonSpeciesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesModelFromJson(json);
}

@freezed
abstract class FlavorTextModel with _$FlavorTextModel {
  const factory FlavorTextModel({
    required LanguageModel language,
    @JsonKey(name: 'flavor_text')
    required String flavorText,
  }) = _FlavorTextModel;

  factory FlavorTextModel.fromJson(Map<String, dynamic> json) =>
      _$FlavorTextModelFromJson(json);
}

@freezed
sealed class GeneraModel with _$GeneraModel {
  const factory GeneraModel({
    required String genus,
    required LanguageModel language,
  }) = _GeneraModel;

  factory GeneraModel.fromJson(Map<String, dynamic> json) =>
      _$GeneraModelFromJson(json);
}

@freezed
sealed class LanguageModel with _$LanguageModel {
  const factory LanguageModel({
    required String name,
  }) = _LanguageModel;

  factory LanguageModel.fromJson(Map<String, dynamic> json) =>
      _$LanguageModelFromJson(json);
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
sealed class PokemonAbilitiesModel with _$PokemonAbilitiesModel {
  const factory PokemonAbilitiesModel({
    required AbilityModel ability,
  }) = _PokemonAbilitiesModel;

  factory PokemonAbilitiesModel.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilitiesModelFromJson(json);
}

@freezed
sealed class AbilityModel with _$AbilityModel {
  const factory AbilityModel({
    required String name,
  }) = _AbilityModel;

  factory AbilityModel.fromJson(Map<String, dynamic> json) =>
      _$AbilityModelFromJson(json);
}

@freezed
sealed class TypeInfoModel with _$TypeInfoModel {
  const factory TypeInfoModel({required String name}) = _TypeInfoModel;

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
  const factory StatInfoModel({required String name}) = _StatInfoModel;

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
