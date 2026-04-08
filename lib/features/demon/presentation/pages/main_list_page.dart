import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_common_classes/flutter_common_classes.dart";
import "package:get_it/get_it.dart";

import "../../../../core/constants/app_separators.dart";
import "../../../shared/presentation/widgets/pointercrate_app_bar.dart";
import "../../../shared/presentation/widgets/submit_demonlist_fab.dart";
import "../../business/use_cases/get_demons.dart";
import "../blocs/demon_bloc.dart";
import "../widgets/demon_card.dart";
import "../widgets/drawers/pointercrate_drawer.dart";

/// Main list page with his cubit and scaffold properties
@RoutePage()
class MainListPage extends StatelessWidget {
  /// Main list page with his cubit and scaffold properties
  const MainListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: const PointercrateAppBar(title: "Main list"),
    drawer: const PointercrateDrawer(),
    body: Padding(
      padding: AppSeparators.pageSeparator,
      child: BlocProvider(
        create: (context) =>
            DemonBloc(getDemons: GetIt.I<GetDemons>())
              ..add(const DemonListFetched()),
        child: BlocBuilder<DemonBloc, DemonState>(
          builder: (context, state) => switch (state.status) {
            DemonStatus.initial || DemonStatus.loading => const Center(
              child: CircularProgressIndicator(),
            ),
            DemonStatus.failure => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  state.failure?.title ?? "N/A",
                  style: context.textTheme.headlineMedium?.copyWith(
                    color: context.colorScheme.error.darken(),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  state.failure?.message ?? "No failure description provided",
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
              ],
            ),
            DemonStatus.success => ListView.builder(
              itemCount: state.demons.length,
              itemBuilder: (_, i) => DemonCard(demon: state.demons[i]),
            ),
          },
        ),
      ),
    ),
    floatingActionButton: const SubmitDemonlistFAB(),
  );
}
