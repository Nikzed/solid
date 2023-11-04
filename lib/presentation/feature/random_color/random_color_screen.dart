import 'package:flutter/material.dart';
import 'package:solid/injector.dart';
import 'package:solid/presentation/feature/random_color/bloc/random_color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RandomColorScreen extends StatelessWidget {
  const RandomColorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final RandomColorBloc bloc = injector.get();
    
    return GestureDetector(
      onTap: () {
        bloc.add(UpdateRandomColorEvent());
      },
      child: Scaffold(
        body: BlocBuilder<RandomColorBloc, RandomColorState>(
          bloc: bloc..add(UpdateRandomColorEvent()),
          builder: (context, state) {
            if (state is RandomColorReadyState) {
              return AnimatedContainer(
                duration: const Duration(seconds: 1),
                color: state.color,
              );
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
