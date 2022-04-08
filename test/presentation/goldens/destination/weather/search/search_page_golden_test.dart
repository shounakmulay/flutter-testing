import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_page.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_screen_state.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_view_model.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/widgets/list/ui_city_list_item.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/widgets/search_page_loading_shimmer/search_page_loading_shimmer.dart';
import 'package:flutter_testing/presentation/entity/base/ui_toolbar.dart';
import 'package:flutter_testing/presentation/entity/weather/ui_city.dart';
import 'package:flutter_testing/presentation/intl/translations/translation_keys.dart';
import 'package:flutter_testing/presentation/intl/translations/translations.dart';
import 'package:get_it/get_it.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../mocks/viewmodels/fake_search_view_model.dart';
import '../../../../base/test_helpers.dart';
import '../../../../base/widget_tester_ext.dart';

void main() {
  late FakeSearchViewModel fakeSearchViewModel;

  var _fakeSearchViewModelProvider =
      StateNotifierProvider.autoDispose<SearchViewModel, SearchScreenState>(
          (ref) {
    fakeSearchViewModel = FakeSearchViewModel(SearchScreenState(
      toolbar: UIToolbar(
        title: LocaleKeys.searchPageTitle,
        hasBackButton: true,
      ),
      showLoading: false,
      searchList: List.empty(),
    ));
    return fakeSearchViewModel;
  });

  setUpAll(baseSetupAll);

  setUp(() {});

  tearDown(() {
    resetMocktailState();
  });

  _loadPageForGolden(WidgetTester tester) async {
    await tester.loadPageForGolden(
      page: const SearchPage(),
      viewModelProvider: searchViewModelProvider,
      fakeViewModelProvider: _fakeSearchViewModelProvider,
    );
  }

  testGoldens(
    "Given search results are not empty, When non empty search term is present, Then results should be displayed",
    (tester) async {
      // Given
      await loadAppFonts();
      await _loadPageForGolden(tester);

      // When
      fakeSearchViewModel
          .setState((state) => state.copyWith(showLoading: false, searchList: [
                UICity(
                  cityId: 1,
                  title: "title",
                  locationType: "locationType",
                  location: "location",
                  isFavourite: true,
                ),
                UICity(
                  cityId: 2,
                  title: "title 2",
                  locationType: "locationType 2",
                  location: "location 2",
                  isFavourite: false,
                ),
              ]));
      await tester.pumpAndSettle();

      // Then
      expect(find.byType(TextField), findsOneWidget);
      expect(find.byType(SearchPageLoadingShimmer), findsNothing);
      expect(find.text(englishUS[LocaleKeys.noResultsFound]), findsNothing);
      expect(find.byType(UICityListItem), findsNWidgets(2));

      await multiScreenGolden(
        tester,
        "search_page_result",
        devices: [
          Device.iphone11,
          Device.phone.copyWith(name: "smallPhone"),
          const Device(
            name: "custom_device",
            devicePixelRatio: 2,
            size: Size(540, 960),
          ),
        ],
      );
    },
  );
}
