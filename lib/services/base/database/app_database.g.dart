// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class LocalCityData extends DataClass implements Insertable<LocalCityData> {
  final int woeid;
  final String title;
  final String locationType;
  final String location;
  LocalCityData(
      {required this.woeid,
      required this.title,
      required this.locationType,
      required this.location});
  factory LocalCityData.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LocalCityData(
      woeid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}woeid'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      locationType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}location_type'])!,
      location: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}location'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['woeid'] = Variable<int>(woeid);
    map['title'] = Variable<String>(title);
    map['location_type'] = Variable<String>(locationType);
    map['location'] = Variable<String>(location);
    return map;
  }

  LocalCityCompanion toCompanion(bool nullToAbsent) {
    return LocalCityCompanion(
      woeid: Value(woeid),
      title: Value(title),
      locationType: Value(locationType),
      location: Value(location),
    );
  }

  factory LocalCityData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalCityData(
      woeid: serializer.fromJson<int>(json['woeid']),
      title: serializer.fromJson<String>(json['title']),
      locationType: serializer.fromJson<String>(json['locationType']),
      location: serializer.fromJson<String>(json['location']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'woeid': serializer.toJson<int>(woeid),
      'title': serializer.toJson<String>(title),
      'locationType': serializer.toJson<String>(locationType),
      'location': serializer.toJson<String>(location),
    };
  }

  LocalCityData copyWith(
          {int? woeid,
          String? title,
          String? locationType,
          String? location}) =>
      LocalCityData(
        woeid: woeid ?? this.woeid,
        title: title ?? this.title,
        locationType: locationType ?? this.locationType,
        location: location ?? this.location,
      );
  @override
  String toString() {
    return (StringBuffer('LocalCityData(')
          ..write('woeid: $woeid, ')
          ..write('title: $title, ')
          ..write('locationType: $locationType, ')
          ..write('location: $location')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(woeid, title, locationType, location);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalCityData &&
          other.woeid == this.woeid &&
          other.title == this.title &&
          other.locationType == this.locationType &&
          other.location == this.location);
}

class LocalCityCompanion extends UpdateCompanion<LocalCityData> {
  final Value<int> woeid;
  final Value<String> title;
  final Value<String> locationType;
  final Value<String> location;
  const LocalCityCompanion({
    this.woeid = const Value.absent(),
    this.title = const Value.absent(),
    this.locationType = const Value.absent(),
    this.location = const Value.absent(),
  });
  LocalCityCompanion.insert({
    this.woeid = const Value.absent(),
    required String title,
    required String locationType,
    required String location,
  })  : title = Value(title),
        locationType = Value(locationType),
        location = Value(location);
  static Insertable<LocalCityData> custom({
    Expression<int>? woeid,
    Expression<String>? title,
    Expression<String>? locationType,
    Expression<String>? location,
  }) {
    return RawValuesInsertable({
      if (woeid != null) 'woeid': woeid,
      if (title != null) 'title': title,
      if (locationType != null) 'location_type': locationType,
      if (location != null) 'location': location,
    });
  }

  LocalCityCompanion copyWith(
      {Value<int>? woeid,
      Value<String>? title,
      Value<String>? locationType,
      Value<String>? location}) {
    return LocalCityCompanion(
      woeid: woeid ?? this.woeid,
      title: title ?? this.title,
      locationType: locationType ?? this.locationType,
      location: location ?? this.location,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (woeid.present) {
      map['woeid'] = Variable<int>(woeid.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (locationType.present) {
      map['location_type'] = Variable<String>(locationType.value);
    }
    if (location.present) {
      map['location'] = Variable<String>(location.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalCityCompanion(')
          ..write('woeid: $woeid, ')
          ..write('title: $title, ')
          ..write('locationType: $locationType, ')
          ..write('location: $location')
          ..write(')'))
        .toString();
  }
}

class $LocalCityTable extends LocalCity
    with TableInfo<$LocalCityTable, LocalCityData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $LocalCityTable(this._db, [this._alias]);
  final VerificationMeta _woeidMeta = const VerificationMeta('woeid');
  @override
  late final GeneratedColumn<int?> woeid = GeneratedColumn<int?>(
      'woeid', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _locationTypeMeta =
      const VerificationMeta('locationType');
  @override
  late final GeneratedColumn<String?> locationType = GeneratedColumn<String?>(
      'location_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _locationMeta = const VerificationMeta('location');
  @override
  late final GeneratedColumn<String?> location = GeneratedColumn<String?>(
      'location', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [woeid, title, locationType, location];
  @override
  String get aliasedName => _alias ?? 'local_city';
  @override
  String get actualTableName => 'local_city';
  @override
  VerificationContext validateIntegrity(Insertable<LocalCityData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('woeid')) {
      context.handle(
          _woeidMeta, woeid.isAcceptableOrUnknown(data['woeid']!, _woeidMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('location_type')) {
      context.handle(
          _locationTypeMeta,
          locationType.isAcceptableOrUnknown(
              data['location_type']!, _locationTypeMeta));
    } else if (isInserting) {
      context.missing(_locationTypeMeta);
    }
    if (data.containsKey('location')) {
      context.handle(_locationMeta,
          location.isAcceptableOrUnknown(data['location']!, _locationMeta));
    } else if (isInserting) {
      context.missing(_locationMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {woeid};
  @override
  LocalCityData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LocalCityData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LocalCityTable createAlias(String alias) {
    return $LocalCityTable(_db, alias);
  }
}

class LocalDayWeatherData extends DataClass
    implements Insertable<LocalDayWeatherData> {
  final int id;
  final int cityWoeid;
  final int temp;
  final int minTemp;
  final int maxTemp;
  final DateTime date;
  LocalDayWeatherData(
      {required this.id,
      required this.cityWoeid,
      required this.temp,
      required this.minTemp,
      required this.maxTemp,
      required this.date});
  factory LocalDayWeatherData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LocalDayWeatherData(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      cityWoeid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city_woeid'])!,
      temp: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}temp'])!,
      minTemp: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}min_temp'])!,
      maxTemp: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}max_temp'])!,
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}date'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['city_woeid'] = Variable<int>(cityWoeid);
    map['temp'] = Variable<int>(temp);
    map['min_temp'] = Variable<int>(minTemp);
    map['max_temp'] = Variable<int>(maxTemp);
    map['date'] = Variable<DateTime>(date);
    return map;
  }

  LocalDayWeatherCompanion toCompanion(bool nullToAbsent) {
    return LocalDayWeatherCompanion(
      id: Value(id),
      cityWoeid: Value(cityWoeid),
      temp: Value(temp),
      minTemp: Value(minTemp),
      maxTemp: Value(maxTemp),
      date: Value(date),
    );
  }

  factory LocalDayWeatherData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalDayWeatherData(
      id: serializer.fromJson<int>(json['id']),
      cityWoeid: serializer.fromJson<int>(json['cityWoeid']),
      temp: serializer.fromJson<int>(json['temp']),
      minTemp: serializer.fromJson<int>(json['minTemp']),
      maxTemp: serializer.fromJson<int>(json['maxTemp']),
      date: serializer.fromJson<DateTime>(json['date']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'cityWoeid': serializer.toJson<int>(cityWoeid),
      'temp': serializer.toJson<int>(temp),
      'minTemp': serializer.toJson<int>(minTemp),
      'maxTemp': serializer.toJson<int>(maxTemp),
      'date': serializer.toJson<DateTime>(date),
    };
  }

  LocalDayWeatherData copyWith(
          {int? id,
          int? cityWoeid,
          int? temp,
          int? minTemp,
          int? maxTemp,
          DateTime? date}) =>
      LocalDayWeatherData(
        id: id ?? this.id,
        cityWoeid: cityWoeid ?? this.cityWoeid,
        temp: temp ?? this.temp,
        minTemp: minTemp ?? this.minTemp,
        maxTemp: maxTemp ?? this.maxTemp,
        date: date ?? this.date,
      );
  @override
  String toString() {
    return (StringBuffer('LocalDayWeatherData(')
          ..write('id: $id, ')
          ..write('cityWoeid: $cityWoeid, ')
          ..write('temp: $temp, ')
          ..write('minTemp: $minTemp, ')
          ..write('maxTemp: $maxTemp, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, cityWoeid, temp, minTemp, maxTemp, date);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalDayWeatherData &&
          other.id == this.id &&
          other.cityWoeid == this.cityWoeid &&
          other.temp == this.temp &&
          other.minTemp == this.minTemp &&
          other.maxTemp == this.maxTemp &&
          other.date == this.date);
}

class LocalDayWeatherCompanion extends UpdateCompanion<LocalDayWeatherData> {
  final Value<int> id;
  final Value<int> cityWoeid;
  final Value<int> temp;
  final Value<int> minTemp;
  final Value<int> maxTemp;
  final Value<DateTime> date;
  const LocalDayWeatherCompanion({
    this.id = const Value.absent(),
    this.cityWoeid = const Value.absent(),
    this.temp = const Value.absent(),
    this.minTemp = const Value.absent(),
    this.maxTemp = const Value.absent(),
    this.date = const Value.absent(),
  });
  LocalDayWeatherCompanion.insert({
    this.id = const Value.absent(),
    required int cityWoeid,
    required int temp,
    required int minTemp,
    required int maxTemp,
    required DateTime date,
  })  : cityWoeid = Value(cityWoeid),
        temp = Value(temp),
        minTemp = Value(minTemp),
        maxTemp = Value(maxTemp),
        date = Value(date);
  static Insertable<LocalDayWeatherData> custom({
    Expression<int>? id,
    Expression<int>? cityWoeid,
    Expression<int>? temp,
    Expression<int>? minTemp,
    Expression<int>? maxTemp,
    Expression<DateTime>? date,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (cityWoeid != null) 'city_woeid': cityWoeid,
      if (temp != null) 'temp': temp,
      if (minTemp != null) 'min_temp': minTemp,
      if (maxTemp != null) 'max_temp': maxTemp,
      if (date != null) 'date': date,
    });
  }

  LocalDayWeatherCompanion copyWith(
      {Value<int>? id,
      Value<int>? cityWoeid,
      Value<int>? temp,
      Value<int>? minTemp,
      Value<int>? maxTemp,
      Value<DateTime>? date}) {
    return LocalDayWeatherCompanion(
      id: id ?? this.id,
      cityWoeid: cityWoeid ?? this.cityWoeid,
      temp: temp ?? this.temp,
      minTemp: minTemp ?? this.minTemp,
      maxTemp: maxTemp ?? this.maxTemp,
      date: date ?? this.date,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (cityWoeid.present) {
      map['city_woeid'] = Variable<int>(cityWoeid.value);
    }
    if (temp.present) {
      map['temp'] = Variable<int>(temp.value);
    }
    if (minTemp.present) {
      map['min_temp'] = Variable<int>(minTemp.value);
    }
    if (maxTemp.present) {
      map['max_temp'] = Variable<int>(maxTemp.value);
    }
    if (date.present) {
      map['date'] = Variable<DateTime>(date.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalDayWeatherCompanion(')
          ..write('id: $id, ')
          ..write('cityWoeid: $cityWoeid, ')
          ..write('temp: $temp, ')
          ..write('minTemp: $minTemp, ')
          ..write('maxTemp: $maxTemp, ')
          ..write('date: $date')
          ..write(')'))
        .toString();
  }
}

class $LocalDayWeatherTable extends LocalDayWeather
    with TableInfo<$LocalDayWeatherTable, LocalDayWeatherData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $LocalDayWeatherTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _cityWoeidMeta = const VerificationMeta('cityWoeid');
  @override
  late final GeneratedColumn<int?> cityWoeid = GeneratedColumn<int?>(
      'city_woeid', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _tempMeta = const VerificationMeta('temp');
  @override
  late final GeneratedColumn<int?> temp = GeneratedColumn<int?>(
      'temp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _minTempMeta = const VerificationMeta('minTemp');
  @override
  late final GeneratedColumn<int?> minTemp = GeneratedColumn<int?>(
      'min_temp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _maxTempMeta = const VerificationMeta('maxTemp');
  @override
  late final GeneratedColumn<int?> maxTemp = GeneratedColumn<int?>(
      'max_temp', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'date', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, cityWoeid, temp, minTemp, maxTemp, date];
  @override
  String get aliasedName => _alias ?? 'local_day_weather';
  @override
  String get actualTableName => 'local_day_weather';
  @override
  VerificationContext validateIntegrity(
      Insertable<LocalDayWeatherData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('city_woeid')) {
      context.handle(_cityWoeidMeta,
          cityWoeid.isAcceptableOrUnknown(data['city_woeid']!, _cityWoeidMeta));
    } else if (isInserting) {
      context.missing(_cityWoeidMeta);
    }
    if (data.containsKey('temp')) {
      context.handle(
          _tempMeta, temp.isAcceptableOrUnknown(data['temp']!, _tempMeta));
    } else if (isInserting) {
      context.missing(_tempMeta);
    }
    if (data.containsKey('min_temp')) {
      context.handle(_minTempMeta,
          minTemp.isAcceptableOrUnknown(data['min_temp']!, _minTempMeta));
    } else if (isInserting) {
      context.missing(_minTempMeta);
    }
    if (data.containsKey('max_temp')) {
      context.handle(_maxTempMeta,
          maxTemp.isAcceptableOrUnknown(data['max_temp']!, _maxTempMeta));
    } else if (isInserting) {
      context.missing(_maxTempMeta);
    }
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LocalDayWeatherData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LocalDayWeatherData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LocalDayWeatherTable createAlias(String alias) {
    return $LocalDayWeatherTable(_db, alias);
  }
}

class LocalWeatherData extends DataClass
    implements Insertable<LocalWeatherData> {
  final int cityWoeid;
  final String title;
  LocalWeatherData({required this.cityWoeid, required this.title});
  factory LocalWeatherData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LocalWeatherData(
      cityWoeid: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}city_woeid'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['city_woeid'] = Variable<int>(cityWoeid);
    map['title'] = Variable<String>(title);
    return map;
  }

  LocalWeatherCompanion toCompanion(bool nullToAbsent) {
    return LocalWeatherCompanion(
      cityWoeid: Value(cityWoeid),
      title: Value(title),
    );
  }

  factory LocalWeatherData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LocalWeatherData(
      cityWoeid: serializer.fromJson<int>(json['cityWoeid']),
      title: serializer.fromJson<String>(json['title']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cityWoeid': serializer.toJson<int>(cityWoeid),
      'title': serializer.toJson<String>(title),
    };
  }

  LocalWeatherData copyWith({int? cityWoeid, String? title}) =>
      LocalWeatherData(
        cityWoeid: cityWoeid ?? this.cityWoeid,
        title: title ?? this.title,
      );
  @override
  String toString() {
    return (StringBuffer('LocalWeatherData(')
          ..write('cityWoeid: $cityWoeid, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(cityWoeid, title);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LocalWeatherData &&
          other.cityWoeid == this.cityWoeid &&
          other.title == this.title);
}

class LocalWeatherCompanion extends UpdateCompanion<LocalWeatherData> {
  final Value<int> cityWoeid;
  final Value<String> title;
  const LocalWeatherCompanion({
    this.cityWoeid = const Value.absent(),
    this.title = const Value.absent(),
  });
  LocalWeatherCompanion.insert({
    this.cityWoeid = const Value.absent(),
    required String title,
  }) : title = Value(title);
  static Insertable<LocalWeatherData> custom({
    Expression<int>? cityWoeid,
    Expression<String>? title,
  }) {
    return RawValuesInsertable({
      if (cityWoeid != null) 'city_woeid': cityWoeid,
      if (title != null) 'title': title,
    });
  }

  LocalWeatherCompanion copyWith(
      {Value<int>? cityWoeid, Value<String>? title}) {
    return LocalWeatherCompanion(
      cityWoeid: cityWoeid ?? this.cityWoeid,
      title: title ?? this.title,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cityWoeid.present) {
      map['city_woeid'] = Variable<int>(cityWoeid.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocalWeatherCompanion(')
          ..write('cityWoeid: $cityWoeid, ')
          ..write('title: $title')
          ..write(')'))
        .toString();
  }
}

class $LocalWeatherTable extends LocalWeather
    with TableInfo<$LocalWeatherTable, LocalWeatherData> {
  final GeneratedDatabase _db;
  final String? _alias;
  $LocalWeatherTable(this._db, [this._alias]);
  final VerificationMeta _cityWoeidMeta = const VerificationMeta('cityWoeid');
  @override
  late final GeneratedColumn<int?> cityWoeid = GeneratedColumn<int?>(
      'city_woeid', aliasedName, false,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [cityWoeid, title];
  @override
  String get aliasedName => _alias ?? 'local_weather';
  @override
  String get actualTableName => 'local_weather';
  @override
  VerificationContext validateIntegrity(Insertable<LocalWeatherData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('city_woeid')) {
      context.handle(_cityWoeidMeta,
          cityWoeid.isAcceptableOrUnknown(data['city_woeid']!, _cityWoeidMeta));
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cityWoeid};
  @override
  LocalWeatherData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LocalWeatherData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LocalWeatherTable createAlias(String alias) {
    return $LocalWeatherTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $LocalCityTable localCity = $LocalCityTable(this);
  late final $LocalDayWeatherTable localDayWeather =
      $LocalDayWeatherTable(this);
  late final $LocalWeatherTable localWeather = $LocalWeatherTable(this);
  late final WeatherLocalServiceImpl weatherLocalServiceImpl =
      WeatherLocalServiceImpl(this as AppDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [localCity, localDayWeather, localWeather];
}
