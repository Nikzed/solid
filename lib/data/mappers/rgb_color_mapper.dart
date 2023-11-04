import 'dart:ui';

import 'package:solid/data/responses/random_color/rgb_response.dart';

class RgbColorMapper {
  Color map(RgbResponse value) {
    return Color.fromRGBO(value.r, value.g, value.b, 1);
  }
}
