import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

/// Submit demonlist custom floating action button to implement in whatever page needs
class SubmitDemonlistFAB extends StatelessWidget {
  /// Submit demonlist custom floating action button to implement in whatever page needs
  const SubmitDemonlistFAB({super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
    onPressed: _onPressed,
    child: const FaIcon(
      FontAwesomeIcons.upload,
    ),
  );

  void _onPressed() {
    // TODO: Implement onPressed in custom FAB
  }
}
