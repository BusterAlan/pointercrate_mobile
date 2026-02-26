import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../cubits/player_cubit.dart";

/// Player page
@RoutePage()
class PlayerPage extends StatelessWidget
{
  /// Player page
  const PlayerPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocProvider(
        create: (context) => PlayerCubit(),
        child: const Center(
          child: Text("Created with clean arq brick"),
        ),
      ),
    );
}
