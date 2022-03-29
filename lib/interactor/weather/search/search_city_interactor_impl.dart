import 'dart:async';
import 'package:flutter_testing/domain/entity/weather/city.dart';
import 'package:flutter_testing/domain/weather/get_favorite_cities_stream_use_case.dart';
import 'package:flutter_testing/domain/weather/search_cities_use_case.dart';
import 'package:flutter_testing/foundation/logger/logger.dart';
import 'package:flutter_testing/foundation/unit.dart';
import 'package:flutter_testing/interactor/weather/search/city_search_result_mapper.dart';
import 'package:flutter_testing/interactor/weather/search/search_city_interactor.dart';
import 'package:flutter_testing/presentation/entity/base/ui_list_item.dart';
import 'package:rxdart/rxdart.dart';

class SearchCityInteractorImpl extends SearchCityInteractor {
  final SearchCitiesUseCase searchCitiesUseCase;
  final GetFavoriteCitiesStreamUseCase favoriteCitiesStreamUseCase;
  final CitySearchResultMapper citySearchResultMapper;
  final StreamController<List<City>> _searchResultsStreamController =
      StreamController();

  SearchCityInteractorImpl({
    required this.searchCitiesUseCase,
    required this.favoriteCitiesStreamUseCase,
    required this.citySearchResultMapper,
  });

  @override
  Stream<List<UIListItem>> get searchResultsStream =>
      CombineLatestStream.combine2<List<City>, List<City>, List<UIListItem>>(
        favoriteCitiesStreamUseCase(unit),
        _searchResultsStreamController.stream,
        (favoriteCities, searchResults) {
          return citySearchResultMapper.map(
            favoriteCities,
            searchResults,
          );
        },
      );

  @override
  Future<void> search(String term) async {
    final searchResults = await searchCitiesUseCase(param: term);
    searchResults.when(
      success: (data) => _searchResultsStreamController.sink.add(data),
      error: (e) => log.e(
          "SearchCityInteractorImpl: search for $term returned error ${e?.toString()}"),
    );
  }
}
