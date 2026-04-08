import "package:flutter/material.dart";
import "package:flutter_flavor/flutter_flavor.dart";

/// A class that provides the environment configuration for the application.
///
/// This class is used to set the environment variables for the application.
abstract class PointercrateEnvironmentConfig {
  /// Initializes the environment configuration.
  static void init({required Flavor flavor}) {
    FlavorConfig(
      name: flavor.name != "production" ? flavor.name : null,
      color: Colors.red,
      location: BannerLocation.topStart,
      variables: getVariables(flavor),
    );
  }

  /// Getter for variables depending of flavor
  static Map<String, dynamic> getVariables(Flavor flavor) => switch (flavor) {
    Flavor.mock => mockVariables,
    Flavor.local => localVariables,
    Flavor.test => testVariables,
    Flavor.production => prodVariables,
    Flavor.preProduction => preProdVariables,
  };

  /// Mock variables
  static const Map<String, dynamic> mockVariables = {
    "base-api": "",
  };

  /// Local variables
  static const Map<String, dynamic> localVariables = {
    "base-api": "",
  };

  /// Test variables
  static const Map<String, dynamic> testVariables = {
    "base-api": "",
  };

  /// Pre production variables
  static const Map<String, dynamic> preProdVariables = {
    "base-api": "",
  };

  /// Production variables
  static const Map<String, dynamic> prodVariables = {
    "base-api": "https://www.pointercrate.com/api/v2",
  };
}

/// The different environments for the application.
enum Flavor {
  /// The mock environment.
  mock,

  /// The local environment.
  local,

  /// The test environment.
  test,

  /// The pre production environment.
  preProduction,

  /// The production environment.
  production,
}
