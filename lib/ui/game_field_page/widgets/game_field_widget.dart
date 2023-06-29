import 'package:flutter/material.dart';
import 'package:pet_2048/data/model/game_field/game_field.dart';
import 'package:pet_2048/ui/game_field_page/widgets/game_field_item_widget.dart';

class GameFieldWidget extends StatelessWidget {
  const GameFieldWidget({
    required this.field,
    required this.onMove,
    super.key,
  });

  final GameField field;
  final void Function(MoveDirections) onMove;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final size = field.field.length;
        final minSize = constraints.maxHeight < constraints.maxWidth
            ? constraints.maxHeight
            : constraints.maxWidth;

        return GestureDetector(
          onVerticalDragEnd: (details) => details.primaryVelocity == null
              ? null
              : onMove(details.primaryVelocity! > 0
                  ? MoveDirections.down
                  : MoveDirections.up),
          onHorizontalDragEnd: (details) => details.primaryVelocity == null
              ? null
              : onMove(details.primaryVelocity! > 0
                  ? MoveDirections.right
                  : MoveDirections.left),
          child: Table(
            children: field.field.values
                .map((e) => TableRow(
                    children: e
                        .map((item) => GameFieldItemWidget(
                              item: item,
                              size: minSize / size,
                            ))
                        .toList()))
                .toList(),
          ),
        );
      },
    );
  }
}
