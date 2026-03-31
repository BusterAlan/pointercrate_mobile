import "package:auto_route/auto_route.dart";
import "package:flutter/material.dart";
import "package:flutter_common_classes/extensions/theme_extension.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

/// Pointercrate demon list general app bar with his parameters
class PointercrateAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  /// Pointercrate demon list general app bar with his parameters
  const PointercrateAppBar({required this.title, this.actionWidget, super.key});

  /// Title string property
  final String title;

  /// Optional widget to show in action part
  final Widget? actionWidget;

  @override
  Widget build(BuildContext context) => AppBar(
        forceMaterialTransparency: true,
        title: Text(
          title,
        ),
        leading: IconButton(
          onPressed: () => _onLeadingPressed(context),
          icon: FaIcon(
            context.router.canPop()
                ? FontAwesomeIcons.caretLeft
                : FontAwesomeIcons.bars,
            color: context.colorScheme.primary,
          ),
        ),
        actions: [
          actionWidget ??
              IconButton(
                icon: const FaIcon(
                  FontAwesomeIcons.user,
                ),
                onPressed: _onUserPressed,
              ),
        ],
      );

  @override
  Size get preferredSize => const Size.fromHeight(80);

  void _onUserPressed() {
    // TODO: Implement onUserPressed
  }

  void _onLeadingPressed(BuildContext context) {
    if (context.router.canPop()) {
      context.router.pop();
    } else {
      Scaffold.of(context).openDrawer();
    }
  }
}
