import 'package:flutter_testing/presentation/entity/base/ui_list_item.dart';

abstract class SearchCityInteractor {
  Stream<List<UIListItem>> get searchResultsStream;

  Future<void> search(String term);
}
