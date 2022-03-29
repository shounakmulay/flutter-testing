import 'package:flutter/material.dart';
import 'package:flutter_testing/foundation/extensions/theme_ext.dart';
import 'package:flutter_testing/presentation/base/view_model_provider/view_model_provider.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_view_model.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/widgets/search_page_body/search_page_body.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelProvider(
      provider: searchViewModelProvider,
      child: Container(
        color: context.theme.primaryColorDark,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: context.theme.backgroundColor,
            appBar: AppBar(
              title: const Text("Flutter Testing"),
            ),
            body: const SearchPageBody(),
          ),
        ),
      ),
    );
  }
}
