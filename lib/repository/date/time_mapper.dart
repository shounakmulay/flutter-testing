import 'package:flutter_testing/domain/entity/base/datetime/time.dart';
import 'package:flutter_testing/foundation/global_type_alias.dart';
import 'package:flutter_testing/foundation/mapper/mapper.dart';

abstract class TimeMapper extends Mapper<DartDateTime, Time> {}

class TimeMapperImpl extends TimeMapper {
  @override
  Time map(DartDateTime from) => Time(
        hour: from.hour,
        minute: from.minute,
        second: from.second,
        millisecond: from.millisecond,
      );
}
