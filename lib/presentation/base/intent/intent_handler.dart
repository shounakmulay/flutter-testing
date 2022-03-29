import 'package:flutter_testing/presentation/entity/intent/intent.dart';

abstract class IntentHandler<T extends BaseIntent> {
  void onIntent(T intent);
}
