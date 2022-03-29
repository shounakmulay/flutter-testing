import 'package:flutter_testing/domain/entity/weather/city.dart';
import 'package:flutter_testing/domain/weather/get_favorite_cities_stream_use_case.dart';
import 'package:flutter_testing/foundation/unit.dart';
import 'package:flutter_testing/repository/weather/weather_repository.dart';

class GetFavoriteCitiesStreamUseCaseImpl
    extends GetFavoriteCitiesStreamUseCase {
  final WeatherRepository weatherRepository;

  GetFavoriteCitiesStreamUseCaseImpl({required this.weatherRepository});

  @override
  Stream<List<City>> callInternal(Unit param) {
    return weatherRepository.getFavoriteCitiesStream();
  }
}
