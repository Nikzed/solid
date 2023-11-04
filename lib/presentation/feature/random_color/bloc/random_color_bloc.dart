import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:solid/domain/usecases/get_random_color_use_case.dart';

part 'random_color_event.dart';
part 'random_color_state.dart';

class RandomColorBloc extends Bloc<RandomColorEvent, RandomColorState> {
  final GetRandomColorUseCase _getRandomColorUseCase = GetRandomColorUseCase();

  RandomColorBloc() : super(RandomColorInitialState()) {
    on<RandomColorEvent>((event, emit) async {});
    on<UpdateRandomColorEvent>((event, emit) => _updateColor(event, emit));
  }

  Future<void> _updateColor(event, emit) async {
    Color color = await _getRandomColorUseCase.call();

    emit(
      RandomColorReadyState(
        color: color,
      ),
    );
  }
}
