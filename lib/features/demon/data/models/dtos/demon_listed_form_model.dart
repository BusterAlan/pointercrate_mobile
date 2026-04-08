import "package:freezed_annotation/freezed_annotation.dart";

import "player_minimal_form_model.dart";

part "demon_listed_form_model.freezed.dart";
part "demon_listed_form_model.g.dart";

/// Model that transforms the Demon data from the API to the
/// application entity
@freezed
abstract class DemonListedFormModel with _$DemonListedFormModel {
  /// Model that transforms the Demon data from the API to the
  /// application entity
  @JsonSerializable(explicitToJson: true)
  const factory DemonListedFormModel({
    required String name,
    required int id,
    required PlayerMinimalFormModel publisher,
    required PlayerMinimalFormModel verifier,
    required String thumbnail,
    int? position,
    String? video,
    int? levelId,
  }) = _DemonListedFormModel;

  /// Model from json helper method to expose
  factory DemonListedFormModel.fromJson(Map<String, dynamic> json) =>
      _$DemonListedFormModelFromJson(json);
}
