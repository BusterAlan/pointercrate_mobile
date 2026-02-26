import "dart:convert";

import "../../../business/entities/player_entity.dart";

/// Model that transforms the Player data from the API to the
/// application entity
class PlayerModel extends PlayerEntity {
  /// Model that transforms the Player data from the API to the
  /// application entity
  const PlayerModel();

  /// Factory method to create a Home model instance from a JSON
  // factory PlayerModel.fromJson({required String json}) => PlayerModel.fromMap(map: jsonDecode(json));
  factory PlayerModel.fromJson() => PlayerModel.fromMap();

  /// Factory method to create a Player model instance from a map
  factory PlayerModel.fromMap() =>
     const PlayerModel();

  /// Factory method to create a Player model instance from an 
  /// entity
  factory PlayerModel.fromEntity() => const PlayerModel();

  /// Converts the Player model instance to a map
  Map<String, dynamic> toMap() => {};

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());
  
  /// Converts the Player model instance to an entity
  PlayerEntity toEntity() => const PlayerEntity();
}
