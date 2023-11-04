import 'dart:ui';

import 'package:solid/data/mappers/rgb_color_mapper.dart';
import 'package:solid/data/requests/random_color/get_random_color.dart';
import 'package:solid/data/responses/random_color/rgb_response.dart';
import 'package:solid/domain/repositories/random_rgb_repository.dart';

class RandomRgbRepositoryImpl implements RandomRgbRepository {
  final RandomRgbApi _randomRgbApi;
  final RgbColorMapper _rgbColorMapper;

  RandomRgbRepositoryImpl(this._randomRgbApi, this._rgbColorMapper);

  @override
  Future<Color> getRandomColor() async {
    try {
      final RgbResponse response = await _randomRgbApi.getRandomColor();
      return _rgbColorMapper.map(response);
    } catch (e) {
      throw Exception(e);
    }
  }
}
