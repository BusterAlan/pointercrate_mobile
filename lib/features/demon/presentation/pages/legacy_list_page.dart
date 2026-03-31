import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_common_classes/extensions/theme_extension.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "../../../../core/constants/app_separators.dart";
import "../../../shared/presentation/widgets/pointercrate_app_bar.dart";
import "../widgets/dialogs/legacy_list_dialog_note.dart";

/// legacy list page with his scaffold properties
@RoutePage()
class LegacyListPage extends StatelessWidget {
  /// legacy list page with his scaffold properties
  const LegacyListPage({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: PointercrateAppBar(
          title: "Legacy list",
          actionWidget: IconButton(
            onPressed: () => _onPressedHelpButton(context),
            icon: const FaIcon(FontAwesomeIcons.question),
          ),
        ),
        body: ListView.separated(
          padding: AppSeparators.small,
          itemBuilder: (context, index) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "shimmer", // TODO: implement real data
                style: context.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              Text(
                "Amplitron", // TODO: implement real data
                style: context.textTheme.bodyMedium?.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: context.colorScheme.onSurface,
                ),
              ),
            ],
          ),
          separatorBuilder: (context, index) => const Divider(),
          itemCount: 100, // TODO: implement real data
        ),
      );

  void _onPressedHelpButton(BuildContext context) => showDialog(
        context: context,
        builder: (context) => const LegacyListDialogNote(),
      );
}
