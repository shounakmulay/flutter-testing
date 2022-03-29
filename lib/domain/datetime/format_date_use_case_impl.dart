import 'package:flutter_testing/domain/datetime/format_date_use_case.dart';
import 'package:flutter_testing/domain/entity/base/datetime/date.dart';
import 'package:flutter_testing/repository/date/date_repository.dart';
import 'package:tuple/tuple.dart';

class FormatDateUseCaseImpl extends FormatDateUseCase {
  final DateRepository dateRepository;

  FormatDateUseCaseImpl({required this.dateRepository});

  @override
  String callInternal(Tuple2<Date, String> param) {
    return dateRepository.formatDate(param.item1, param.item2);
  }
}
