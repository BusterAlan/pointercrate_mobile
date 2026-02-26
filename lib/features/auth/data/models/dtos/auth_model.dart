import "dart:convert";

import "../../../business/entities/auth_entity.dart";

/// Model that transforms the Auth data from the API to the
/// application entity
class AuthModel extends AuthEntity {
  /// Model that transforms the Auth data from the API to the
  /// application entity
  const AuthModel();

  /// Factory method to create a Home model instance from a JSON
  // factory AuthModel.fromJson({required String json}) => AuthModel.fromMap(map: jsonDecode(json));
  factory AuthModel.fromJson() => AuthModel.fromMap();

  /// Factory method to create a Auth model instance from a map
  factory AuthModel.fromMap() =>
     const AuthModel();

  /// Factory method to create a Auth model instance from an 
  /// entity
  factory AuthModel.fromEntity() => const AuthModel();

  /// Converts the Auth model instance to a map
  Map<String, dynamic> toMap() => {};

  /// Converts the Home model instance to a JSON
  String toJson() => jsonEncode(toMap());
  
  /// Converts the Auth model instance to an entity
  AuthEntity toEntity() => const AuthEntity();
}
