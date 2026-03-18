import "package:flutter/material.dart";
import "package:flutter_common_classes/config/environment_config.dart";

import "core/config/pointercrate_dependency_injection.dart";
import "pointercrate_mobile_app.dart";

void main() async {
  EnvironmentConfig.init(
    flavor: Flavor.production,
  );

  await PointercrateDependencyInjection.init();

  runApp(const PointercrateMobileApp());
}
