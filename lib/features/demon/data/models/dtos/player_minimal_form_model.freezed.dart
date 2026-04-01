// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_minimal_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PlayerMinimalFormModel {

 int get id; String get name; bool get banned;
/// Create a copy of PlayerMinimalFormModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PlayerMinimalFormModelCopyWith<PlayerMinimalFormModel> get copyWith => _$PlayerMinimalFormModelCopyWithImpl<PlayerMinimalFormModel>(this as PlayerMinimalFormModel, _$identity);

  /// Serializes this PlayerMinimalFormModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PlayerMinimalFormModel&&super == other&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.banned, banned) || other.banned == banned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,id,name,banned);



}

/// @nodoc
abstract mixin class $PlayerMinimalFormModelCopyWith<$Res>  {
  factory $PlayerMinimalFormModelCopyWith(PlayerMinimalFormModel value, $Res Function(PlayerMinimalFormModel) _then) = _$PlayerMinimalFormModelCopyWithImpl;
@useResult
$Res call({
 int id, String name, bool banned
});




}
/// @nodoc
class _$PlayerMinimalFormModelCopyWithImpl<$Res>
    implements $PlayerMinimalFormModelCopyWith<$Res> {
  _$PlayerMinimalFormModelCopyWithImpl(this._self, this._then);

  final PlayerMinimalFormModel _self;
  final $Res Function(PlayerMinimalFormModel) _then;

/// Create a copy of PlayerMinimalFormModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? banned = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,banned: null == banned ? _self.banned : banned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PlayerMinimalFormModel].
extension PlayerMinimalFormModelPatterns on PlayerMinimalFormModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PlayerMinimalFormModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PlayerMinimalFormModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PlayerMinimalFormModel value)  $default,){
final _that = this;
switch (_that) {
case _PlayerMinimalFormModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PlayerMinimalFormModel value)?  $default,){
final _that = this;
switch (_that) {
case _PlayerMinimalFormModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  bool banned)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PlayerMinimalFormModel() when $default != null:
return $default(_that.id,_that.name,_that.banned);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  bool banned)  $default,) {final _that = this;
switch (_that) {
case _PlayerMinimalFormModel():
return $default(_that.id,_that.name,_that.banned);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  bool banned)?  $default,) {final _that = this;
switch (_that) {
case _PlayerMinimalFormModel() when $default != null:
return $default(_that.id,_that.name,_that.banned);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PlayerMinimalFormModel extends PlayerMinimalFormModel {
  const _PlayerMinimalFormModel({required this.id, required this.name, required this.banned}): super._();
  factory _PlayerMinimalFormModel.fromJson(Map<String, dynamic> json) => _$PlayerMinimalFormModelFromJson(json);

@override final  int id;
@override final  String name;
@override final  bool banned;

/// Create a copy of PlayerMinimalFormModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PlayerMinimalFormModelCopyWith<_PlayerMinimalFormModel> get copyWith => __$PlayerMinimalFormModelCopyWithImpl<_PlayerMinimalFormModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PlayerMinimalFormModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PlayerMinimalFormModel&&super == other&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.banned, banned) || other.banned == banned));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,super.hashCode,id,name,banned);



}

/// @nodoc
abstract mixin class _$PlayerMinimalFormModelCopyWith<$Res> implements $PlayerMinimalFormModelCopyWith<$Res> {
  factory _$PlayerMinimalFormModelCopyWith(_PlayerMinimalFormModel value, $Res Function(_PlayerMinimalFormModel) _then) = __$PlayerMinimalFormModelCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, bool banned
});




}
/// @nodoc
class __$PlayerMinimalFormModelCopyWithImpl<$Res>
    implements _$PlayerMinimalFormModelCopyWith<$Res> {
  __$PlayerMinimalFormModelCopyWithImpl(this._self, this._then);

  final _PlayerMinimalFormModel _self;
  final $Res Function(_PlayerMinimalFormModel) _then;

/// Create a copy of PlayerMinimalFormModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? banned = null,}) {
  return _then(_PlayerMinimalFormModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,banned: null == banned ? _self.banned : banned // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
