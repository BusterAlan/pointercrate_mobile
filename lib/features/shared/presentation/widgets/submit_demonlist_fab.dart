import "package:flutter/material.dart";
import "package:flutter_common_classes/extensions/theme_extension.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

/// Submit demonlist custom floating action button to implement in whatever page needs
class SubmitDemonlistFAB extends StatelessWidget {
  /// Submit demonlist custom floating action button to implement in whatever page needs
  const SubmitDemonlistFAB({super.key});

  @override
  Widget build(BuildContext context) => FloatingActionButton(
        onPressed: _onPressed,
        shape: CircleBorder(
          side: BorderSide(
            style: BorderStyle.solid,
            color: context.colorScheme.onPrimaryContainer,
          ),
        ),
        child: const FaIcon(
          FontAwesomeIcons.upload,
        ),
      );

  void _onPressed() {
    // TODO: Implement onPressed in custom FAB
  }
}
