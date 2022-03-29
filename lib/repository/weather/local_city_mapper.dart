import 'package:drift/drift.dart';
import 'package:flutter_testing/domain/entity/weather/city.dart';
import 'package:flutter_testing/foundation/mapper/mapper.dart';
import 'package:flutter_testing/services/base/database/app_database.dart';

abstract class LocalCityMapper extends Mapper<City, LocalCityCompanion> {}

class LocalCityMapperImpl extends LocalCityMapper {
  @override
  LocalCityCompanion map(City from) => LocalCityCompanion(
        woeid: Value(from.id),
        title: Value(from.title),
        locationType: Value(from.locationType),
        location: Value(from.location),
      );
}
