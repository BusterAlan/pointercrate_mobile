import "dart:convert";

import "../../../business/entities/stats_entity.dart";

/// Model that transforms the Stats data from the API to the
/// application entity
class StatsModel extends StatsEntity {
  /// Model that transforms the Stats data from the API to the
  /// application entity
  const StatsModel();

  /*
  The model is responsible for converting the data into a format that the rest of the application can use. 
  This could involve deserializing JSON from an API into objects, or mapping database rows to objects.
  */

  /// Factory method to create a Home model instance from a JSON
  // factory StatsModel.fromJson({required String json}) => StatsModel.fromMap(map: jsonDecode(json));
  factory StatsModel.fromJson() => StatsModel.fromMap();

  /// Factory method to create a Stats model instance from a map
  /* factory StatsModel.fromMap({required Map<String, dynamic> map}) =>
     const StatsModel(); */
  factory StatsModel.fromMap() =>
     const StatsModel();

  /// Factory method to create a Stats model instance from an 
  /// entity
  // factory StatsModel.fromEntity({required StatsEntity entity}) => StatsModel();
  factory StatsModel.fromEntity() => const StatsModel();

  /// Converts the Stats model instance to a map
  Map<String, dynamic> toMap() => {};

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());
  
  /// Converts the Stats model instance to an entity
  StatsEntity toEntity() => const StatsEntity();
}
