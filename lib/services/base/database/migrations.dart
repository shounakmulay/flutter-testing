import 'package:drift/drift.dart';
import 'package:flutter_testing/services/base/database/app_database.dart';

extension MigrationsExt on AppDatabase {
  MigrationStrategy migrations() => MigrationStrategy(
        onUpgrade: (Migrator m, from, to) async {},
      );
}
