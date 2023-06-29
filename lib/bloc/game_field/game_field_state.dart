part of 'game_field_bloc.dart';

abstract class GameFieldState extends Equatable {
  final int size;

  const GameFieldState(this.size);

  @override
  List<Object> get props => [size];
}

class GameFieldInitState extends GameFieldState {
  const GameFieldInitState(super.size);
}

class GameFieldLoadedState extends GameFieldState {
  final GameField field;
  const GameFieldLoadedState(this.field) : super(field.length);

  @override
  List<Object> get props => [field];
}
