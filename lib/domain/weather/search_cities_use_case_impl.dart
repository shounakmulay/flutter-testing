import 'package:flutter_testing/domain/entity/weather/city.dart';
import 'package:flutter_testing/domain/weather/search_cities_use_case.dart';
import 'package:flutter_testing/repository/weather/weather_repository.dart';

class SearchCitiesUseCaseImpl extends SearchCitiesUseCase {
  final WeatherRepository weatherRepository;

  SearchCitiesUseCaseImpl({required this.weatherRepository});

  @override
  Future<List<City>> callInternal(String param) async {
    return await weatherRepository.searchCities(param);
  }
}
