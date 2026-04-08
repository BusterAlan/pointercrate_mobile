// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'demon_listed_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DemonListedFormModel _$DemonListedFormModelFromJson(
  Map<String, dynamic> json,
) => _DemonListedFormModel(
  name: json['name'] as String,
  id: (json['id'] as num).toInt(),
  publisher: PlayerMinimalFormModel.fromJson(
    json['publisher'] as Map<String, dynamic>,
  ),
  verifier: PlayerMinimalFormModel.fromJson(
    json['verifier'] as Map<String, dynamic>,
  ),
  thumbnail: json['thumbnail'] as String,
  position: (json['position'] as num?)?.toInt(),
  video: json['video'] as String?,
  levelId: (json['levelId'] as num?)?.toInt(),
);

Map<String, dynamic> _$DemonListedFormModelToJson(
  _DemonListedFormModel instance,
) => <String, dynamic>{
  'name': instance.name,
  'id': instance.id,
  'publisher': instance.publisher.toJson(),
  'verifier': instance.verifier.toJson(),
  'thumbnail': instance.thumbnail,
  'position': instance.position,
  'video': instance.video,
  'levelId': instance.levelId,
};
