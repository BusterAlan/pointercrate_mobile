import "package:auto_route/auto_route.dart";
import "package:dotted_border/dotted_border.dart";
import "package:flutter/material.dart";
import "package:flutter_common_classes/extensions/theme_extension.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "../../../../core/routes/app_router.gr.dart";

/// Submit demonlist custom floating action button to implement in whatever page needs
class SubmitDemonlistFAB extends StatelessWidget {
  /// Submit demonlist custom floating action button to implement in whatever page needs
  const SubmitDemonlistFAB({super.key});

  @override
  Widget build(BuildContext context) => DottedBorder(
        options: CircularDottedBorderOptions(
          color: context.colorScheme.onPrimaryContainer,
        ),
        child: FloatingActionButton(
          onPressed: () => _onPressed(context),
          shape: const CircleBorder(),
          child: const FaIcon(
            FontAwesomeIcons.upload,
          ),
        ),
      );

  void _onPressed(BuildContext context) {
    // TODO: Change into the form view to add record
    context.router.push(const LegacyListRoute());
  }
}
