import 'package:flutter_testing/domain/entity/base/datetime/date.dart';
import 'package:flutter_testing/foundation/global_type_alias.dart';
import 'package:flutter_testing/foundation/mapper/mapper.dart';

abstract class DateMapper extends Mapper<DartDateTime, Date> {}

class DateMapperImpl extends DateMapper {
  @override
  Date map(DartDateTime from) => Date(
        year: from.year,
        month: from.month,
        day: from.day,
      );
}
