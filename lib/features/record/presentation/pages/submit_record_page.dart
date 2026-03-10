import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../blocs/record_bloc.dart";

/// Submit record page, with the scaffold properties
@RoutePage()
class SubmitRecordPage extends StatelessWidget
{
  /// Submit record page, with the scaffold properties
  const SubmitRecordPage({super.key});

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
