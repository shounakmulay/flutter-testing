import 'package:drift/drift.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/domain/entity/weather/city.dart';
import 'package:flutter_testing/repository/date/date_repository.dart';
import 'package:flutter_testing/repository/weather/domain_city_mapper.dart';
import 'package:flutter_testing/repository/weather/local_city_mapper.dart';
import 'package:flutter_testing/repository/weather/local_day_weather_mapper.dart';
import 'package:flutter_testing/repository/weather/local_weather_mapper.dart';
import 'package:flutter_testing/repository/weather/weather_repository.dart';
import 'package:flutter_testing/repository/weather/weather_repository_impl.dart';
import 'package:flutter_testing/services/base/database/app_database.dart';
import 'package:flutter_testing/services/weather/local/weather_local_service.dart';
import 'package:flutter_testing/services/weather/remote/weather_remote_service.dart';
import 'package:mocktail/mocktail.dart';

import '../../mocks/mocks.dart';

void main() {
  late WeatherLocalService weatherLocalService;
  late WeatherRemoteService weatherRemoteService;
  late DomainCityMapper domainCityMapper;
  late LocalCityMapper localCityMapper;
  late LocalWeatherMapper localWeatherMapper;
  late LocalDayWeatherMapper localDayWeatherMapper;
  late DateRepository dateRepository;

  late WeatherRepository weatherRepository;

  setUp(() {
    weatherLocalService = MockWeatherLocalService();
    weatherRemoteService = MockWeatherRemoteService();
    domainCityMapper = MockDomainCityMapper();
    localCityMapper = MockLocalCityMapper();
    localWeatherMapper = MockLocalWeatherMapper();
    localDayWeatherMapper = MockLocalDayWeatherMapper();
    dateRepository = MockDateRepository();

    weatherRepository = WeatherRepositoryImpl(
      weatherLocalService: weatherLocalService,
      weatherRemoteService: weatherRemoteService,
      domainCityMapper: domainCityMapper,
      localCityMapper: localCityMapper,
      localWeatherMapper: localWeatherMapper,
      localDayWeatherMapper: localDayWeatherMapper,
      dateRepository: dateRepository,
    );
  });

  tearDown(() {
    resetMocktailState();
  });

  test(
      "Given a valid City object, When setCityAsFavorite is called and no error occurs, Then markCityAsFavorite is called with LocalCity object",
      () async {
    // Given
    final testCity = City(
      id: 1,
      title: "title",
      locationType: "locationType",
      location: "location",
    );
    const testLocalCity = LocalCityCompanion(
      woeid: Value(1),
      title: Value("title"),
      locationType: Value("locationType"),
      location: Value("location"),
    );
    when(() => localCityMapper.map(testCity)).thenReturn(testLocalCity);
    when(() => weatherLocalService.markCityAsFavorite(city: testLocalCity))
        .thenAnswer((_) async {});

    // When
    await weatherRepository.setCityAsFavorite(testCity);

    // Then
    verify(() => localCityMapper.map(testCity)).called(1);
    verify(() => weatherLocalService.markCityAsFavorite(city: testLocalCity))
        .called(1);
    verifyNoMoreInteractions(localCityMapper);
    verifyNoMoreInteractions(weatherLocalService);
    verifyZeroInteractions(weatherRemoteService);
  });

  test(
      "Given local service returns list of LocalCityData, When getFavoriteCitiesList is called, Then Future<List<City>> is returned",
      () async {
    // Given
    final localCityData = [
      LocalCityData(
        woeid: 1,
        title: "title",
        locationType: "locationType",
        location: "location",
      )
    ];
    final cityData = [
      City(
        id: 1,
        title: "title",
        locationType: "locationType",
        location: "location",
      )
    ];
    when(() => weatherLocalService.getFavouriteCities())
        .thenAnswer((_) => Future.value(localCityData));
    when(() => domainCityMapper.mapList(localCityData)).thenReturn(cityData);

    // When
    final result = await weatherRepository.getFavoriteCitiesList();

    // Then
    verify(() => weatherLocalService.getFavouriteCities()).called(1);
    verify(() => domainCityMapper.mapList(localCityData)).called(1);
    expect(result.length, localCityData.length);
    expect(result, cityData);
  });

  test(
      "Given setCityAsFavorite is called with a valid City object, When localCityMapper throws an exception, Then the same exception is surfaced to the caller",
      () async {
    // Given
    final testCity = City(
      id: 1,
      title: "title",
      locationType: "locationType",
      location: "location",
    );
    final testException = Exception("Test exception");
    when(() => localCityMapper.map(testCity)).thenThrow(testException);

    expect(
      // When
      () async => await weatherRepository.setCityAsFavorite(testCity),
      // Then
      throwsA(same(testException)),
    );
  });
}
