import 'package:flutter_testing/flavors/flavor.dart';
import 'package:flutter_testing/flavors/flavor_config.dart';
import 'package:flutter_testing/flavors/flavor_values.dart';

void baseSetupAll() {
  FlavorConfig.initialize(
    flavor: Flavor.dev,
    values: const FlavorValues(apiBaseUrl: ""),
  );
}
