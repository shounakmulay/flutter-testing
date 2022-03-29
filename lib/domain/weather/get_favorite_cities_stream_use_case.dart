import 'package:flutter_testing/domain/base/usecase/base_stream_use_case.dart';
import 'package:flutter_testing/domain/entity/weather/city.dart';
import 'package:flutter_testing/foundation/unit.dart';

abstract class GetFavoriteCitiesStreamUseCase
    extends BaseStreamUseCase<Unit, List<City>> {}
