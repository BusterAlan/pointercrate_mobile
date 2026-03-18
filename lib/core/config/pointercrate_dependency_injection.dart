import "package:flutter/material.dart";

/// Class to inject the dependencies in the application
class PointercrateDependencyInjection {
  /// Inject the services in the application
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
  }
}
