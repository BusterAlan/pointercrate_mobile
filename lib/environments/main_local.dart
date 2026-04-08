import "package:flutter/material.dart";

import "../core/config/pointercrate_dependency_injection.dart";
import "../core/config/pointercrate_environment_config.dart";
import "../pointercrate_mobile_app.dart";

void main() async {
  PointercrateEnvironmentConfig.init(
    flavor: Flavor.local,
  );

  await PointercrateDependencyInjection.init();

  runApp(const PointercrateMobileApp());
}
