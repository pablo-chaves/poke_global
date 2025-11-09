// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonListResponse _$PokemonListResponseFromJson(Map<String, dynamic> json) =>
    _PokemonListResponse(
      count: (json['count'] as num).toInt(),
      results: (json['results'] as List<dynamic>)
          .map((e) => PokemonModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonListResponseToJson(
  _PokemonListResponse instance,
) => <String, dynamic>{'count': instance.count, 'results': instance.results};

_PokemonModel _$PokemonModelFromJson(Map<String, dynamic> json) =>
    _PokemonModel(name: json['name'] as String, url: json['url'] as String);

Map<String, dynamic> _$PokemonModelToJson(_PokemonModel instance) =>
    <String, dynamic>{'name': instance.name, 'url': instance.url};

_PokemonDetailModel _$PokemonDetailModelFromJson(Map<String, dynamic> json) =>
    _PokemonDetailModel(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      stats: (json['stats'] as List<dynamic>)
          .map((e) => PokemonStatModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSpritesModel.fromJson(
        json['sprites'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$PokemonDetailModelToJson(_PokemonDetailModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'stats': instance.stats,
      'sprites': instance.sprites,
    };

_PokemonTypeModel _$PokemonTypeModelFromJson(Map<String, dynamic> json) =>
    _PokemonTypeModel(
      slot: (json['slot'] as num).toInt(),
      type: TypeInfoModel.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeModelToJson(_PokemonTypeModel instance) =>
    <String, dynamic>{'slot': instance.slot, 'type': instance.type};

_TypeInfoModel _$TypeInfoModelFromJson(Map<String, dynamic> json) =>
    _TypeInfoModel(name: json['name'] as String);

Map<String, dynamic> _$TypeInfoModelToJson(_TypeInfoModel instance) =>
    <String, dynamic>{'name': instance.name};

_PokemonStatModel _$PokemonStatModelFromJson(Map<String, dynamic> json) =>
    _PokemonStatModel(
      baseStat: (json['base_stat'] as num).toInt(),
      stat: StatInfoModel.fromJson(json['stat'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonStatModelToJson(_PokemonStatModel instance) =>
    <String, dynamic>{'base_stat': instance.baseStat, 'stat': instance.stat};

_StatInfoModel _$StatInfoModelFromJson(Map<String, dynamic> json) =>
    _StatInfoModel(name: json['name'] as String);

Map<String, dynamic> _$StatInfoModelToJson(_StatInfoModel instance) =>
    <String, dynamic>{'name': instance.name};

_PokemonSpritesModel _$PokemonSpritesModelFromJson(Map<String, dynamic> json) =>
    _PokemonSpritesModel(
      frontDefault: json['front_default'] as String?,
      other: json['other'] == null
          ? null
          : PokemonSpritesOtherModel.fromJson(
              json['other'] as Map<String, dynamic>,
            ),
    );

Map<String, dynamic> _$PokemonSpritesModelToJson(
  _PokemonSpritesModel instance,
) => <String, dynamic>{
  'front_default': instance.frontDefault,
  'other': instance.other,
};

_PokemonSpritesOtherModel _$PokemonSpritesOtherModelFromJson(
  Map<String, dynamic> json,
) => _PokemonSpritesOtherModel(
  officialArtwork: json['official-artwork'] == null
      ? null
      : OfficialArtworkModel.fromJson(
          json['official-artwork'] as Map<String, dynamic>,
        ),
);

Map<String, dynamic> _$PokemonSpritesOtherModelToJson(
  _PokemonSpritesOtherModel instance,
) => <String, dynamic>{'official-artwork': instance.officialArtwork};

_OfficialArtworkModel _$OfficialArtworkModelFromJson(
  Map<String, dynamic> json,
) => _OfficialArtworkModel(frontDefault: json['front_default'] as String?);

Map<String, dynamic> _$OfficialArtworkModelToJson(
  _OfficialArtworkModel instance,
) => <String, dynamic>{'front_default': instance.frontDefault};
