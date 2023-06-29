import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet_2048/core/extensions/list_int_extension.dart';
import 'package:pet_2048/core/extensions/list_list_int_extension.dart';
import 'package:pet_2048/data/model/game_field_item/game_field_item.dart';

part 'game_field.freezed.dart';

@freezed
class GameField with _$GameField {
  factory GameField({
    required Map<int, List<GameFieldItem>> field,
  }) = _GameField;

  const GameField._();

  int get length => field.length;

  factory GameField.bySize(int size) {
    final indexes = List<int>.generate(size, (index) => index);

    return GameField(
      field: {
        for (var index in indexes)
          index: indexes
              .map((e) => GameFieldItem(row: index, column: e, value: 0))
              .toList()
      },
    );
  }

  factory GameField.fromRows(List<List<int>> rows) => GameField(field: {
        for (var i = 0; i < rows.length; i++)
          i: rows[i]
              .asMap()
              .entries
              .map((e) => GameFieldItem(row: i, column: e.key, value: e.value))
              .toList()
      });

  factory GameField.fromColumns(List<List<int>> columns) =>
      GameField.fromRows(columns.columnsToRows);

  factory GameField.byMove(GameField from, MoveDirections direction) {
    switch (direction) {
      case MoveDirections.down || MoveDirections.up:
        final columns = from.columns
            .map((column) => column.moveTo(direction == MoveDirections.down))
            .toList();

        return GameField.fromColumns(columns);
      case MoveDirections.left || MoveDirections.right:
        final rows = from.rows
            .map((row) => row.moveTo(direction == MoveDirections.right))
            .toList();

        return GameField.fromRows(rows);
    }
  }

  List<GameFieldItem> get freeItems => field.values
      .map((e) => e.where((element) => element.value == 0).toList())
      .reduce((value, element) => value..addAll(element));

  bool get isFreeSpaceAvailable => freeItems.isEmpty;

  List<List<int>> get rows =>
      field.values.map((e) => e.map((el) => el.value).toList()).toList();

  List<List<int>> get columns {
    final result = List<List<int>>.generate(field.length, (_) => <int>[]);
    for (var element in field.entries) {
      for (var el in element.value) {
        result[el.column].add(el.value);
      }
    }
    return result;
  }
}

enum MoveDirections {
  up,
  down,
  right,
  left;
}
