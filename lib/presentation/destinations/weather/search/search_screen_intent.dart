import 'package:flutter_testing/presentation/entity/intent/intent.dart';
import 'package:flutter_testing/presentation/entity/weather/ui_city.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_screen_intent.freezed.dart';

@freezed
class SearchScreenIntent with _$SearchScreenIntent implements BaseIntent {
  factory SearchScreenIntent.search({required String searchTerm}) =
      _SearchScreenIntent_Search;

  factory SearchScreenIntent.toggleFavorite({required UICity city}) =
      _SearchScreenIntent_Favorite;
}
