import 'dart:math';
import 'dart:ui';

import 'package:solid/domain/repositories/random_rgb_repository.dart';
import 'package:solid/injector.dart';

class GetRandomColorUseCase {
  final RandomRgbRepository _repository = injector();

  Future<Color> call() async {
    try {
      return await _repository.getRandomColor();
    } catch (e) {
      final random = Random();
      return Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
        1,
      );
    }
  }
}
