import 'package:flutter_testing/presentation/entity/base/ui_list_item.dart';
import 'package:flutter_testing/presentation/entity/base/ui_result.dart';
import 'package:flutter_testing/presentation/entity/weather/ui_city.dart';

abstract class FavoriteWeatherInteractor {
  Future<UIResult<void>> setCityFavorite(UICity uiCity);

  Future<UIResult<void>> removeCityFavorite(UICity uiCity);

  Stream<List<UICity>> getFavoriteCitiesStream();
}
