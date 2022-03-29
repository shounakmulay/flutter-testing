import 'package:flutter_template/presentation/destinations/weather/search/search_view_model.dart';
import 'package:flutter_template/presentation/destinations/weather/search/search_view_model_impl.dart';
import 'package:get_it/get_it.dart';

extension PresentationModule on GetIt {
  void presentationModule() {
    // search
    registerFactory<SearchViewModel>(
      () => SearchViewModelImpl(
        searchCityInteractor: get(),
        favoriteWeatherInteractor: get(),
      ),
    );
  }
}
