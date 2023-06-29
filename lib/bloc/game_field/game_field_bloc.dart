import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pet_2048/data/model/game_field/game_field.dart';

part 'game_field_event.dart';
part 'game_field_state.dart';

class GameFieldBloc extends Bloc<GameFieldEvent, GameFieldState> {
  final int size;
  late GameFieldLoadedState _currentField;

  GameFieldBloc(this.size) : super(GameFieldInitState(size)) {
    stream.listen((event) {
      if (event is GameFieldLoadedState) {
        _currentField = event;
      }
    });
    on<GameFieldEvent>((event, emit) {
      if (event is GameFieldGenerateEvent) {
        _mapGenerateGameFieldEventToState(event, emit);
      }
      if (event is GameFieldAddNewItemEvent) {
        _mapGameFieldAddNewItemEventToState(event, emit);
      }
      if (event is GameFieldMoveEvent) {
        _mapGameFieldMoveEventToState(event, emit);
      }
    });
  }

  void _mapGenerateGameFieldEventToState(
    GameFieldGenerateEvent event,
    Emitter<GameFieldState> emit,
  ) {
    final field = GameField.bySize(event.size);
    emit(GameFieldLoadedState(field));
  }

  void _mapGameFieldAddNewItemEventToState(
    GameFieldAddNewItemEvent event,
    Emitter<GameFieldState> emit,
  ) {
    emit(GameFieldInitState(size));
    final currentField = _currentField.field;
    final randomFields = currentField.freeItems..shuffle();
    var newMap = Map.of(currentField.field);
    var sum = 0;
    while (sum < 3 && randomFields.isNotEmpty) {
      final newValue = 1 + Random().nextInt(2);
      sum = sum + newValue;
      final editedField = randomFields.removeAt(0).copyWith(value: newValue);
      final editedRow = newMap[editedField.row]!;
      editedRow.setAll(editedField.column, [editedField]);
    }
    final newField = GameField(field: newMap);
    emit(GameFieldLoadedState(newField));
  }

  void _mapGameFieldMoveEventToState(
    GameFieldMoveEvent event,
    Emitter<GameFieldState> emit,
  ) {
    emit(GameFieldInitState(size));
    final currentField = _currentField.field;
    final newField = GameField.byMove(currentField, event.direction);
    emit(GameFieldLoadedState(newField));
  }
}
