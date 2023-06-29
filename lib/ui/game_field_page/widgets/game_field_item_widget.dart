import 'dart:math';

import 'package:flutter/material.dart';
import 'package:pet_2048/data/model/game_field_item/game_field_item.dart';

class GameFieldItemWidget extends StatelessWidget {
  const GameFieldItemWidget({
    required this.size,
    required this.item,
    super.key,
  });

  final double size;
  final GameFieldItem item;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final opacity = item.value > 10 ? 1.0 : 0.1 * item.value;
    final text = item.value <= 0 ? '' : '${pow(2, item.value)}';

    return Padding(
      padding: const EdgeInsets.all(2),
      child: SizedBox.square(
        dimension: size,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: theme.colorScheme.primary.withOpacity(opacity),
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              width: 2,
              color: theme.colorScheme.secondaryContainer,
            ),
          ),
          child: Center(
            child: Text(
              text,
              style: theme.textTheme.headlineMedium,
            ),
          ),
        ),
      ),
    );
  }
}
