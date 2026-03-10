import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../cubits/stats_cubit.dart";

/// Stats page, that contains his cubit and scaffold properties
@RoutePage()
class StatsPage extends StatelessWidget
{
  /// Stats page, that contains his cubit and scaffold properties
  const StatsPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocProvider(
        create: (context) => StatsCubit(),
        child: const Center(
          child: Text("Created with clean arq brick"),
        ),
      ),
    );
}
