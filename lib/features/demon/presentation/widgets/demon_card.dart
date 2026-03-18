import "package:dotted_border/dotted_border.dart";
import "package:flutter/material.dart";
import "package:flutter_common_classes/extensions/theme_extension.dart";

import "../../business/entities/demon_entity.dart";

/// Demon card widget to show individual demon in main, extended, and legacy list
class DemonCard extends StatelessWidget {
  /// Demon card widget to show individual demon in main, extended, and legacy list
  const DemonCard({required this.demon, super.key});

  /// Demon entity value
  final DemonEntity demon;

  @override
  Widget build(BuildContext context) => Card(
        child: DottedBorder(
          options: RectDottedBorderOptions(
            color: context.colorScheme.onSurface,
          ),
          child: ListTile(
            title: Text(
              "${demon.position} - ${demon.name}",
              style: context.textTheme.titleMedium,
            ),
            subtitle: Text.rich(
              TextSpan(
                text: "published by ",
                style: context.textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: demon.publisher,
                    style: context.textTheme.bodyMedium?.copyWith(
                      decoration: TextDecoration.underline,
                      decorationColor: context.colorScheme.onSurface,
                    ),
                  ),
                ],
              ),
            ),
            leading: SizedBox(
              width: 117,
              height: 66,
              child: ColoredBox(
                color: context.colorScheme.secondaryContainer,
              ),
            ),
            onTap: _onTap,
          ),
        ),
      );

  void _onTap() {
    // TODO: Implement onTap in demon card
  }
}
