import "../../business/entities/player_minimal_form_entity.dart";
import "../models/dtos/player_minimal_form_model.dart";

/// Mapper that transforms the [PlayerMinimalFormModel] data from the API to the
/// application entity
extension PlayerMinimalFormModelMapper on PlayerMinimalFormModel {
  /// Mapper that transforms the [PlayerMinimalFormModel] data from the API to the
  /// application entity
  PlayerMinimalFormEntity toEntity() =>
      PlayerMinimalFormEntity(id: id, name: name, banned: banned);
}

/// Mapper that creates a [PlayerMinimalFormModel] from an application entity
extension PlayerMinimalFormMapper on PlayerMinimalFormEntity {
  /// Mapper that creates a [PlayerMinimalFormModel] from an application entity
  PlayerMinimalFormModel fromEntity() =>
      PlayerMinimalFormModel(id: id, name: name, banned: banned);
}
