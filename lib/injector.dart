import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:solid/data/mappers/rgb_color_mapper.dart';
import 'package:solid/data/repositories/random_rgb_repository_impl.dart';
import 'package:solid/data/requests/random_color/get_random_color.dart';
import 'package:solid/domain/repositories/random_rgb_repository.dart';
import 'package:solid/presentation/feature/random_color/bloc/random_color_bloc.dart';

final injector = GetIt.instance;

void setup() {
  injector.registerSingleton(getDio());

  injector.registerFactory(() => RandomRgbApi(injector()));

  injector.registerSingleton(RgbColorMapper());

  injector.registerSingleton<RandomRgbRepository>(
    RandomRgbRepositoryImpl(injector(), injector()),
  );

  injector.registerSingleton(RandomColorBloc());
}

Dio getDio() {
  Dio dio = Dio();

  dio.options = BaseOptions(
    baseUrl: 'https://solid.free.mockoapp.net/',
    receiveDataWhenStatusError: true,
    connectTimeout: const Duration(seconds: 1),
    receiveTimeout: const Duration(seconds: 1),
  );

  return dio;
}
