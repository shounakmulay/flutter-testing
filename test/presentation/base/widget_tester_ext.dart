import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/presentation/base/theme/template_app_theme_data.dart';
import 'package:flutter_testing/presentation/intl/translations/translation_loader.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension WidgetTesterExt on WidgetTester {

  Future loadPageForGolden({
    required Widget page,
    required AutoDisposeStateNotifierProvider viewModelProvider,
    required AutoDisposeStateNotifierProvider fakeViewModelProvider,
  }) async {
    TestWidgetsFlutterBinding.ensureInitialized();
    SharedPreferences.setMockInitialValues({});
    await EasyLocalization.ensureInitialized();

    await pumpWidget(
      EasyLocalization(
        supportedLocales: const [Locale("en", "US")],
        path: "assets/translations",
        fallbackLocale: const Locale("en", "US"),
        assetLoader: const CodegenLoader(),
        child: Builder(builder: (context) {
          return MaterialApp(
            theme: lightTheme,
            debugShowCheckedModeBanner: false,
            darkTheme: darkTheme,
            themeMode: ThemeMode.dark,
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            home: ProviderScope(
              overrides: [
                viewModelProvider.overrideWithProvider(fakeViewModelProvider),
              ],
              child: page,
            ),
          );
        }),
      ),
    );
    await pumpAndSettle();
  }

  Future loadWidget({
    required Widget widget,
  }) async {
    await pumpWidget(MaterialApp(home: Scaffold(body: widget)));
  }
}
