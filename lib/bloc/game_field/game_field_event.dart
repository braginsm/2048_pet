part of 'game_field_bloc.dart';

@immutable
abstract class GameFieldEvent extends Equatable {}

class GameFieldGenerateEvent extends GameFieldEvent {
  final int size;
  GameFieldGenerateEvent(this.size);

  @override
  List<Object> get props => [size];
}

class GameFieldAddNewItemEvent extends GameFieldEvent {
  @override
  List<Object> get props => [];
}

class GameFieldMoveEvent extends GameFieldEvent {
  final MoveDirections direction;

  GameFieldMoveEvent(this.direction);

  @override
  List<Object> get props => [direction];
}
