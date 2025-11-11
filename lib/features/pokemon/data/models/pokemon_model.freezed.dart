// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PokemonListResponse {

 int get count; List<PokemonModel> get results;
/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonListResponseCopyWith<PokemonListResponse> get copyWith => _$PokemonListResponseCopyWithImpl<PokemonListResponse>(this as PokemonListResponse, _$identity);

  /// Serializes this PokemonListResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonListResponse&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other.results, results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(results));

@override
String toString() {
  return 'PokemonListResponse(count: $count, results: $results)';
}


}

/// @nodoc
abstract mixin class $PokemonListResponseCopyWith<$Res>  {
  factory $PokemonListResponseCopyWith(PokemonListResponse value, $Res Function(PokemonListResponse) _then) = _$PokemonListResponseCopyWithImpl;
@useResult
$Res call({
 int count, List<PokemonModel> results
});




}
/// @nodoc
class _$PokemonListResponseCopyWithImpl<$Res>
    implements $PokemonListResponseCopyWith<$Res> {
  _$PokemonListResponseCopyWithImpl(this._self, this._then);

  final PokemonListResponse _self;
  final $Res Function(PokemonListResponse) _then;

/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? results = null,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonListResponse].
extension PokemonListResponsePatterns on PokemonListResponse {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonListResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonListResponse value)  $default,){
final _that = this;
switch (_that) {
case _PokemonListResponse():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonListResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  List<PokemonModel> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
return $default(_that.count,_that.results);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  List<PokemonModel> results)  $default,) {final _that = this;
switch (_that) {
case _PokemonListResponse():
return $default(_that.count,_that.results);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  List<PokemonModel> results)?  $default,) {final _that = this;
switch (_that) {
case _PokemonListResponse() when $default != null:
return $default(_that.count,_that.results);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonListResponse implements PokemonListResponse {
  const _PokemonListResponse({required this.count, required final  List<PokemonModel> results}): _results = results;
  factory _PokemonListResponse.fromJson(Map<String, dynamic> json) => _$PokemonListResponseFromJson(json);

@override final  int count;
 final  List<PokemonModel> _results;
@override List<PokemonModel> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonListResponseCopyWith<_PokemonListResponse> get copyWith => __$PokemonListResponseCopyWithImpl<_PokemonListResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonListResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonListResponse&&(identical(other.count, count) || other.count == count)&&const DeepCollectionEquality().equals(other._results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PokemonListResponse(count: $count, results: $results)';
}


}

/// @nodoc
abstract mixin class _$PokemonListResponseCopyWith<$Res> implements $PokemonListResponseCopyWith<$Res> {
  factory _$PokemonListResponseCopyWith(_PokemonListResponse value, $Res Function(_PokemonListResponse) _then) = __$PokemonListResponseCopyWithImpl;
@override @useResult
$Res call({
 int count, List<PokemonModel> results
});




}
/// @nodoc
class __$PokemonListResponseCopyWithImpl<$Res>
    implements _$PokemonListResponseCopyWith<$Res> {
  __$PokemonListResponseCopyWithImpl(this._self, this._then);

  final _PokemonListResponse _self;
  final $Res Function(_PokemonListResponse) _then;

/// Create a copy of PokemonListResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? results = null,}) {
  return _then(_PokemonListResponse(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<PokemonModel>,
  ));
}


}


/// @nodoc
mixin _$PokemonModel {

 String get name; String get url;
/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonModelCopyWith<PokemonModel> get copyWith => _$PokemonModelCopyWithImpl<PokemonModel>(this as PokemonModel, _$identity);

  /// Serializes this PokemonModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class $PokemonModelCopyWith<$Res>  {
  factory $PokemonModelCopyWith(PokemonModel value, $Res Function(PokemonModel) _then) = _$PokemonModelCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$PokemonModelCopyWithImpl<$Res>
    implements $PokemonModelCopyWith<$Res> {
  _$PokemonModelCopyWithImpl(this._self, this._then);

  final PokemonModel _self;
  final $Res Function(PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonModel].
extension PokemonModelPatterns on PokemonModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _PokemonModel():
return $default(_that.name,_that.url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _PokemonModel() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonModel implements PokemonModel {
  const _PokemonModel({required this.name, required this.url});
  factory _PokemonModel.fromJson(Map<String, dynamic> json) => _$PokemonModelFromJson(json);

@override final  String name;
@override final  String url;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonModelCopyWith<_PokemonModel> get copyWith => __$PokemonModelCopyWithImpl<_PokemonModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonModel&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,url);

@override
String toString() {
  return 'PokemonModel(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$PokemonModelCopyWith<$Res> implements $PokemonModelCopyWith<$Res> {
  factory _$PokemonModelCopyWith(_PokemonModel value, $Res Function(_PokemonModel) _then) = __$PokemonModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$PokemonModelCopyWithImpl<$Res>
    implements _$PokemonModelCopyWith<$Res> {
  __$PokemonModelCopyWithImpl(this._self, this._then);

  final _PokemonModel _self;
  final $Res Function(_PokemonModel) _then;

/// Create a copy of PokemonModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_PokemonModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonDetailModel {

 int get id; String get name; int get height; int get weight; List<PokemonAbilitiesModel> get abilities; List<PokemonTypeModel> get types; List<PokemonStatModel> get stats; PokemonSpritesModel get sprites;
/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonDetailModelCopyWith<PokemonDetailModel> get copyWith => _$PokemonDetailModelCopyWithImpl<PokemonDetailModel>(this as PokemonDetailModel, _$identity);

  /// Serializes this PokemonDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other.abilities, abilities)&&const DeepCollectionEquality().equals(other.types, types)&&const DeepCollectionEquality().equals(other.stats, stats)&&(identical(other.sprites, sprites) || other.sprites == sprites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,const DeepCollectionEquality().hash(abilities),const DeepCollectionEquality().hash(types),const DeepCollectionEquality().hash(stats),sprites);

@override
String toString() {
  return 'PokemonDetailModel(id: $id, name: $name, height: $height, weight: $weight, abilities: $abilities, types: $types, stats: $stats, sprites: $sprites)';
}


}

/// @nodoc
abstract mixin class $PokemonDetailModelCopyWith<$Res>  {
  factory $PokemonDetailModelCopyWith(PokemonDetailModel value, $Res Function(PokemonDetailModel) _then) = _$PokemonDetailModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, int height, int weight, List<PokemonAbilitiesModel> abilities, List<PokemonTypeModel> types, List<PokemonStatModel> stats, PokemonSpritesModel sprites
});


$PokemonSpritesModelCopyWith<$Res> get sprites;

}
/// @nodoc
class _$PokemonDetailModelCopyWithImpl<$Res>
    implements $PokemonDetailModelCopyWith<$Res> {
  _$PokemonDetailModelCopyWithImpl(this._self, this._then);

  final PokemonDetailModel _self;
  final $Res Function(PokemonDetailModel) _then;

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? abilities = null,Object? types = null,Object? stats = null,Object? sprites = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,abilities: null == abilities ? _self.abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbilitiesModel>,types: null == types ? _self.types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonTypeModel>,stats: null == stats ? _self.stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStatModel>,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as PokemonSpritesModel,
  ));
}
/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesModelCopyWith<$Res> get sprites {
  
  return $PokemonSpritesModelCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonDetailModel].
extension PokemonDetailModelPatterns on PokemonDetailModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  int height,  int weight,  List<PokemonAbilitiesModel> abilities,  List<PokemonTypeModel> types,  List<PokemonStatModel> stats,  PokemonSpritesModel sprites)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.abilities,_that.types,_that.stats,_that.sprites);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  int height,  int weight,  List<PokemonAbilitiesModel> abilities,  List<PokemonTypeModel> types,  List<PokemonStatModel> stats,  PokemonSpritesModel sprites)  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailModel():
return $default(_that.id,_that.name,_that.height,_that.weight,_that.abilities,_that.types,_that.stats,_that.sprites);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  int height,  int weight,  List<PokemonAbilitiesModel> abilities,  List<PokemonTypeModel> types,  List<PokemonStatModel> stats,  PokemonSpritesModel sprites)?  $default,) {final _that = this;
switch (_that) {
case _PokemonDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.height,_that.weight,_that.abilities,_that.types,_that.stats,_that.sprites);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonDetailModel implements PokemonDetailModel {
  const _PokemonDetailModel({required this.id, required this.name, required this.height, required this.weight, required final  List<PokemonAbilitiesModel> abilities, required final  List<PokemonTypeModel> types, required final  List<PokemonStatModel> stats, required this.sprites}): _abilities = abilities,_types = types,_stats = stats;
  factory _PokemonDetailModel.fromJson(Map<String, dynamic> json) => _$PokemonDetailModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  int height;
@override final  int weight;
 final  List<PokemonAbilitiesModel> _abilities;
@override List<PokemonAbilitiesModel> get abilities {
  if (_abilities is EqualUnmodifiableListView) return _abilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_abilities);
}

 final  List<PokemonTypeModel> _types;
@override List<PokemonTypeModel> get types {
  if (_types is EqualUnmodifiableListView) return _types;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_types);
}

 final  List<PokemonStatModel> _stats;
@override List<PokemonStatModel> get stats {
  if (_stats is EqualUnmodifiableListView) return _stats;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_stats);
}

@override final  PokemonSpritesModel sprites;

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonDetailModelCopyWith<_PokemonDetailModel> get copyWith => __$PokemonDetailModelCopyWithImpl<_PokemonDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.height, height) || other.height == height)&&(identical(other.weight, weight) || other.weight == weight)&&const DeepCollectionEquality().equals(other._abilities, _abilities)&&const DeepCollectionEquality().equals(other._types, _types)&&const DeepCollectionEquality().equals(other._stats, _stats)&&(identical(other.sprites, sprites) || other.sprites == sprites));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,height,weight,const DeepCollectionEquality().hash(_abilities),const DeepCollectionEquality().hash(_types),const DeepCollectionEquality().hash(_stats),sprites);

@override
String toString() {
  return 'PokemonDetailModel(id: $id, name: $name, height: $height, weight: $weight, abilities: $abilities, types: $types, stats: $stats, sprites: $sprites)';
}


}

/// @nodoc
abstract mixin class _$PokemonDetailModelCopyWith<$Res> implements $PokemonDetailModelCopyWith<$Res> {
  factory _$PokemonDetailModelCopyWith(_PokemonDetailModel value, $Res Function(_PokemonDetailModel) _then) = __$PokemonDetailModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, int height, int weight, List<PokemonAbilitiesModel> abilities, List<PokemonTypeModel> types, List<PokemonStatModel> stats, PokemonSpritesModel sprites
});


@override $PokemonSpritesModelCopyWith<$Res> get sprites;

}
/// @nodoc
class __$PokemonDetailModelCopyWithImpl<$Res>
    implements _$PokemonDetailModelCopyWith<$Res> {
  __$PokemonDetailModelCopyWithImpl(this._self, this._then);

  final _PokemonDetailModel _self;
  final $Res Function(_PokemonDetailModel) _then;

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? height = null,Object? weight = null,Object? abilities = null,Object? types = null,Object? stats = null,Object? sprites = null,}) {
  return _then(_PokemonDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,height: null == height ? _self.height : height // ignore: cast_nullable_to_non_nullable
as int,weight: null == weight ? _self.weight : weight // ignore: cast_nullable_to_non_nullable
as int,abilities: null == abilities ? _self._abilities : abilities // ignore: cast_nullable_to_non_nullable
as List<PokemonAbilitiesModel>,types: null == types ? _self._types : types // ignore: cast_nullable_to_non_nullable
as List<PokemonTypeModel>,stats: null == stats ? _self._stats : stats // ignore: cast_nullable_to_non_nullable
as List<PokemonStatModel>,sprites: null == sprites ? _self.sprites : sprites // ignore: cast_nullable_to_non_nullable
as PokemonSpritesModel,
  ));
}

/// Create a copy of PokemonDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesModelCopyWith<$Res> get sprites {
  
  return $PokemonSpritesModelCopyWith<$Res>(_self.sprites, (value) {
    return _then(_self.copyWith(sprites: value));
  });
}
}


/// @nodoc
mixin _$PokemonSpeciesModel {

 int get id; String get name;@JsonKey(name: 'flavor_text_entries') List<FlavorTextModel> get flavorTextEntries; List<GeneraModel> get genera;@JsonKey(name: 'gender_rate') int get genderRate;
/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpeciesModelCopyWith<PokemonSpeciesModel> get copyWith => _$PokemonSpeciesModelCopyWithImpl<PokemonSpeciesModel>(this as PokemonSpeciesModel, _$identity);

  /// Serializes this PokemonSpeciesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpeciesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.flavorTextEntries, flavorTextEntries)&&const DeepCollectionEquality().equals(other.genera, genera)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(flavorTextEntries),const DeepCollectionEquality().hash(genera),genderRate);

@override
String toString() {
  return 'PokemonSpeciesModel(id: $id, name: $name, flavorTextEntries: $flavorTextEntries, genera: $genera, genderRate: $genderRate)';
}


}

/// @nodoc
abstract mixin class $PokemonSpeciesModelCopyWith<$Res>  {
  factory $PokemonSpeciesModelCopyWith(PokemonSpeciesModel value, $Res Function(PokemonSpeciesModel) _then) = _$PokemonSpeciesModelCopyWithImpl;
@useResult
$Res call({
 int id, String name,@JsonKey(name: 'flavor_text_entries') List<FlavorTextModel> flavorTextEntries, List<GeneraModel> genera,@JsonKey(name: 'gender_rate') int genderRate
});




}
/// @nodoc
class _$PokemonSpeciesModelCopyWithImpl<$Res>
    implements $PokemonSpeciesModelCopyWith<$Res> {
  _$PokemonSpeciesModelCopyWithImpl(this._self, this._then);

  final PokemonSpeciesModel _self;
  final $Res Function(PokemonSpeciesModel) _then;

/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? flavorTextEntries = null,Object? genera = null,Object? genderRate = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,flavorTextEntries: null == flavorTextEntries ? _self.flavorTextEntries : flavorTextEntries // ignore: cast_nullable_to_non_nullable
as List<FlavorTextModel>,genera: null == genera ? _self.genera : genera // ignore: cast_nullable_to_non_nullable
as List<GeneraModel>,genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PokemonSpeciesModel].
extension PokemonSpeciesModelPatterns on PokemonSpeciesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpeciesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpeciesModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpeciesModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'flavor_text_entries')  List<FlavorTextModel> flavorTextEntries,  List<GeneraModel> genera, @JsonKey(name: 'gender_rate')  int genderRate)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that.id,_that.name,_that.flavorTextEntries,_that.genera,_that.genderRate);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @JsonKey(name: 'flavor_text_entries')  List<FlavorTextModel> flavorTextEntries,  List<GeneraModel> genera, @JsonKey(name: 'gender_rate')  int genderRate)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesModel():
return $default(_that.id,_that.name,_that.flavorTextEntries,_that.genera,_that.genderRate);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @JsonKey(name: 'flavor_text_entries')  List<FlavorTextModel> flavorTextEntries,  List<GeneraModel> genera, @JsonKey(name: 'gender_rate')  int genderRate)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpeciesModel() when $default != null:
return $default(_that.id,_that.name,_that.flavorTextEntries,_that.genera,_that.genderRate);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSpeciesModel implements PokemonSpeciesModel {
  const _PokemonSpeciesModel({required this.id, required this.name, @JsonKey(name: 'flavor_text_entries') required final  List<FlavorTextModel> flavorTextEntries, required final  List<GeneraModel> genera, @JsonKey(name: 'gender_rate') required this.genderRate}): _flavorTextEntries = flavorTextEntries,_genera = genera;
  factory _PokemonSpeciesModel.fromJson(Map<String, dynamic> json) => _$PokemonSpeciesModelFromJson(json);

@override final  int id;
@override final  String name;
 final  List<FlavorTextModel> _flavorTextEntries;
@override@JsonKey(name: 'flavor_text_entries') List<FlavorTextModel> get flavorTextEntries {
  if (_flavorTextEntries is EqualUnmodifiableListView) return _flavorTextEntries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_flavorTextEntries);
}

 final  List<GeneraModel> _genera;
@override List<GeneraModel> get genera {
  if (_genera is EqualUnmodifiableListView) return _genera;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_genera);
}

@override@JsonKey(name: 'gender_rate') final  int genderRate;

/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpeciesModelCopyWith<_PokemonSpeciesModel> get copyWith => __$PokemonSpeciesModelCopyWithImpl<_PokemonSpeciesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpeciesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpeciesModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._flavorTextEntries, _flavorTextEntries)&&const DeepCollectionEquality().equals(other._genera, _genera)&&(identical(other.genderRate, genderRate) || other.genderRate == genderRate));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,const DeepCollectionEquality().hash(_flavorTextEntries),const DeepCollectionEquality().hash(_genera),genderRate);

@override
String toString() {
  return 'PokemonSpeciesModel(id: $id, name: $name, flavorTextEntries: $flavorTextEntries, genera: $genera, genderRate: $genderRate)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpeciesModelCopyWith<$Res> implements $PokemonSpeciesModelCopyWith<$Res> {
  factory _$PokemonSpeciesModelCopyWith(_PokemonSpeciesModel value, $Res Function(_PokemonSpeciesModel) _then) = __$PokemonSpeciesModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@JsonKey(name: 'flavor_text_entries') List<FlavorTextModel> flavorTextEntries, List<GeneraModel> genera,@JsonKey(name: 'gender_rate') int genderRate
});




}
/// @nodoc
class __$PokemonSpeciesModelCopyWithImpl<$Res>
    implements _$PokemonSpeciesModelCopyWith<$Res> {
  __$PokemonSpeciesModelCopyWithImpl(this._self, this._then);

  final _PokemonSpeciesModel _self;
  final $Res Function(_PokemonSpeciesModel) _then;

/// Create a copy of PokemonSpeciesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? flavorTextEntries = null,Object? genera = null,Object? genderRate = null,}) {
  return _then(_PokemonSpeciesModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,flavorTextEntries: null == flavorTextEntries ? _self._flavorTextEntries : flavorTextEntries // ignore: cast_nullable_to_non_nullable
as List<FlavorTextModel>,genera: null == genera ? _self._genera : genera // ignore: cast_nullable_to_non_nullable
as List<GeneraModel>,genderRate: null == genderRate ? _self.genderRate : genderRate // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$FlavorTextModel {

 LanguageModel get language;@JsonKey(name: 'flavor_text') String get flavorText;
/// Create a copy of FlavorTextModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FlavorTextModelCopyWith<FlavorTextModel> get copyWith => _$FlavorTextModelCopyWithImpl<FlavorTextModel>(this as FlavorTextModel, _$identity);

  /// Serializes this FlavorTextModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FlavorTextModel&&(identical(other.language, language) || other.language == language)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,language,flavorText);

@override
String toString() {
  return 'FlavorTextModel(language: $language, flavorText: $flavorText)';
}


}

/// @nodoc
abstract mixin class $FlavorTextModelCopyWith<$Res>  {
  factory $FlavorTextModelCopyWith(FlavorTextModel value, $Res Function(FlavorTextModel) _then) = _$FlavorTextModelCopyWithImpl;
@useResult
$Res call({
 LanguageModel language,@JsonKey(name: 'flavor_text') String flavorText
});


$LanguageModelCopyWith<$Res> get language;

}
/// @nodoc
class _$FlavorTextModelCopyWithImpl<$Res>
    implements $FlavorTextModelCopyWith<$Res> {
  _$FlavorTextModelCopyWithImpl(this._self, this._then);

  final FlavorTextModel _self;
  final $Res Function(FlavorTextModel) _then;

/// Create a copy of FlavorTextModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? language = null,Object? flavorText = null,}) {
  return _then(_self.copyWith(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageModel,flavorText: null == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of FlavorTextModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res> get language {
  
  return $LanguageModelCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// Adds pattern-matching-related methods to [FlavorTextModel].
extension FlavorTextModelPatterns on FlavorTextModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FlavorTextModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FlavorTextModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FlavorTextModel value)  $default,){
final _that = this;
switch (_that) {
case _FlavorTextModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FlavorTextModel value)?  $default,){
final _that = this;
switch (_that) {
case _FlavorTextModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LanguageModel language, @JsonKey(name: 'flavor_text')  String flavorText)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FlavorTextModel() when $default != null:
return $default(_that.language,_that.flavorText);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LanguageModel language, @JsonKey(name: 'flavor_text')  String flavorText)  $default,) {final _that = this;
switch (_that) {
case _FlavorTextModel():
return $default(_that.language,_that.flavorText);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LanguageModel language, @JsonKey(name: 'flavor_text')  String flavorText)?  $default,) {final _that = this;
switch (_that) {
case _FlavorTextModel() when $default != null:
return $default(_that.language,_that.flavorText);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FlavorTextModel implements FlavorTextModel {
  const _FlavorTextModel({required this.language, @JsonKey(name: 'flavor_text') required this.flavorText});
  factory _FlavorTextModel.fromJson(Map<String, dynamic> json) => _$FlavorTextModelFromJson(json);

@override final  LanguageModel language;
@override@JsonKey(name: 'flavor_text') final  String flavorText;

/// Create a copy of FlavorTextModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FlavorTextModelCopyWith<_FlavorTextModel> get copyWith => __$FlavorTextModelCopyWithImpl<_FlavorTextModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FlavorTextModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FlavorTextModel&&(identical(other.language, language) || other.language == language)&&(identical(other.flavorText, flavorText) || other.flavorText == flavorText));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,language,flavorText);

@override
String toString() {
  return 'FlavorTextModel(language: $language, flavorText: $flavorText)';
}


}

/// @nodoc
abstract mixin class _$FlavorTextModelCopyWith<$Res> implements $FlavorTextModelCopyWith<$Res> {
  factory _$FlavorTextModelCopyWith(_FlavorTextModel value, $Res Function(_FlavorTextModel) _then) = __$FlavorTextModelCopyWithImpl;
@override @useResult
$Res call({
 LanguageModel language,@JsonKey(name: 'flavor_text') String flavorText
});


@override $LanguageModelCopyWith<$Res> get language;

}
/// @nodoc
class __$FlavorTextModelCopyWithImpl<$Res>
    implements _$FlavorTextModelCopyWith<$Res> {
  __$FlavorTextModelCopyWithImpl(this._self, this._then);

  final _FlavorTextModel _self;
  final $Res Function(_FlavorTextModel) _then;

/// Create a copy of FlavorTextModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? language = null,Object? flavorText = null,}) {
  return _then(_FlavorTextModel(
language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageModel,flavorText: null == flavorText ? _self.flavorText : flavorText // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of FlavorTextModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res> get language {
  
  return $LanguageModelCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// @nodoc
mixin _$GeneraModel {

 String get genus; LanguageModel get language;
/// Create a copy of GeneraModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneraModelCopyWith<GeneraModel> get copyWith => _$GeneraModelCopyWithImpl<GeneraModel>(this as GeneraModel, _$identity);

  /// Serializes this GeneraModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneraModel&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genus,language);

@override
String toString() {
  return 'GeneraModel(genus: $genus, language: $language)';
}


}

/// @nodoc
abstract mixin class $GeneraModelCopyWith<$Res>  {
  factory $GeneraModelCopyWith(GeneraModel value, $Res Function(GeneraModel) _then) = _$GeneraModelCopyWithImpl;
@useResult
$Res call({
 String genus, LanguageModel language
});


$LanguageModelCopyWith<$Res> get language;

}
/// @nodoc
class _$GeneraModelCopyWithImpl<$Res>
    implements $GeneraModelCopyWith<$Res> {
  _$GeneraModelCopyWithImpl(this._self, this._then);

  final GeneraModel _self;
  final $Res Function(GeneraModel) _then;

/// Create a copy of GeneraModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? genus = null,Object? language = null,}) {
  return _then(_self.copyWith(
genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageModel,
  ));
}
/// Create a copy of GeneraModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res> get language {
  
  return $LanguageModelCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// Adds pattern-matching-related methods to [GeneraModel].
extension GeneraModelPatterns on GeneraModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneraModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneraModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneraModel value)  $default,){
final _that = this;
switch (_that) {
case _GeneraModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneraModel value)?  $default,){
final _that = this;
switch (_that) {
case _GeneraModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String genus,  LanguageModel language)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneraModel() when $default != null:
return $default(_that.genus,_that.language);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String genus,  LanguageModel language)  $default,) {final _that = this;
switch (_that) {
case _GeneraModel():
return $default(_that.genus,_that.language);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String genus,  LanguageModel language)?  $default,) {final _that = this;
switch (_that) {
case _GeneraModel() when $default != null:
return $default(_that.genus,_that.language);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeneraModel implements GeneraModel {
  const _GeneraModel({required this.genus, required this.language});
  factory _GeneraModel.fromJson(Map<String, dynamic> json) => _$GeneraModelFromJson(json);

@override final  String genus;
@override final  LanguageModel language;

/// Create a copy of GeneraModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneraModelCopyWith<_GeneraModel> get copyWith => __$GeneraModelCopyWithImpl<_GeneraModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeneraModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneraModel&&(identical(other.genus, genus) || other.genus == genus)&&(identical(other.language, language) || other.language == language));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,genus,language);

@override
String toString() {
  return 'GeneraModel(genus: $genus, language: $language)';
}


}

/// @nodoc
abstract mixin class _$GeneraModelCopyWith<$Res> implements $GeneraModelCopyWith<$Res> {
  factory _$GeneraModelCopyWith(_GeneraModel value, $Res Function(_GeneraModel) _then) = __$GeneraModelCopyWithImpl;
@override @useResult
$Res call({
 String genus, LanguageModel language
});


@override $LanguageModelCopyWith<$Res> get language;

}
/// @nodoc
class __$GeneraModelCopyWithImpl<$Res>
    implements _$GeneraModelCopyWith<$Res> {
  __$GeneraModelCopyWithImpl(this._self, this._then);

  final _GeneraModel _self;
  final $Res Function(_GeneraModel) _then;

/// Create a copy of GeneraModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? genus = null,Object? language = null,}) {
  return _then(_GeneraModel(
genus: null == genus ? _self.genus : genus // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as LanguageModel,
  ));
}

/// Create a copy of GeneraModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<$Res> get language {
  
  return $LanguageModelCopyWith<$Res>(_self.language, (value) {
    return _then(_self.copyWith(language: value));
  });
}
}


/// @nodoc
mixin _$LanguageModel {

 String get name;
/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageModelCopyWith<LanguageModel> get copyWith => _$LanguageModelCopyWithImpl<LanguageModel>(this as LanguageModel, _$identity);

  /// Serializes this LanguageModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $LanguageModelCopyWith<$Res>  {
  factory $LanguageModelCopyWith(LanguageModel value, $Res Function(LanguageModel) _then) = _$LanguageModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$LanguageModelCopyWithImpl<$Res>
    implements $LanguageModelCopyWith<$Res> {
  _$LanguageModelCopyWithImpl(this._self, this._then);

  final LanguageModel _self;
  final $Res Function(LanguageModel) _then;

/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LanguageModel].
extension LanguageModelPatterns on LanguageModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageModel value)  $default,){
final _that = this;
switch (_that) {
case _LanguageModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageModel value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageModel() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _LanguageModel():
return $default(_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _LanguageModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LanguageModel implements LanguageModel {
  const _LanguageModel({required this.name});
  factory _LanguageModel.fromJson(Map<String, dynamic> json) => _$LanguageModelFromJson(json);

@override final  String name;

/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageModelCopyWith<_LanguageModel> get copyWith => __$LanguageModelCopyWithImpl<_LanguageModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'LanguageModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$LanguageModelCopyWith<$Res> implements $LanguageModelCopyWith<$Res> {
  factory _$LanguageModelCopyWith(_LanguageModel value, $Res Function(_LanguageModel) _then) = __$LanguageModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$LanguageModelCopyWithImpl<$Res>
    implements _$LanguageModelCopyWith<$Res> {
  __$LanguageModelCopyWithImpl(this._self, this._then);

  final _LanguageModel _self;
  final $Res Function(_LanguageModel) _then;

/// Create a copy of LanguageModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_LanguageModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonTypeModel {

 int get slot; TypeInfoModel get type;
/// Create a copy of PokemonTypeModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonTypeModelCopyWith<PokemonTypeModel> get copyWith => _$PokemonTypeModelCopyWithImpl<PokemonTypeModel>(this as PokemonTypeModel, _$identity);

  /// Serializes this PokemonTypeModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonTypeModel&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonTypeModel(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class $PokemonTypeModelCopyWith<$Res>  {
  factory $PokemonTypeModelCopyWith(PokemonTypeModel value, $Res Function(PokemonTypeModel) _then) = _$PokemonTypeModelCopyWithImpl;
@useResult
$Res call({
 int slot, TypeInfoModel type
});


$TypeInfoModelCopyWith<$Res> get type;

}
/// @nodoc
class _$PokemonTypeModelCopyWithImpl<$Res>
    implements $PokemonTypeModelCopyWith<$Res> {
  _$PokemonTypeModelCopyWithImpl(this._self, this._then);

  final PokemonTypeModel _self;
  final $Res Function(PokemonTypeModel) _then;

/// Create a copy of PokemonTypeModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_self.copyWith(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeInfoModel,
  ));
}
/// Create a copy of PokemonTypeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeInfoModelCopyWith<$Res> get type {
  
  return $TypeInfoModelCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonTypeModel].
extension PokemonTypeModelPatterns on PokemonTypeModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonTypeModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonTypeModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonTypeModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonTypeModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonTypeModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int slot,  TypeInfoModel type)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonTypeModel() when $default != null:
return $default(_that.slot,_that.type);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int slot,  TypeInfoModel type)  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeModel():
return $default(_that.slot,_that.type);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int slot,  TypeInfoModel type)?  $default,) {final _that = this;
switch (_that) {
case _PokemonTypeModel() when $default != null:
return $default(_that.slot,_that.type);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonTypeModel implements PokemonTypeModel {
  const _PokemonTypeModel({required this.slot, required this.type});
  factory _PokemonTypeModel.fromJson(Map<String, dynamic> json) => _$PokemonTypeModelFromJson(json);

@override final  int slot;
@override final  TypeInfoModel type;

/// Create a copy of PokemonTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonTypeModelCopyWith<_PokemonTypeModel> get copyWith => __$PokemonTypeModelCopyWithImpl<_PokemonTypeModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonTypeModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonTypeModel&&(identical(other.slot, slot) || other.slot == slot)&&(identical(other.type, type) || other.type == type));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slot,type);

@override
String toString() {
  return 'PokemonTypeModel(slot: $slot, type: $type)';
}


}

/// @nodoc
abstract mixin class _$PokemonTypeModelCopyWith<$Res> implements $PokemonTypeModelCopyWith<$Res> {
  factory _$PokemonTypeModelCopyWith(_PokemonTypeModel value, $Res Function(_PokemonTypeModel) _then) = __$PokemonTypeModelCopyWithImpl;
@override @useResult
$Res call({
 int slot, TypeInfoModel type
});


@override $TypeInfoModelCopyWith<$Res> get type;

}
/// @nodoc
class __$PokemonTypeModelCopyWithImpl<$Res>
    implements _$PokemonTypeModelCopyWith<$Res> {
  __$PokemonTypeModelCopyWithImpl(this._self, this._then);

  final _PokemonTypeModel _self;
  final $Res Function(_PokemonTypeModel) _then;

/// Create a copy of PokemonTypeModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slot = null,Object? type = null,}) {
  return _then(_PokemonTypeModel(
slot: null == slot ? _self.slot : slot // ignore: cast_nullable_to_non_nullable
as int,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as TypeInfoModel,
  ));
}

/// Create a copy of PokemonTypeModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TypeInfoModelCopyWith<$Res> get type {
  
  return $TypeInfoModelCopyWith<$Res>(_self.type, (value) {
    return _then(_self.copyWith(type: value));
  });
}
}


/// @nodoc
mixin _$PokemonAbilitiesModel {

 AbilityModel get ability;
/// Create a copy of PokemonAbilitiesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonAbilitiesModelCopyWith<PokemonAbilitiesModel> get copyWith => _$PokemonAbilitiesModelCopyWithImpl<PokemonAbilitiesModel>(this as PokemonAbilitiesModel, _$identity);

  /// Serializes this PokemonAbilitiesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonAbilitiesModel&&(identical(other.ability, ability) || other.ability == ability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability);

@override
String toString() {
  return 'PokemonAbilitiesModel(ability: $ability)';
}


}

/// @nodoc
abstract mixin class $PokemonAbilitiesModelCopyWith<$Res>  {
  factory $PokemonAbilitiesModelCopyWith(PokemonAbilitiesModel value, $Res Function(PokemonAbilitiesModel) _then) = _$PokemonAbilitiesModelCopyWithImpl;
@useResult
$Res call({
 AbilityModel ability
});


$AbilityModelCopyWith<$Res> get ability;

}
/// @nodoc
class _$PokemonAbilitiesModelCopyWithImpl<$Res>
    implements $PokemonAbilitiesModelCopyWith<$Res> {
  _$PokemonAbilitiesModelCopyWithImpl(this._self, this._then);

  final PokemonAbilitiesModel _self;
  final $Res Function(PokemonAbilitiesModel) _then;

/// Create a copy of PokemonAbilitiesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? ability = null,}) {
  return _then(_self.copyWith(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityModel,
  ));
}
/// Create a copy of PokemonAbilitiesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityModelCopyWith<$Res> get ability {
  
  return $AbilityModelCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonAbilitiesModel].
extension PokemonAbilitiesModelPatterns on PokemonAbilitiesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonAbilitiesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonAbilitiesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonAbilitiesModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilitiesModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonAbilitiesModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonAbilitiesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( AbilityModel ability)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonAbilitiesModel() when $default != null:
return $default(_that.ability);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( AbilityModel ability)  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilitiesModel():
return $default(_that.ability);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( AbilityModel ability)?  $default,) {final _that = this;
switch (_that) {
case _PokemonAbilitiesModel() when $default != null:
return $default(_that.ability);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonAbilitiesModel implements PokemonAbilitiesModel {
  const _PokemonAbilitiesModel({required this.ability});
  factory _PokemonAbilitiesModel.fromJson(Map<String, dynamic> json) => _$PokemonAbilitiesModelFromJson(json);

@override final  AbilityModel ability;

/// Create a copy of PokemonAbilitiesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonAbilitiesModelCopyWith<_PokemonAbilitiesModel> get copyWith => __$PokemonAbilitiesModelCopyWithImpl<_PokemonAbilitiesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonAbilitiesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonAbilitiesModel&&(identical(other.ability, ability) || other.ability == ability));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,ability);

@override
String toString() {
  return 'PokemonAbilitiesModel(ability: $ability)';
}


}

/// @nodoc
abstract mixin class _$PokemonAbilitiesModelCopyWith<$Res> implements $PokemonAbilitiesModelCopyWith<$Res> {
  factory _$PokemonAbilitiesModelCopyWith(_PokemonAbilitiesModel value, $Res Function(_PokemonAbilitiesModel) _then) = __$PokemonAbilitiesModelCopyWithImpl;
@override @useResult
$Res call({
 AbilityModel ability
});


@override $AbilityModelCopyWith<$Res> get ability;

}
/// @nodoc
class __$PokemonAbilitiesModelCopyWithImpl<$Res>
    implements _$PokemonAbilitiesModelCopyWith<$Res> {
  __$PokemonAbilitiesModelCopyWithImpl(this._self, this._then);

  final _PokemonAbilitiesModel _self;
  final $Res Function(_PokemonAbilitiesModel) _then;

/// Create a copy of PokemonAbilitiesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? ability = null,}) {
  return _then(_PokemonAbilitiesModel(
ability: null == ability ? _self.ability : ability // ignore: cast_nullable_to_non_nullable
as AbilityModel,
  ));
}

/// Create a copy of PokemonAbilitiesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AbilityModelCopyWith<$Res> get ability {
  
  return $AbilityModelCopyWith<$Res>(_self.ability, (value) {
    return _then(_self.copyWith(ability: value));
  });
}
}


/// @nodoc
mixin _$AbilityModel {

 String get name;
/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AbilityModelCopyWith<AbilityModel> get copyWith => _$AbilityModelCopyWithImpl<AbilityModel>(this as AbilityModel, _$identity);

  /// Serializes this AbilityModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AbilityModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AbilityModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $AbilityModelCopyWith<$Res>  {
  factory $AbilityModelCopyWith(AbilityModel value, $Res Function(AbilityModel) _then) = _$AbilityModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$AbilityModelCopyWithImpl<$Res>
    implements $AbilityModelCopyWith<$Res> {
  _$AbilityModelCopyWithImpl(this._self, this._then);

  final AbilityModel _self;
  final $Res Function(AbilityModel) _then;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AbilityModel].
extension AbilityModelPatterns on AbilityModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AbilityModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AbilityModel value)  $default,){
final _that = this;
switch (_that) {
case _AbilityModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AbilityModel value)?  $default,){
final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _AbilityModel():
return $default(_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _AbilityModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AbilityModel implements AbilityModel {
  const _AbilityModel({required this.name});
  factory _AbilityModel.fromJson(Map<String, dynamic> json) => _$AbilityModelFromJson(json);

@override final  String name;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AbilityModelCopyWith<_AbilityModel> get copyWith => __$AbilityModelCopyWithImpl<_AbilityModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AbilityModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AbilityModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'AbilityModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$AbilityModelCopyWith<$Res> implements $AbilityModelCopyWith<$Res> {
  factory _$AbilityModelCopyWith(_AbilityModel value, $Res Function(_AbilityModel) _then) = __$AbilityModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$AbilityModelCopyWithImpl<$Res>
    implements _$AbilityModelCopyWith<$Res> {
  __$AbilityModelCopyWithImpl(this._self, this._then);

  final _AbilityModel _self;
  final $Res Function(_AbilityModel) _then;

/// Create a copy of AbilityModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_AbilityModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$TypeInfoModel {

 String get name;
/// Create a copy of TypeInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TypeInfoModelCopyWith<TypeInfoModel> get copyWith => _$TypeInfoModelCopyWithImpl<TypeInfoModel>(this as TypeInfoModel, _$identity);

  /// Serializes this TypeInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TypeInfoModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TypeInfoModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $TypeInfoModelCopyWith<$Res>  {
  factory $TypeInfoModelCopyWith(TypeInfoModel value, $Res Function(TypeInfoModel) _then) = _$TypeInfoModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$TypeInfoModelCopyWithImpl<$Res>
    implements $TypeInfoModelCopyWith<$Res> {
  _$TypeInfoModelCopyWithImpl(this._self, this._then);

  final TypeInfoModel _self;
  final $Res Function(TypeInfoModel) _then;

/// Create a copy of TypeInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TypeInfoModel].
extension TypeInfoModelPatterns on TypeInfoModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TypeInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TypeInfoModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TypeInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _TypeInfoModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TypeInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _TypeInfoModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TypeInfoModel() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _TypeInfoModel():
return $default(_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _TypeInfoModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TypeInfoModel implements TypeInfoModel {
  const _TypeInfoModel({required this.name});
  factory _TypeInfoModel.fromJson(Map<String, dynamic> json) => _$TypeInfoModelFromJson(json);

@override final  String name;

/// Create a copy of TypeInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TypeInfoModelCopyWith<_TypeInfoModel> get copyWith => __$TypeInfoModelCopyWithImpl<_TypeInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TypeInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TypeInfoModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'TypeInfoModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$TypeInfoModelCopyWith<$Res> implements $TypeInfoModelCopyWith<$Res> {
  factory _$TypeInfoModelCopyWith(_TypeInfoModel value, $Res Function(_TypeInfoModel) _then) = __$TypeInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$TypeInfoModelCopyWithImpl<$Res>
    implements _$TypeInfoModelCopyWith<$Res> {
  __$TypeInfoModelCopyWithImpl(this._self, this._then);

  final _TypeInfoModel _self;
  final $Res Function(_TypeInfoModel) _then;

/// Create a copy of TypeInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_TypeInfoModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonStatModel {

@JsonKey(name: 'base_stat') int get baseStat; StatInfoModel get stat;
/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonStatModelCopyWith<PokemonStatModel> get copyWith => _$PokemonStatModelCopyWithImpl<PokemonStatModel>(this as PokemonStatModel, _$identity);

  /// Serializes this PokemonStatModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonStatModel&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,stat);

@override
String toString() {
  return 'PokemonStatModel(baseStat: $baseStat, stat: $stat)';
}


}

/// @nodoc
abstract mixin class $PokemonStatModelCopyWith<$Res>  {
  factory $PokemonStatModelCopyWith(PokemonStatModel value, $Res Function(PokemonStatModel) _then) = _$PokemonStatModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, StatInfoModel stat
});


$StatInfoModelCopyWith<$Res> get stat;

}
/// @nodoc
class _$PokemonStatModelCopyWithImpl<$Res>
    implements $PokemonStatModelCopyWith<$Res> {
  _$PokemonStatModelCopyWithImpl(this._self, this._then);

  final PokemonStatModel _self;
  final $Res Function(PokemonStatModel) _then;

/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? baseStat = null,Object? stat = null,}) {
  return _then(_self.copyWith(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatInfoModel,
  ));
}
/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatInfoModelCopyWith<$Res> get stat {
  
  return $StatInfoModelCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonStatModel].
extension PokemonStatModelPatterns on PokemonStatModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonStatModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonStatModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonStatModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonStatModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  StatInfoModel stat)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
return $default(_that.baseStat,_that.stat);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'base_stat')  int baseStat,  StatInfoModel stat)  $default,) {final _that = this;
switch (_that) {
case _PokemonStatModel():
return $default(_that.baseStat,_that.stat);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'base_stat')  int baseStat,  StatInfoModel stat)?  $default,) {final _that = this;
switch (_that) {
case _PokemonStatModel() when $default != null:
return $default(_that.baseStat,_that.stat);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonStatModel implements PokemonStatModel {
  const _PokemonStatModel({@JsonKey(name: 'base_stat') required this.baseStat, required this.stat});
  factory _PokemonStatModel.fromJson(Map<String, dynamic> json) => _$PokemonStatModelFromJson(json);

@override@JsonKey(name: 'base_stat') final  int baseStat;
@override final  StatInfoModel stat;

/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonStatModelCopyWith<_PokemonStatModel> get copyWith => __$PokemonStatModelCopyWithImpl<_PokemonStatModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonStatModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonStatModel&&(identical(other.baseStat, baseStat) || other.baseStat == baseStat)&&(identical(other.stat, stat) || other.stat == stat));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,baseStat,stat);

@override
String toString() {
  return 'PokemonStatModel(baseStat: $baseStat, stat: $stat)';
}


}

/// @nodoc
abstract mixin class _$PokemonStatModelCopyWith<$Res> implements $PokemonStatModelCopyWith<$Res> {
  factory _$PokemonStatModelCopyWith(_PokemonStatModel value, $Res Function(_PokemonStatModel) _then) = __$PokemonStatModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'base_stat') int baseStat, StatInfoModel stat
});


@override $StatInfoModelCopyWith<$Res> get stat;

}
/// @nodoc
class __$PokemonStatModelCopyWithImpl<$Res>
    implements _$PokemonStatModelCopyWith<$Res> {
  __$PokemonStatModelCopyWithImpl(this._self, this._then);

  final _PokemonStatModel _self;
  final $Res Function(_PokemonStatModel) _then;

/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? baseStat = null,Object? stat = null,}) {
  return _then(_PokemonStatModel(
baseStat: null == baseStat ? _self.baseStat : baseStat // ignore: cast_nullable_to_non_nullable
as int,stat: null == stat ? _self.stat : stat // ignore: cast_nullable_to_non_nullable
as StatInfoModel,
  ));
}

/// Create a copy of PokemonStatModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$StatInfoModelCopyWith<$Res> get stat {
  
  return $StatInfoModelCopyWith<$Res>(_self.stat, (value) {
    return _then(_self.copyWith(stat: value));
  });
}
}


/// @nodoc
mixin _$StatInfoModel {

 String get name;
/// Create a copy of StatInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$StatInfoModelCopyWith<StatInfoModel> get copyWith => _$StatInfoModelCopyWithImpl<StatInfoModel>(this as StatInfoModel, _$identity);

  /// Serializes this StatInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StatInfoModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'StatInfoModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $StatInfoModelCopyWith<$Res>  {
  factory $StatInfoModelCopyWith(StatInfoModel value, $Res Function(StatInfoModel) _then) = _$StatInfoModelCopyWithImpl;
@useResult
$Res call({
 String name
});




}
/// @nodoc
class _$StatInfoModelCopyWithImpl<$Res>
    implements $StatInfoModelCopyWith<$Res> {
  _$StatInfoModelCopyWithImpl(this._self, this._then);

  final StatInfoModel _self;
  final $Res Function(StatInfoModel) _then;

/// Create a copy of StatInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [StatInfoModel].
extension StatInfoModelPatterns on StatInfoModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _StatInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _StatInfoModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _StatInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _StatInfoModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _StatInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _StatInfoModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _StatInfoModel() when $default != null:
return $default(_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name)  $default,) {final _that = this;
switch (_that) {
case _StatInfoModel():
return $default(_that.name);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name)?  $default,) {final _that = this;
switch (_that) {
case _StatInfoModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _StatInfoModel implements StatInfoModel {
  const _StatInfoModel({required this.name});
  factory _StatInfoModel.fromJson(Map<String, dynamic> json) => _$StatInfoModelFromJson(json);

@override final  String name;

/// Create a copy of StatInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$StatInfoModelCopyWith<_StatInfoModel> get copyWith => __$StatInfoModelCopyWithImpl<_StatInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$StatInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _StatInfoModel&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'StatInfoModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$StatInfoModelCopyWith<$Res> implements $StatInfoModelCopyWith<$Res> {
  factory _$StatInfoModelCopyWith(_StatInfoModel value, $Res Function(_StatInfoModel) _then) = __$StatInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String name
});




}
/// @nodoc
class __$StatInfoModelCopyWithImpl<$Res>
    implements _$StatInfoModelCopyWith<$Res> {
  __$StatInfoModelCopyWithImpl(this._self, this._then);

  final _StatInfoModel _self;
  final $Res Function(_StatInfoModel) _then;

/// Create a copy of StatInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,}) {
  return _then(_StatInfoModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$PokemonSpritesModel {

@JsonKey(name: 'front_default') String? get frontDefault; PokemonSpritesOtherModel? get other;
/// Create a copy of PokemonSpritesModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpritesModelCopyWith<PokemonSpritesModel> get copyWith => _$PokemonSpritesModelCopyWithImpl<PokemonSpritesModel>(this as PokemonSpritesModel, _$identity);

  /// Serializes this PokemonSpritesModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpritesModel&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,other);

@override
String toString() {
  return 'PokemonSpritesModel(frontDefault: $frontDefault, other: $other)';
}


}

/// @nodoc
abstract mixin class $PokemonSpritesModelCopyWith<$Res>  {
  factory $PokemonSpritesModelCopyWith(PokemonSpritesModel value, $Res Function(PokemonSpritesModel) _then) = _$PokemonSpritesModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault, PokemonSpritesOtherModel? other
});


$PokemonSpritesOtherModelCopyWith<$Res>? get other;

}
/// @nodoc
class _$PokemonSpritesModelCopyWithImpl<$Res>
    implements $PokemonSpritesModelCopyWith<$Res> {
  _$PokemonSpritesModelCopyWithImpl(this._self, this._then);

  final PokemonSpritesModel _self;
  final $Res Function(PokemonSpritesModel) _then;

/// Create a copy of PokemonSpritesModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,Object? other = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as PokemonSpritesOtherModel?,
  ));
}
/// Create a copy of PokemonSpritesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesOtherModelCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $PokemonSpritesOtherModelCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonSpritesModel].
extension PokemonSpritesModelPatterns on PokemonSpritesModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpritesModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpritesModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpritesModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpritesModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpritesModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpritesModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault,  PokemonSpritesOtherModel? other)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpritesModel() when $default != null:
return $default(_that.frontDefault,_that.other);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault,  PokemonSpritesOtherModel? other)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpritesModel():
return $default(_that.frontDefault,_that.other);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'front_default')  String? frontDefault,  PokemonSpritesOtherModel? other)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpritesModel() when $default != null:
return $default(_that.frontDefault,_that.other);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSpritesModel implements PokemonSpritesModel {
  const _PokemonSpritesModel({@JsonKey(name: 'front_default') this.frontDefault, this.other});
  factory _PokemonSpritesModel.fromJson(Map<String, dynamic> json) => _$PokemonSpritesModelFromJson(json);

@override@JsonKey(name: 'front_default') final  String? frontDefault;
@override final  PokemonSpritesOtherModel? other;

/// Create a copy of PokemonSpritesModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpritesModelCopyWith<_PokemonSpritesModel> get copyWith => __$PokemonSpritesModelCopyWithImpl<_PokemonSpritesModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpritesModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpritesModel&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault)&&(identical(other.other, this.other) || other.other == this.other));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault,other);

@override
String toString() {
  return 'PokemonSpritesModel(frontDefault: $frontDefault, other: $other)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpritesModelCopyWith<$Res> implements $PokemonSpritesModelCopyWith<$Res> {
  factory _$PokemonSpritesModelCopyWith(_PokemonSpritesModel value, $Res Function(_PokemonSpritesModel) _then) = __$PokemonSpritesModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault, PokemonSpritesOtherModel? other
});


@override $PokemonSpritesOtherModelCopyWith<$Res>? get other;

}
/// @nodoc
class __$PokemonSpritesModelCopyWithImpl<$Res>
    implements _$PokemonSpritesModelCopyWith<$Res> {
  __$PokemonSpritesModelCopyWithImpl(this._self, this._then);

  final _PokemonSpritesModel _self;
  final $Res Function(_PokemonSpritesModel) _then;

/// Create a copy of PokemonSpritesModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,Object? other = freezed,}) {
  return _then(_PokemonSpritesModel(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,other: freezed == other ? _self.other : other // ignore: cast_nullable_to_non_nullable
as PokemonSpritesOtherModel?,
  ));
}

/// Create a copy of PokemonSpritesModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PokemonSpritesOtherModelCopyWith<$Res>? get other {
    if (_self.other == null) {
    return null;
  }

  return $PokemonSpritesOtherModelCopyWith<$Res>(_self.other!, (value) {
    return _then(_self.copyWith(other: value));
  });
}
}


/// @nodoc
mixin _$PokemonSpritesOtherModel {

@JsonKey(name: 'official-artwork') OfficialArtworkModel? get officialArtwork;
/// Create a copy of PokemonSpritesOtherModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PokemonSpritesOtherModelCopyWith<PokemonSpritesOtherModel> get copyWith => _$PokemonSpritesOtherModelCopyWithImpl<PokemonSpritesOtherModel>(this as PokemonSpritesOtherModel, _$identity);

  /// Serializes this PokemonSpritesOtherModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PokemonSpritesOtherModel&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'PokemonSpritesOtherModel(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class $PokemonSpritesOtherModelCopyWith<$Res>  {
  factory $PokemonSpritesOtherModelCopyWith(PokemonSpritesOtherModel value, $Res Function(PokemonSpritesOtherModel) _then) = _$PokemonSpritesOtherModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'official-artwork') OfficialArtworkModel? officialArtwork
});


$OfficialArtworkModelCopyWith<$Res>? get officialArtwork;

}
/// @nodoc
class _$PokemonSpritesOtherModelCopyWithImpl<$Res>
    implements $PokemonSpritesOtherModelCopyWith<$Res> {
  _$PokemonSpritesOtherModelCopyWithImpl(this._self, this._then);

  final PokemonSpritesOtherModel _self;
  final $Res Function(PokemonSpritesOtherModel) _then;

/// Create a copy of PokemonSpritesOtherModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? officialArtwork = freezed,}) {
  return _then(_self.copyWith(
officialArtwork: freezed == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as OfficialArtworkModel?,
  ));
}
/// Create a copy of PokemonSpritesOtherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfficialArtworkModelCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
    return null;
  }

  return $OfficialArtworkModelCopyWith<$Res>(_self.officialArtwork!, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// Adds pattern-matching-related methods to [PokemonSpritesOtherModel].
extension PokemonSpritesOtherModelPatterns on PokemonSpritesOtherModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PokemonSpritesOtherModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PokemonSpritesOtherModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PokemonSpritesOtherModel value)  $default,){
final _that = this;
switch (_that) {
case _PokemonSpritesOtherModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PokemonSpritesOtherModel value)?  $default,){
final _that = this;
switch (_that) {
case _PokemonSpritesOtherModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'official-artwork')  OfficialArtworkModel? officialArtwork)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PokemonSpritesOtherModel() when $default != null:
return $default(_that.officialArtwork);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'official-artwork')  OfficialArtworkModel? officialArtwork)  $default,) {final _that = this;
switch (_that) {
case _PokemonSpritesOtherModel():
return $default(_that.officialArtwork);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'official-artwork')  OfficialArtworkModel? officialArtwork)?  $default,) {final _that = this;
switch (_that) {
case _PokemonSpritesOtherModel() when $default != null:
return $default(_that.officialArtwork);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PokemonSpritesOtherModel implements PokemonSpritesOtherModel {
  const _PokemonSpritesOtherModel({@JsonKey(name: 'official-artwork') this.officialArtwork});
  factory _PokemonSpritesOtherModel.fromJson(Map<String, dynamic> json) => _$PokemonSpritesOtherModelFromJson(json);

@override@JsonKey(name: 'official-artwork') final  OfficialArtworkModel? officialArtwork;

/// Create a copy of PokemonSpritesOtherModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PokemonSpritesOtherModelCopyWith<_PokemonSpritesOtherModel> get copyWith => __$PokemonSpritesOtherModelCopyWithImpl<_PokemonSpritesOtherModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PokemonSpritesOtherModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PokemonSpritesOtherModel&&(identical(other.officialArtwork, officialArtwork) || other.officialArtwork == officialArtwork));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,officialArtwork);

@override
String toString() {
  return 'PokemonSpritesOtherModel(officialArtwork: $officialArtwork)';
}


}

/// @nodoc
abstract mixin class _$PokemonSpritesOtherModelCopyWith<$Res> implements $PokemonSpritesOtherModelCopyWith<$Res> {
  factory _$PokemonSpritesOtherModelCopyWith(_PokemonSpritesOtherModel value, $Res Function(_PokemonSpritesOtherModel) _then) = __$PokemonSpritesOtherModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'official-artwork') OfficialArtworkModel? officialArtwork
});


@override $OfficialArtworkModelCopyWith<$Res>? get officialArtwork;

}
/// @nodoc
class __$PokemonSpritesOtherModelCopyWithImpl<$Res>
    implements _$PokemonSpritesOtherModelCopyWith<$Res> {
  __$PokemonSpritesOtherModelCopyWithImpl(this._self, this._then);

  final _PokemonSpritesOtherModel _self;
  final $Res Function(_PokemonSpritesOtherModel) _then;

/// Create a copy of PokemonSpritesOtherModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? officialArtwork = freezed,}) {
  return _then(_PokemonSpritesOtherModel(
officialArtwork: freezed == officialArtwork ? _self.officialArtwork : officialArtwork // ignore: cast_nullable_to_non_nullable
as OfficialArtworkModel?,
  ));
}

/// Create a copy of PokemonSpritesOtherModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$OfficialArtworkModelCopyWith<$Res>? get officialArtwork {
    if (_self.officialArtwork == null) {
    return null;
  }

  return $OfficialArtworkModelCopyWith<$Res>(_self.officialArtwork!, (value) {
    return _then(_self.copyWith(officialArtwork: value));
  });
}
}


/// @nodoc
mixin _$OfficialArtworkModel {

@JsonKey(name: 'front_default') String? get frontDefault;
/// Create a copy of OfficialArtworkModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OfficialArtworkModelCopyWith<OfficialArtworkModel> get copyWith => _$OfficialArtworkModelCopyWithImpl<OfficialArtworkModel>(this as OfficialArtworkModel, _$identity);

  /// Serializes this OfficialArtworkModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OfficialArtworkModel&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'OfficialArtworkModel(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class $OfficialArtworkModelCopyWith<$Res>  {
  factory $OfficialArtworkModelCopyWith(OfficialArtworkModel value, $Res Function(OfficialArtworkModel) _then) = _$OfficialArtworkModelCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault
});




}
/// @nodoc
class _$OfficialArtworkModelCopyWithImpl<$Res>
    implements $OfficialArtworkModelCopyWith<$Res> {
  _$OfficialArtworkModelCopyWithImpl(this._self, this._then);

  final OfficialArtworkModel _self;
  final $Res Function(OfficialArtworkModel) _then;

/// Create a copy of OfficialArtworkModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? frontDefault = freezed,}) {
  return _then(_self.copyWith(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [OfficialArtworkModel].
extension OfficialArtworkModelPatterns on OfficialArtworkModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OfficialArtworkModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OfficialArtworkModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OfficialArtworkModel value)  $default,){
final _that = this;
switch (_that) {
case _OfficialArtworkModel():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OfficialArtworkModel value)?  $default,){
final _that = this;
switch (_that) {
case _OfficialArtworkModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OfficialArtworkModel() when $default != null:
return $default(_that.frontDefault);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'front_default')  String? frontDefault)  $default,) {final _that = this;
switch (_that) {
case _OfficialArtworkModel():
return $default(_that.frontDefault);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'front_default')  String? frontDefault)?  $default,) {final _that = this;
switch (_that) {
case _OfficialArtworkModel() when $default != null:
return $default(_that.frontDefault);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OfficialArtworkModel implements OfficialArtworkModel {
  const _OfficialArtworkModel({@JsonKey(name: 'front_default') this.frontDefault});
  factory _OfficialArtworkModel.fromJson(Map<String, dynamic> json) => _$OfficialArtworkModelFromJson(json);

@override@JsonKey(name: 'front_default') final  String? frontDefault;

/// Create a copy of OfficialArtworkModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OfficialArtworkModelCopyWith<_OfficialArtworkModel> get copyWith => __$OfficialArtworkModelCopyWithImpl<_OfficialArtworkModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OfficialArtworkModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OfficialArtworkModel&&(identical(other.frontDefault, frontDefault) || other.frontDefault == frontDefault));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,frontDefault);

@override
String toString() {
  return 'OfficialArtworkModel(frontDefault: $frontDefault)';
}


}

/// @nodoc
abstract mixin class _$OfficialArtworkModelCopyWith<$Res> implements $OfficialArtworkModelCopyWith<$Res> {
  factory _$OfficialArtworkModelCopyWith(_OfficialArtworkModel value, $Res Function(_OfficialArtworkModel) _then) = __$OfficialArtworkModelCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'front_default') String? frontDefault
});




}
/// @nodoc
class __$OfficialArtworkModelCopyWithImpl<$Res>
    implements _$OfficialArtworkModelCopyWith<$Res> {
  __$OfficialArtworkModelCopyWithImpl(this._self, this._then);

  final _OfficialArtworkModel _self;
  final $Res Function(_OfficialArtworkModel) _then;

/// Create a copy of OfficialArtworkModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? frontDefault = freezed,}) {
  return _then(_OfficialArtworkModel(
frontDefault: freezed == frontDefault ? _self.frontDefault : frontDefault // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
