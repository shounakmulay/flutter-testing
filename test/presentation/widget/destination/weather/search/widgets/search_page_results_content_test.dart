import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_screen_intent.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/widgets/list/ui_city_list_item.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/widgets/search_page_loading_shimmer/search_page_loading_shimmer.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/widgets/search_page_results/search_page_results_content.dart';
import 'package:flutter_testing/presentation/entity/weather/ui_city.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../mocks/mocks.dart';
import '../../../../../base/widget_tester_ext.dart';

void main() {
  late MockIntentHandler intentHandler;

  setUp(() {
    intentHandler = MockIntentHandler();
  });

  tearDown(() {
    resetMocktailState();
  });

  _loadWidget(WidgetTester tester, SearchPageResultsContent widget) async {
    await tester.loadWidget(
      widget: Flex(
        direction: Axis.vertical,
        children: [
          widget,
        ],
      ),
    );
  }

  testWidgets(
      "Given showLoading is false, When results are present, Then results should be displayed",
      (WidgetTester tester) async {
    // Given
    await _loadWidget(
      tester,
      SearchPageResultsContent(
        showLoading: true,
        searchList: [],
        searchTerm: "",
        intentHandlerCallback: (_) {},
        searchResultsPlaceholder: "",
        noResultsPlaceholder: "",
      ),
    );
    // When

    // Then
    expect(find.byType(SearchPageLoadingShimmer), findsOneWidget);
    expect(find.byType(Text), findsNothing);
  });

  testWidgets(
      "Given showLoading is false, When results are present, Then results should be displayed",
      (tester) async {
    // Given
    final uiCity = UICity(
      cityId: 1,
      title: "title",
      locationType: "locationType",
      location: "location",
      isFavourite: false,
    );

    final searchList = [
      uiCity,
      uiCity.copyWith(cityId: 2, title: "title 2", isFavourite: true),
    ];
    await _loadWidget(
      tester,
      SearchPageResultsContent(
        showLoading: false,
        searchList: searchList,
        searchTerm: "",
        intentHandlerCallback: (_) {},
        searchResultsPlaceholder: "",
        noResultsPlaceholder: "",
      ),
    );

    // When

    // Then
    expect(find.byType(SearchPageLoadingShimmer), findsNothing);
    expect(find.byType(UICityListItem), findsNWidgets(2));
  });

  testWidgets(
      "Given search list is not empty, When favorite icon is tapped, Then intent handler callback is called with correct intent",
      (tester) async {
    // Given
    final uiCity = UICity(
      cityId: 1,
      title: "title",
      locationType: "locationType",
      location: "location",
      isFavourite: false,
    );

    final searchList = [
      uiCity,
      uiCity.copyWith(cityId: 2, title: "title 2", isFavourite: true),
    ];
    await _loadWidget(
      tester,
      SearchPageResultsContent(
        showLoading: false,
        searchList: searchList,
        searchTerm: "searchTerm",
        intentHandlerCallback: intentHandler.onIntent,
        searchResultsPlaceholder: "",
        noResultsPlaceholder: "",
      ),
    );

    // When
    await tester.tap(find.byIcon(Icons.favorite_border));
    await tester.pumpAndSettle();

    // Then
    verify(
      () => intentHandler.onIntent(
        SearchScreenIntent.toggleFavorite(
          city: searchList.first,
        ),
      ),
    ).called(1);
  });
}
