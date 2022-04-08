import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_page.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_screen_state.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_view_model.dart';
import 'package:flutter_testing/presentation/entity/base/ui_toolbar.dart';
import 'package:flutter_testing/presentation/intl/translations/translation_keys.dart';
import 'package:get_it/get_it.dart';
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
}
