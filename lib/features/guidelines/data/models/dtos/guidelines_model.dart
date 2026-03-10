import "dart:convert";

import "../../../business/entities/guidelines_entity.dart";

/// Model that transforms the Guidelines data from the API to the
/// application entity
class GuidelinesModel extends GuidelinesEntity {
  /// Model that transforms the Guidelines data from the API to the
  /// application entity
  const GuidelinesModel();

  /// Factory method to create a Home model instance from a JSON
  // factory GuidelinesModel.fromJson({required String json}) => GuidelinesModel.fromMap(map: jsonDecode(json));
  factory GuidelinesModel.fromJson() => GuidelinesModel.fromMap();

  /// Factory method to create a Guidelines model instance from a map
  /* factory GuidelinesModel.fromMap({required Map<String, dynamic> map}) =>
     const GuidelinesModel(); */
  factory GuidelinesModel.fromMap() =>
     const GuidelinesModel();

  /// Factory method to create a Guidelines model instance from an 
  /// entity
  // factory GuidelinesModel.fromEntity({required GuidelinesEntity entity}) => GuidelinesModel();
  factory GuidelinesModel.fromEntity() => const GuidelinesModel();

  /// Converts the Guidelines model instance to a map
  Map<String, dynamic> toMap() => {};

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());
  
  /// Converts the Guidelines model instance to an entity
  GuidelinesEntity toEntity() => const GuidelinesEntity();
}
