import "package:flutter/material.dart";
import "package:font_awesome_flutter/font_awesome_flutter.dart";

/// Pointercrate demon list general app bar with his parameters
class PointercrateAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  /// Pointercrate demon list general app bar with his parameters
  const PointercrateAppBar({required this.title, super.key});

  /// Title string property
  final String title;

  @override
  Widget build(BuildContext context) => AppBar(
        title: Text(title),
        leading: IconButton(
          onPressed: _onDrawerPressed, 
          icon: const FaIcon(
            FontAwesomeIcons.bars,
          ),
        ),
        actions: [
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

  void _onDrawerPressed() {
    // TODO: Implement onDrawerPressed
  }
}
