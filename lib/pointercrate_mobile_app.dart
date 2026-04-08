import "package:device_preview_plus/device_preview_plus.dart";
import "package:flutter/material.dart";
import "package:flutter_common_classes/localization/l10n.dart";
import "package:flutter_flavor/flutter_flavor.dart";

import "core/constants/theme/material_theme.dart";
import "core/constants/theme/util.dart";
import "core/routes/app_router.dart";

final _appRouter = AppRouter();   

/// [PointercrateMobileApp] is the entry point of the application.
class PointercrateMobileApp extends StatelessWidget {
  /// [PointercrateMobileApp] is the entry point of the application.
  const PointercrateMobileApp({super.key});

  @override
  Widget build(BuildContext context) =>
     FlavorBanner(
      child: MaterialApp.router(
        title: "PointercrateMobile",
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          FlutterCommonLocalizations.delegate,
        ],

        //Theming  
        themeMode: ThemeMode.system,
            theme: MaterialTheme(createTextTheme(context, "Poppins", "Poppins"),)
                .light(),
            darkTheme:
                MaterialTheme(createTextTheme(context, "Poppins", "Poppins"),)
                    .dark(),


        routerConfig: _appRouter.config(),
      ),
    );
}
