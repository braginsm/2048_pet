import 'package:freezed_annotation/freezed_annotation.dart';

part 'game_field_item.freezed.dart';

@freezed
class GameFieldItem with _$GameFieldItem {
  factory GameFieldItem({
    required int row,
    required int column,
    required int value,
  }) = _GameFieldItem;

  const GameFieldItem._();
}
