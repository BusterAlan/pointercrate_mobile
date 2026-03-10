import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";

import "../cubits/auth_cubit.dart";

/// Auth page with provider cubit and scaffold properties
@RoutePage()
class SignInPage extends StatelessWidget
{
  /// Auth page with provider cubit and scaffold properties
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
      body: BlocProvider(
        create: (context) => AuthCubit(),
        child: const Center(
          child: Text("Created with clean arq brick"),
        ),
      ),
    );
}
