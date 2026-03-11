import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../../../shared/presentation/widgets/pointercrate_app_bar.dart";
import "../../../shared/presentation/widgets/submit_demonlist_fab.dart";
import "../blocs/demon_bloc.dart";

/// Main list page with his cubit and scaffold properties
@RoutePage()
class MainListPage extends StatelessWidget {
  /// Main list page with his cubit and scaffold properties
  const MainListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: const PointercrateAppBar(
          title: "Main list",
        ),
        body: BlocProvider(
          create: (context) => DemonBloc(),
          child: const Center(
            child: Text("Created with clean arq brick"),
          ),
        ),
        floatingActionButton: const SubmitDemonlistFAB(),
      );
}
