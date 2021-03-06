import 'package:flutter_testing/domain/base/usecase/base_unsafe_use_case.dart';
import 'package:flutter_testing/domain/entity/base/datetime/date.dart';
import 'package:tuple/tuple.dart';

abstract class FormatDateUseCase
    extends BaseUnsafeUseCase<Tuple2<Date, String>, String> {}
