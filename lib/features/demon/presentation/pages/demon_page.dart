import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../blocs/demon_bloc.dart";

/// Demon page
@RoutePage()
class DemonPage extends StatelessWidget
{
  /// Demon page
  const DemonPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocProvider(
        create: (context) => DemonBloc(),
        child: const Center(
          child: Text("Created with clean arq brick"),
        ),
      ),
    );
}
