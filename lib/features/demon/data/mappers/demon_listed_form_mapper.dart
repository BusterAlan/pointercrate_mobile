// DemonListedFormModel.fromEntity() | toEntity()

import "../../business/entities/demon_listed_form_entity.dart";
import "../models/dtos/demon_listed_form_model.dart";
import "player_minimal_form_mapper.dart";

/// Mapper that transforms the [DemonListedFormModel] data from the API to the
/// application entity
extension DemonListedFormModelMapper on DemonListedFormModel {
  /// Mapper that transforms the [DemonListedFormModel] data from the API to the
  /// application entity
  DemonListedFormEntity toEntity() => DemonListedFormEntity(
    verifier: verifier.toEntity(),
    name: name,
    publisher: publisher.toEntity(),
    thumbnail: thumbnail,
    id: id,
    position: position,
    levelId: levelId,
    video: video != null ? Uri.tryParse(video!) : null,
  );
}

/// Mapper that creates a [DemonListedFormModel] from an application entity
extension DemonListedFormMapper on DemonListedFormEntity {
  /// Mapper that creates a [DemonListedFormModel] from an application entity
  DemonListedFormModel fromEntity() => DemonListedFormModel(
    verifier: verifier.fromEntity(),
    name: name,
    publisher: publisher.fromEntity(),
    thumbnail: thumbnail,
    id: id,
    levelId: levelId,
    position: position,
    video: video?.toString(),
  );
}
