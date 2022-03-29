import 'package:flutter_testing/domain/entity/weather/city.dart';
import 'package:flutter_testing/domain/weather/set_city_favorite_use_case.dart';
import 'package:flutter_testing/repository/weather/weather_repository.dart';

class SetCityFavoriteUseCaseImpl extends SetCityFavoriteUseCase {
  final WeatherRepository weatherRepository;

  SetCityFavoriteUseCaseImpl({required this.weatherRepository});

  @override
  Future<void> callInternal(City param) async {
    await weatherRepository.setCityAsFavorite(param);
  }
}
