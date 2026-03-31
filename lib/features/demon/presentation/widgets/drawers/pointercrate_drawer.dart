import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

import "../../../../../core/routes/app_router.gr.dart";

/// Pointercrate Drawer menu to show the options to other pages or modules
class PointercrateDrawer extends StatelessWidget {
  /// Pointercrate Drawer menu to show the options to other pages or modules
  const PointercrateDrawer({super.key});

  @override
  Widget build(BuildContext context) => Drawer(
        child: Column(
          children: [
            const Expanded(
              flex: 1,
              child: Placeholder(),
            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ListTile(
                    title: const Text("Extended list"),
                    leading: const FaIcon(FontAwesomeIcons.networkWired),
                    onTap: () => _onTapExtendedList(context),
                  ),
                  const Divider(),
                  ListTile(
                    title: const Text("Legacy list"),
                    leading: const FaIcon(FontAwesomeIcons.cubes),
                    onTap: () => _onTapLegacyList(context),
                  ),
                  const Divider(),
                ],
              ),
            ),
          ],
        ),
      );

  void _onTapExtendedList(BuildContext context) => context.router.push(
        const ExtendedListRoute(),
      );

  void _onTapLegacyList(BuildContext context) => context.router.push(
        const LegacyListRoute(),
      );
}
