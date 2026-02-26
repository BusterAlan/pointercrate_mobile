import "dart:convert";

import "../../../business/entities/demon_entity.dart";

/// Model that transforms the Demon data from the API to the
/// application entity
class DemonModel extends DemonEntity {
  /// Model that transforms the Demon data from the API to the
  /// application entity
  const DemonModel();

  /// Factory method to create a Home model instance from a JSON
  // factory DemonModel.fromJson({required String json}) => DemonModel.fromMap(map: jsonDecode(json));
  factory DemonModel.fromJson() => DemonModel.fromMap();

  /// Factory method to create a Demon model instance from a map
  factory DemonModel.fromMap() =>
     const DemonModel();

  /// Factory method to create a Demon model instance from an 
  /// entity
  factory DemonModel.fromEntity() => const DemonModel();

  /// Converts the Demon model instance to a map
  Map<String, dynamic> toMap() => {};

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());
  
  /// Converts the Demon model instance to an entity
  DemonEntity toEntity() => const DemonEntity();
}
