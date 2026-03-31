import "dart:convert";

import "../../../business/entities/demon_listed_form_entity.dart";

/// Model that transforms the Demon data from the API to the
/// application entity
class DemonListedFormModel extends DemonListedFormEntity {
  /// Model that transforms the Demon data from the API to the
  /// application entity
  const DemonListedFormModel({
    required super.verifier,
    required super.name,
    required super.publisher,
    required super.thumbnail,
    required super.id,
    super.position,
    super.video,
    super.levelId,
  });

  /// Factory method to create a Home model instance from a JSON
  factory DemonListedFormModel.fromJson({
    required String json,
  }) =>
      DemonListedFormModel.fromMap(jsonDecode(json));

  /// Factory method to create a Demon model instance from a map
  factory DemonListedFormModel.fromMap(
    Map<String, dynamic> map,
  ) =>
      DemonListedFormModel(
        name: map["name"] as String,
        verifier:
            map["verifier"] as String, // TODO: Change into the Player cast
        publisher:
            map["publisher"] as String, // TODO: Change into the Player cast
        thumbnail: map["thumbnail"] as String,
        id: map["id"] as int,
        levelId: map["level_id"] as int?,
        position: map["position"] as int?,
        video: map["video"] as Uri?,
      );

  /// Factory method to create a Demon model instance from an
  /// entity
  factory DemonListedFormModel.fromEntity(
    DemonListedFormEntity entity,
  ) =>
      DemonListedFormModel(
        verifier: entity.verifier,
        name: entity.name,
        publisher: entity.publisher,
        thumbnail: entity.thumbnail,
        id: entity.id,
        levelId: entity.levelId,
        position: entity.position,
        video: entity.video,
      );

  /// Converts the Demon model instance to a map
  Map<String, dynamic> toMap() => {
        "name": name,
        "position": position,
        "id": id,
        "publisher": publisher,
        "verifier": verifier,
        "video": video,
        "thumbnail": thumbnail,
        "level_id": levelId,
      };

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());

  /// Converts the Demon model instance to an entity
  DemonListedFormEntity toEntity() => DemonListedFormEntity(
        name: name,
        position: position,
        publisher: publisher,
        thumbnail: thumbnail,
        verifier: verifier,
        id: id,
        levelId: levelId,
        video: video,
      );
}
