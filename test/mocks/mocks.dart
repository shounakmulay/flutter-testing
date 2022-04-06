import 'package:flutter_testing/presentation/base/intent/intent_handler.dart';
import 'package:flutter_testing/presentation/entity/intent/intent.dart';
import 'package:flutter_testing/repository/date/date_repository.dart';
import 'package:flutter_testing/repository/weather/domain_city_mapper.dart';
import 'package:flutter_testing/repository/weather/local_city_mapper.dart';
import 'package:flutter_testing/repository/weather/local_day_weather_mapper.dart';
import 'package:flutter_testing/repository/weather/local_weather_mapper.dart';
import 'package:flutter_testing/services/weather/local/weather_local_service.dart';
import 'package:flutter_testing/services/weather/remote/weather_remote_service.dart';
import 'package:mocktail/mocktail.dart';

// Service
class MockWeatherLocalService extends Mock implements WeatherLocalService {}

class MockWeatherRemoteService extends Mock implements WeatherRemoteService {}

// Mappers
class MockDomainCityMapper extends Mock implements DomainCityMapper {}

class MockLocalCityMapper extends Mock implements LocalCityMapper {}

class MockLocalWeatherMapper extends Mock implements LocalWeatherMapper {}

class MockLocalDayWeatherMapper extends Mock implements LocalDayWeatherMapper {}

// Repositories
class MockDateRepository extends Mock implements DateRepository {}

// Intent Handler
class MockIntentHandler<T extends BaseIntent> extends Mock
    implements IntentHandler<T> {}