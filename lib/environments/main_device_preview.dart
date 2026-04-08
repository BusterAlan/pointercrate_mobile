import "package:device_preview_plus/device_preview_plus.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";

import "../core/config/pointercrate_dependency_injection.dart";
import "../core/config/pointercrate_environment_config.dart";
import "../pointercrate_mobile_app.dart";

void main() async {
  PointercrateEnvironmentConfig.init(
    flavor: Flavor.mock,
  );

  await PointercrateDependencyInjection.init();

  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (_) => const PointercrateMobileApp(),
    ),
  );
}
