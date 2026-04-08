// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'demon_listed_form_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DemonListedFormModel {

 String get name; int get id; PlayerMinimalFormModel get publisher; PlayerMinimalFormModel get verifier; String get thumbnail; int? get position; String? get video; int? get levelId;
/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DemonListedFormModelCopyWith<DemonListedFormModel> get copyWith => _$DemonListedFormModelCopyWithImpl<DemonListedFormModel>(this as DemonListedFormModel, _$identity);

  /// Serializes this DemonListedFormModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DemonListedFormModel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.verifier, verifier) || other.verifier == verifier)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.position, position) || other.position == position)&&(identical(other.video, video) || other.video == video)&&(identical(other.levelId, levelId) || other.levelId == levelId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,publisher,verifier,thumbnail,position,video,levelId);

@override
String toString() {
  return 'DemonListedFormModel(name: $name, id: $id, publisher: $publisher, verifier: $verifier, thumbnail: $thumbnail, position: $position, video: $video, levelId: $levelId)';
}


}

/// @nodoc
abstract mixin class $DemonListedFormModelCopyWith<$Res>  {
  factory $DemonListedFormModelCopyWith(DemonListedFormModel value, $Res Function(DemonListedFormModel) _then) = _$DemonListedFormModelCopyWithImpl;
@useResult
$Res call({
 String name, int id, PlayerMinimalFormModel publisher, PlayerMinimalFormModel verifier, String thumbnail, int? position, String? video, int? levelId
});


$PlayerMinimalFormModelCopyWith<$Res> get publisher;$PlayerMinimalFormModelCopyWith<$Res> get verifier;

}
/// @nodoc
class _$DemonListedFormModelCopyWithImpl<$Res>
    implements $DemonListedFormModelCopyWith<$Res> {
  _$DemonListedFormModelCopyWithImpl(this._self, this._then);

  final DemonListedFormModel _self;
  final $Res Function(DemonListedFormModel) _then;

/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? id = null,Object? publisher = null,Object? verifier = null,Object? thumbnail = null,Object? position = freezed,Object? video = freezed,Object? levelId = freezed,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as PlayerMinimalFormModel,verifier: null == verifier ? _self.verifier : verifier // ignore: cast_nullable_to_non_nullable
as PlayerMinimalFormModel,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}
/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerMinimalFormModelCopyWith<$Res> get publisher {
  
  return $PlayerMinimalFormModelCopyWith<$Res>(_self.publisher, (value) {
    return _then(_self.copyWith(publisher: value));
  });
}/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerMinimalFormModelCopyWith<$Res> get verifier {
  
  return $PlayerMinimalFormModelCopyWith<$Res>(_self.verifier, (value) {
    return _then(_self.copyWith(verifier: value));
  });
}
}


/// Adds pattern-matching-related methods to [DemonListedFormModel].
extension DemonListedFormModelPatterns on DemonListedFormModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DemonListedFormModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DemonListedFormModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DemonListedFormModel value)  $default,){
final _that = this;
switch (_that) {
case _DemonListedFormModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DemonListedFormModel value)?  $default,){
final _that = this;
switch (_that) {
case _DemonListedFormModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int id,  PlayerMinimalFormModel publisher,  PlayerMinimalFormModel verifier,  String thumbnail,  int? position,  String? video,  int? levelId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DemonListedFormModel() when $default != null:
return $default(_that.name,_that.id,_that.publisher,_that.verifier,_that.thumbnail,_that.position,_that.video,_that.levelId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int id,  PlayerMinimalFormModel publisher,  PlayerMinimalFormModel verifier,  String thumbnail,  int? position,  String? video,  int? levelId)  $default,) {final _that = this;
switch (_that) {
case _DemonListedFormModel():
return $default(_that.name,_that.id,_that.publisher,_that.verifier,_that.thumbnail,_that.position,_that.video,_that.levelId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int id,  PlayerMinimalFormModel publisher,  PlayerMinimalFormModel verifier,  String thumbnail,  int? position,  String? video,  int? levelId)?  $default,) {final _that = this;
switch (_that) {
case _DemonListedFormModel() when $default != null:
return $default(_that.name,_that.id,_that.publisher,_that.verifier,_that.thumbnail,_that.position,_that.video,_that.levelId);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _DemonListedFormModel implements DemonListedFormModel {
  const _DemonListedFormModel({required this.name, required this.id, required this.publisher, required this.verifier, required this.thumbnail, this.position, this.video, this.levelId});
  factory _DemonListedFormModel.fromJson(Map<String, dynamic> json) => _$DemonListedFormModelFromJson(json);

@override final  String name;
@override final  int id;
@override final  PlayerMinimalFormModel publisher;
@override final  PlayerMinimalFormModel verifier;
@override final  String thumbnail;
@override final  int? position;
@override final  String? video;
@override final  int? levelId;

/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DemonListedFormModelCopyWith<_DemonListedFormModel> get copyWith => __$DemonListedFormModelCopyWithImpl<_DemonListedFormModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DemonListedFormModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DemonListedFormModel&&(identical(other.name, name) || other.name == name)&&(identical(other.id, id) || other.id == id)&&(identical(other.publisher, publisher) || other.publisher == publisher)&&(identical(other.verifier, verifier) || other.verifier == verifier)&&(identical(other.thumbnail, thumbnail) || other.thumbnail == thumbnail)&&(identical(other.position, position) || other.position == position)&&(identical(other.video, video) || other.video == video)&&(identical(other.levelId, levelId) || other.levelId == levelId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,id,publisher,verifier,thumbnail,position,video,levelId);

@override
String toString() {
  return 'DemonListedFormModel(name: $name, id: $id, publisher: $publisher, verifier: $verifier, thumbnail: $thumbnail, position: $position, video: $video, levelId: $levelId)';
}


}

/// @nodoc
abstract mixin class _$DemonListedFormModelCopyWith<$Res> implements $DemonListedFormModelCopyWith<$Res> {
  factory _$DemonListedFormModelCopyWith(_DemonListedFormModel value, $Res Function(_DemonListedFormModel) _then) = __$DemonListedFormModelCopyWithImpl;
@override @useResult
$Res call({
 String name, int id, PlayerMinimalFormModel publisher, PlayerMinimalFormModel verifier, String thumbnail, int? position, String? video, int? levelId
});


@override $PlayerMinimalFormModelCopyWith<$Res> get publisher;@override $PlayerMinimalFormModelCopyWith<$Res> get verifier;

}
/// @nodoc
class __$DemonListedFormModelCopyWithImpl<$Res>
    implements _$DemonListedFormModelCopyWith<$Res> {
  __$DemonListedFormModelCopyWithImpl(this._self, this._then);

  final _DemonListedFormModel _self;
  final $Res Function(_DemonListedFormModel) _then;

/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? id = null,Object? publisher = null,Object? verifier = null,Object? thumbnail = null,Object? position = freezed,Object? video = freezed,Object? levelId = freezed,}) {
  return _then(_DemonListedFormModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,publisher: null == publisher ? _self.publisher : publisher // ignore: cast_nullable_to_non_nullable
as PlayerMinimalFormModel,verifier: null == verifier ? _self.verifier : verifier // ignore: cast_nullable_to_non_nullable
as PlayerMinimalFormModel,thumbnail: null == thumbnail ? _self.thumbnail : thumbnail // ignore: cast_nullable_to_non_nullable
as String,position: freezed == position ? _self.position : position // ignore: cast_nullable_to_non_nullable
as int?,video: freezed == video ? _self.video : video // ignore: cast_nullable_to_non_nullable
as String?,levelId: freezed == levelId ? _self.levelId : levelId // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerMinimalFormModelCopyWith<$Res> get publisher {
  
  return $PlayerMinimalFormModelCopyWith<$Res>(_self.publisher, (value) {
    return _then(_self.copyWith(publisher: value));
  });
}/// Create a copy of DemonListedFormModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PlayerMinimalFormModelCopyWith<$Res> get verifier {
  
  return $PlayerMinimalFormModelCopyWith<$Res>(_self.verifier, (value) {
    return _then(_self.copyWith(verifier: value));
  });
}
}

// dart format on
