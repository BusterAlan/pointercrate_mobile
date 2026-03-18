import "dart:convert";
import "dart:typed_data";

import "../../../business/entities/demon_entity.dart";

/// Model that transforms the Demon data from the API to the
/// application entity
class DemonModel extends DemonEntity {
  /// Model that transforms the Demon data from the API to the
  /// application entity
  const DemonModel({
    required super.name,
    required super.publisher,
    required super.points,
    required super.position,
    super.thumbnail,
  });

  /// Factory method to create a Home model instance from a JSON
  factory DemonModel.fromJson({
    required String json,
  }) =>
      DemonModel.fromMap(jsonDecode(json));

  /// Factory method to create a Demon model instance from a map
  factory DemonModel.fromMap(
    Map<String, dynamic> map,
  ) =>
      DemonModel(
        position: map["position"] as int,
        name: map["name"] as String,
        points: map["points"] as double,
        publisher: map["publisher"] as String,
        thumbnail: map["thumbnail"] as Uint8List?,
      );

  /// Factory method to create a Demon model instance from an
  /// entity
  factory DemonModel.fromEntity(
    DemonEntity entity,
  ) =>
      DemonModel(
        name: entity.name,
        points: entity.points,
        position: entity.position,
        publisher: entity.publisher,
        thumbnail: entity.thumbnail,
      );

  /// Converts the Demon model instance to a map
  Map<String, dynamic> toMap() => {
        "name": name,
        "points": points,
        "position": position,
        "publisher": publisher,
        "thumbnail": thumbnail,
      };

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());

  /// Converts the Demon model instance to an entity
  DemonEntity toEntity() => DemonEntity(
        name: name,
        points: points,
        position: position,
        publisher: publisher,
        thumbnail: thumbnail,
      );
}
