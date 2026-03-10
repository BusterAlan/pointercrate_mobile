import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";

/// Log in page scaffold page for loggin with an account into pointercrate services
@RoutePage()
class LogInPage extends StatelessWidget {
  /// Log in page scaffold page for loggin with an account into pointercrate services
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) => const Scaffold(
    body: Center(
      child: Text("Log in page"),
    ),
  );
}
