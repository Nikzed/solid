import 'dart:ui';

abstract class RandomRgbRepository {
  Future<Color> getRandomColor();
}