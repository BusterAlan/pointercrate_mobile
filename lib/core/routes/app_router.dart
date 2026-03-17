import "package:auto_route/auto_route.dart";

import "app_router.gr.dart";
import "names.dart";

/// App router.
@AutoRouterConfig(replaceInRouteName: "Page,Route")
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: MainListRoute.page,
          path: RoutesNames.mainlist,
          initial: true,
        ),
        AutoRoute(
          page: ExtendedListRoute.page,
          path: RoutesNames.extendedlist,
        ),
        AutoRoute(
          page: LegacyListRoute.page,
          path: RoutesNames.legacylist,
        ),
        AutoRoute(
          page: LogInRoute.page,
          path: RoutesNames.login,
        ),
        AutoRoute(
          page: SignInRoute.page,
          path: RoutesNames.signin,
        ),
        AutoRoute(
          page: GuidelinesRoute.page,
          path: RoutesNames.guidelines,
        ),
        AutoRoute(
          page: PlayerDetailsRoute.page,
          path: RoutesNames.player,
        ),
        AutoRoute(
          page: SubmitRecordRoute.page,
          path: RoutesNames.submit,
        ),
        AutoRoute(
          page: StatsRoute.page,
          path: RoutesNames.stats,
        ),
      ];
}
