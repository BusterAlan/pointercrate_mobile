import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";

import "../../../shared/presentation/widgets/pointercrate_app_bar.dart";
import "../../../shared/presentation/widgets/submit_demonlist_fab.dart";

/// legacy list page with his scaffold properties
@RoutePage()
class LegacyListPage extends StatelessWidget {
  /// legacy list page with his scaffold properties
  const LegacyListPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    appBar: PointercrateAppBar(
      title: "Legacy list",
    ),
    body: Center(
      child: Text("Legacy list page"),
    ),
    floatingActionButton: SubmitDemonlistFAB(),
  );
}
