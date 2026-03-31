import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_common_classes/extensions/theme_extension.dart";

/// Legacy list dialog note for explaining the purpose of the page, within the question button
class LegacyListDialogNote extends StatelessWidget {
  /// Legacy list dialog note for explaining the purpose of the page, within the question button
  const LegacyListDialogNote({super.key});

  @override
  Widget build(BuildContext context) => AlertDialog(
        title: const Text("Note"),
        content: const Text(
            "These are demons that used to be on the list, but got pushed off as new demons were added. They are here for nostalgic reasons. This list is in no order whatsoever and will not be maintained any longer at all. This means no new records will be added for these demons."),
        actions: [
          FilledButton(
            style: ButtonStyle(
              backgroundColor:
                  WidgetStatePropertyAll(context.colorScheme.secondary),
            ),
            onPressed: () => _onPressed(context),
            child: Text(
              "Okay",
              style: context.textTheme.bodyLarge?.copyWith(
                color: context.colorScheme.onSecondary,
              ),
            ),
          ),
        ],
      );

  void _onPressed(BuildContext context) => context.router.maybePop();
}
