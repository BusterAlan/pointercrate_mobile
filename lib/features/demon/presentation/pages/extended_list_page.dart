import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";

import "../../../shared/presentation/widgets/pointercrate_app_bar.dart";
import "../../../shared/presentation/widgets/submit_demonlist_fab.dart";

/// Extended list page with the scaffold properties
@RoutePage()
class ExtendedListPage extends StatelessWidget {
  /// Extended list page with the scaffold properties
  const ExtendedListPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    appBar: PointercrateAppBar(
      title: "Extended list",
    ),
    body: Center(
      child: Text("Extended list page"),
    ),
    floatingActionButton: SubmitDemonlistFAB(),
  );
}
