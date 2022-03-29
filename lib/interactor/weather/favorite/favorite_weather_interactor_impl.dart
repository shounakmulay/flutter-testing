import 'package:flutter_template/domain/weather/get_favorite_cities_stream_use_case.dart';
import 'package:flutter_template/domain/weather/remove_favorite_city_use_case.dart';
import 'package:flutter_template/domain/weather/set_city_favorite_use_case.dart';
import 'package:flutter_template/foundation/unit.dart';
import 'package:flutter_template/interactor/base/base_interactor.dart';
import 'package:flutter_template/interactor/weather/favorite/favorite_weather_interactor.dart';
import 'package:flutter_template/interactor/weather/search/ui_city_mapper.dart';
import 'package:flutter_template/presentation/entity/base/ui_result.dart';
import 'package:flutter_template/presentation/entity/weather/ui_city.dart';

class FavoriteWeatherInteractorImpl extends BaseInteractor
    implements FavoriteWeatherInteractor {
  final GetFavoriteCitiesStreamUseCase getFavoriteCitiesStreamUseCase;
  final SetCityFavoriteUseCase setCityFavoriteUseCase;
  final RemoveFavoriteCityUseCase removeFavoriteCityUseCase;
  final UICityMapper uiCityMapper;

  FavoriteWeatherInteractorImpl({
    required this.getFavoriteCitiesStreamUseCase,
    required this.setCityFavoriteUseCase,
    required this.removeFavoriteCityUseCase,
    required this.uiCityMapper,
  });

  @override
  Stream<List<UICity>> getFavoriteCitiesStream() {
    return getFavoriteCitiesStreamUseCase(unit)
        .map(uiCityMapper.mapFavouriteCityList);
  }

  @override
  Future<UIResult<void>> removeCityFavorite(UICity uiCity) async {
    return mapResult(await removeFavoriteCityUseCase(
      param: uiCityMapper.mapCity(uiCity),
    ));
  }

  @override
  Future<UIResult<void>> setCityFavorite(UICity uiCity) async {
    return mapResult(await setCityFavoriteUseCase(
      param: uiCityMapper.mapCity(uiCity),
    ));
  }
}
