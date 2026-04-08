import "package:freezed_annotation/freezed_annotation.dart";

part "player_minimal_form_model.freezed.dart";
part "player_minimal_form_model.g.dart";

/// Model that exposes the information of the player
@freezed
abstract class PlayerMinimalFormModel with _$PlayerMinimalFormModel {
  /// Model that exposes the information of the player
  const factory PlayerMinimalFormModel({
    required int id,
    required String name,
    required bool banned,
  }) = _PlayerMinimalFormModel;

  /// From json helper method
  factory PlayerMinimalFormModel.fromJson(Map<String, dynamic> json) =>
      _$PlayerMinimalFormModelFromJson(json);
}
