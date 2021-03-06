import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_testing/domain/di/domain_module.dart';
import 'package:flutter_testing/flavors/flavor.dart';
import 'package:flutter_testing/flavors/flavor_config.dart';
import 'package:flutter_testing/flavors/flavor_values.dart';
import 'package:flutter_testing/interactor/di/interactor_module.dart';
import 'package:flutter_testing/presentation/base/theme/template_app_theme_data.dart';
import 'package:flutter_testing/presentation/destinations/weather/search/search_page.dart';
import 'package:flutter_testing/presentation/di/presentation_module.dart';
import 'package:flutter_testing/presentation/intl/translations/translation_loader.dart';
import 'package:flutter_testing/repository/di/repository_module.dart';
import 'package:flutter_testing/services/di/service_module.dart';
import 'package:get_it/get_it.dart';

void main() {
  FlavorConfig.initialize(
    flavor: Flavor.dev,
    values: const FlavorValues(
      apiBaseUrl: "https://www.metaweather.com/",
      logSqlStatements: true,
      showLogs: true,
    ),
  );
  startApp();
}

void startApp() async {
  await _initialiseApp();

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale("en", "US")],
      path: "assets/translations",
      fallbackLocale: const Locale("en", "US"),
      assetLoader: const CodegenLoader(),
      child: ProviderScope(
        child: Builder(builder: (context) {
          return MaterialApp(
            theme: lightTheme,
            darkTheme: darkTheme,
            themeMode: ThemeMode.dark,
            home: const SearchPage(),
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
          );
        }),
      ),
    ),
  );
}

Future _initialiseApp() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _initialiseGetIt();

  await EasyLocalization.ensureInitialized();
}

Future _initialiseGetIt() async {
  GetIt.instance
    ..serviceModule()
    ..repositoryModule()
    ..domainModule()
    ..interactorModule()
    ..presentationModule();
}
