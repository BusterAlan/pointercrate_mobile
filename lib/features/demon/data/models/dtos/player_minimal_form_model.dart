import "package:freezed_annotation/freezed_annotation.dart";

import "../../../business/entities/player_minimal_form_entity.dart";

part "player_minimal_form_model.freezed.dart";
part "player_minimal_form_model.g.dart";

/// Model that exposes the information of the player
@freezed
class PlayerMinimalFormModel extends PlayerMinimalFormEntity
    with _$PlayerMinimalFormModel {
  /// Model that exposes the information of the player
  const factory PlayerMinimalFormModel({
    required int id,
    required String name,
    required bool banned,
  }) = _PlayerMinimalFormModel;

  /// Model that exposes the information of the player
  const PlayerMinimalFormModel._({
    required super.id,
    required super.name,
    required super.banned,
  });

  /// From json helper method
  factory PlayerMinimalFormModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerMinimalFormModelFromJson(json);

  @override
  Map<String, dynamic> toJson() =>
      _$PlayerMinimalFormModelToJson(this as _PlayerMinimalFormModel);
}
