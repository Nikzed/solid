import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:solid/data/responses/random_color/rgb_response.dart';

part 'get_random_color.g.dart';

@RestApi(baseUrl: "https://solid.free.mockoapp.net/")
abstract class RandomRgbApi {
  factory RandomRgbApi(Dio dio, {String baseUrl}) = _RandomRgbApi;

  @GET("/rgb")
  Future<RgbResponse> getRandomColor();
}
