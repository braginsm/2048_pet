import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pet_2048/bloc/game_field/game_field_bloc.dart';
import 'package:pet_2048/data/model/game_field/game_field.dart';
import 'package:pet_2048/res/strings.dart';
import 'package:pet_2048/ui/game_field_page/widgets/game_field_widget.dart';

class GameFieldPage extends HookWidget {
  const GameFieldPage({required this.size, super.key});

  final int size;

  @override
  Widget build(BuildContext context) {
    final fieldBloc = useMemoized(
        () => GameFieldBloc(size)..add(GameFieldGenerateEvent(size)));

    addNewFields() => fieldBloc.add(GameFieldAddNewItemEvent());

    onMove(MoveDirections direction) {
      fieldBloc.add(GameFieldMoveEvent(direction));
      Future.delayed(const Duration(milliseconds: 50), addNewFields);
    }

    useEffect(() {
      addNewFields();
      return null;
    }, []);

    return BlocProvider<GameFieldBloc>(
      lazy: false,
      create: (context) => fieldBloc,
      child: Scaffold(
        appBar: AppBar(
          title: Text('${Strings.gameName} $size x $size'),
        ),
        body: BlocBuilder<GameFieldBloc, GameFieldState>(
          builder: (_, state) => Column(
            children: [
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: state is GameFieldLoadedState
                        ? GameFieldWidget(
                            field: state.field,
                            onMove: onMove,
                          )
                        : const CircularProgressIndicator.adaptive(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
