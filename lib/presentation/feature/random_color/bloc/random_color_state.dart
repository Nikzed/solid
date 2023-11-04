part of 'random_color_bloc.dart';

abstract class RandomColorState extends Equatable {
  const RandomColorState();
}

class RandomColorInitialState extends RandomColorState {
  @override
  List<Object> get props => [];
}

class RandomColorReadyState extends RandomColorState {
  final Color color;

  const RandomColorReadyState({required this.color});

  @override
  List<Object?> get props => [color];
}
