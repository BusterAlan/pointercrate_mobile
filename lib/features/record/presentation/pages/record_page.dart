import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../blocs/record_bloc.dart";

/// Record page
@RoutePage()
class RecordPage extends StatelessWidget
{
  /// Record page
  const RecordPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocProvider(
        create: (context) => RecordBloc(),
        child: const Center(
          child: Text("Created with clean arq brick"),
        ),
      ),
    );
}
