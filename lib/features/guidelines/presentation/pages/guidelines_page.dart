import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../cubits/guidelines_cubit.dart";

/// Guidelines page with his cubit and scaffold properties
@RoutePage()
class GuidelinesPage extends StatelessWidget
{
  /// Guidelines page with his cubit and scaffold properties
  const GuidelinesPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocProvider(
        create: (context) => GuidelinesCubit(),
        child: const Center(
          child: Text("Created with clean arq brick"),
        ),
      ),
    );
}
