import 'dart:async';

import 'package:flutter_template/foundation/extensions/string_ext.dart';
import 'package:flutter_template/interactor/weather/favorite/favorite_weather_interactor.dart';
import 'package:flutter_template/interactor/weather/search/search_city_interactor.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_screen_intent.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_screen_state.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_view_model.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_view_model_impl.dart';
import 'package:flutter_template/presentation/entity/base/ui_result.dart';
import 'package:flutter_template/presentation/entity/base/ui_toolbar.dart';
import 'package:flutter_template/presentation/intl/translations/translation_keys.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../extensions/mock_extensions.dart';
import '../../../../../extensions/stream_extensions.dart';
import '../../../../../mocks/mocks.dart';
import '../../../../base/test_helpers.dart';
import '../../../../../test_models/ui_city_models.dart';

void main() {
  late SearchCityInteractor searchCityInteractor;
  late FavoriteWeatherInteractor favoriteWeatherInteractor;
  late SearchViewModel viewModel;

  setUpAll(baseSetupAll);

  setUp(() {
    searchCityInteractor = MockSearchCityInteractor();
    favoriteWeatherInteractor = MockFavoriteWeatherInteractor();
  });

  tearDown(() {
    resetMocktailState();
  });

  _createViewModel() {
    viewModel = SearchViewModelImpl(
      searchCityInteractor: searchCityInteractor,
      favoriteWeatherInteractor: favoriteWeatherInteractor,
    );
  }

  SearchScreenState _getInitialState() => SearchScreenState(
        toolbar: UIToolbar(
          title: LocaleKeys.searchPageTitle.tr,
          hasBackButton: true,
        ),
        showLoading: false,
        searchList: List.empty(),
      );

  test(
      "Given search view model created, When no state change is made, Then initial state should be returned",
      () {
    // Given
    when(() => searchCityInteractor.searchResultsStream)
        .thenAnswer((invocation) => const Stream.empty());

    _createViewModel();

    // When
    final initialState = viewModel.debugState;

    // Then
    expect(initialState, _getInitialState());
  });

  test(
      "Given search view model created, When on init is called, Then view model should listen to search results stream",
      () async {
    // Given
    final uiCityList = [uiCity];
    when(() => searchCityInteractor.searchResultsStream)
        .thenAnswer((_) => Stream.value(uiCityList));

    // When
    _createViewModel();

    // Then
    viewModel.stream.inOrder([
      emits(_getInitialState().copyWith(searchList: uiCityList)),
    ]);
  });

  test(
      "Given search view model created, When on init is called, Then view model should listen to search term stream",
      () async {
    // Given
    const searchTerm = "Pune";
    when(() => searchCityInteractor.searchResultsStream)
        .thenReturnEmptyListStream();
    when(() => searchCityInteractor.search(searchTerm)).justRun();

    // When
    _createViewModel();

    viewModel.stream.inOrder([
      // Then
      emits(_getInitialState().copyWith(showLoading: true)),
      emits(_getInitialState().copyWith(showLoading: false)),
    ]);

    viewModel.onIntent(SearchScreenIntent.search(searchTerm: searchTerm));
  });

  test(
      "Given user types search query, When multiple queries come in rapidly, Then api call should not be made for every query",
      () async {
    // Given
    const searchTerm1 = "P";
    const searchTerm2 = "Pu";
    const searchTerm3 = "Pun";
    const searchTerm4 = "Pune";
    when(() => searchCityInteractor.searchResultsStream)
        .thenReturnEmptyListStream();
    when(() => searchCityInteractor.search(searchTerm4)).justRun();

    // When
    _createViewModel();

    viewModel.stream.inOrder([
      emits(_getInitialState().copyWith(showLoading: true)),
      emits(_getInitialState().copyWith(showLoading: false)),
    ]);

    viewModel.onIntent(SearchScreenIntent.search(searchTerm: searchTerm1));
    viewModel.onIntent(SearchScreenIntent.search(searchTerm: searchTerm2));
    viewModel.onIntent(SearchScreenIntent.search(searchTerm: searchTerm3));
    viewModel.onIntent(SearchScreenIntent.search(searchTerm: searchTerm4));

    // Then
    // Make sure no calls happen instantly
    verifyNever(() => searchCityInteractor.search(any()));
    // Wait for debounce duration to pass
    await Future.delayed(const Duration(milliseconds: 500));
    // Verify only 1 call was made with the latest values after debounce
    verify(() => searchCityInteractor.search(searchTerm4)).called(1);
  });

  test(
      "Given toggleFavorite intent is fired, When city is not favorite, Then city should be marked as favorite",
      () {
    // Given
    final city = uiCity;
    when(() => searchCityInteractor.searchResultsStream)
        .thenReturnEmptyListStream();
    when(() => favoriteWeatherInteractor.setCityFavorite(city))
        .thenAnswer((_) async => UIResult<void>.success(null));
    _createViewModel();

    // When
    viewModel.onIntent(SearchScreenIntent.toggleFavorite(city: city));

    // Then
    verify(() => favoriteWeatherInteractor.setCityFavorite(city)).called(1);
    verifyNever(() => favoriteWeatherInteractor.removeCityFavorite(city));
  });

  test(
      "Given toggleFavorite intent is fired, When city is favorite, Then city should be removed as favorite",
      () {
    // Given
    final city = uiCity.copyWith(isFavourite: true);
    when(() => searchCityInteractor.searchResultsStream)
        .thenReturnEmptyListStream();
    when(() => favoriteWeatherInteractor.removeCityFavorite(city))
        .thenAnswer((_) async => UIResult<void>.success(null));
    _createViewModel();

    // When
    viewModel.onIntent(SearchScreenIntent.toggleFavorite(city: city));

    // Then
    verify(() => favoriteWeatherInteractor.removeCityFavorite(city)).called(1);
    verifyNever(() => favoriteWeatherInteractor.setCityFavorite(city));
  });
}
