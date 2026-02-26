import "dart:convert";

import "../../../business/entities/record_entity.dart";

/// Model that transforms the Record data from the API to the
/// application entity
class RecordModel extends RecordEntity {
  /// Model that transforms the Record data from the API to the
  /// application entity
  const RecordModel();

  /// Factory method to create a Home model instance from a JSON
  
  // factory RecordModel.fromJson({required String json}) => RecordModel.fromMap(map: jsonDecode(json));
  factory RecordModel.fromJson() => RecordModel.fromMap();

  /// Factory method to create a Record model instance from a map
  factory RecordModel.fromMap() =>
     const RecordModel();

  /// Factory method to create a Record model instance from an 
  /// entity
  factory RecordModel.fromEntity() => const RecordModel();

  /// Converts the Record model instance to a map
  Map<String, dynamic> toMap() => {};

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());
  
  /// Converts the Record model instance to an entity
  RecordEntity toEntity() => const RecordEntity();
}
