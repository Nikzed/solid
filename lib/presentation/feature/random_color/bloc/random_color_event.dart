part of 'random_color_bloc.dart';

abstract class RandomColorEvent extends Equatable {
  const RandomColorEvent();
}

class UpdateRandomColorEvent extends RandomColorEvent {
  @override
  List<Object?> get props => [];
}
