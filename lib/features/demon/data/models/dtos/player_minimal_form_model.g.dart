// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_minimal_form_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlayerMinimalFormModel _$PlayerMinimalFormModelFromJson(
  Map<String, dynamic> json,
) => _PlayerMinimalFormModel(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  banned: json['banned'] as bool,
);

Map<String, dynamic> _$PlayerMinimalFormModelToJson(
  _PlayerMinimalFormModel instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'banned': instance.banned,
};
