// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DateTimeTearOff {
  const _$DateTimeTearOff();

  _DateTime call(
      {required int year,
      required int month,
      required int day,
      required int hour,
      required int minute,
      required int second,
      required int millisecond}) {
    return _DateTime(
      year: year,
      month: month,
      day: day,
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
    );
  }
}

/// @nodoc
const $DateTime = _$DateTimeTearOff();

/// @nodoc
mixin _$DateTime {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError; // 1 to 12
  int get day => throw _privateConstructorUsedError; // 1 to 31
  int get hour => throw _privateConstructorUsedError; // 0 to 23
  int get minute => throw _privateConstructorUsedError; // 0 to 59
  int get second => throw _privateConstructorUsedError; // 0 to 59
  int get millisecond => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateTimeCopyWith<DateTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateTimeCopyWith<$Res> {
  factory $DateTimeCopyWith(DateTime value, $Res Function(DateTime) then) =
      _$DateTimeCopyWithImpl<$Res>;
  $Res call(
      {int year,
      int month,
      int day,
      int hour,
      int minute,
      int second,
      int millisecond});
}

/// @nodoc
class _$DateTimeCopyWithImpl<$Res> implements $DateTimeCopyWith<$Res> {
  _$DateTimeCopyWithImpl(this._value, this._then);

  final DateTime _value;
  // ignore: unused_field
  final $Res Function(DateTime) _then;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
    Object? hour = freezed,
    Object? minute = freezed,
    Object? second = freezed,
    Object? millisecond = freezed,
  }) {
    return _then(_value.copyWith(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      millisecond: millisecond == freezed
          ? _value.millisecond
          : millisecond // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$DateTimeCopyWith<$Res> implements $DateTimeCopyWith<$Res> {
  factory _$DateTimeCopyWith(_DateTime value, $Res Function(_DateTime) then) =
      __$DateTimeCopyWithImpl<$Res>;
  @override
  $Res call(
      {int year,
      int month,
      int day,
      int hour,
      int minute,
      int second,
      int millisecond});
}

/// @nodoc
class __$DateTimeCopyWithImpl<$Res> extends _$DateTimeCopyWithImpl<$Res>
    implements _$DateTimeCopyWith<$Res> {
  __$DateTimeCopyWithImpl(_DateTime _value, $Res Function(_DateTime) _then)
      : super(_value, (v) => _then(v as _DateTime));

  @override
  _DateTime get _value => super._value as _DateTime;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
    Object? hour = freezed,
    Object? minute = freezed,
    Object? second = freezed,
    Object? millisecond = freezed,
  }) {
    return _then(_DateTime(
      year: year == freezed
          ? _value.year
          : year // ignore: cast_nullable_to_non_nullable
              as int,
      month: month == freezed
          ? _value.month
          : month // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      hour: hour == freezed
          ? _value.hour
          : hour // ignore: cast_nullable_to_non_nullable
              as int,
      minute: minute == freezed
          ? _value.minute
          : minute // ignore: cast_nullable_to_non_nullable
              as int,
      second: second == freezed
          ? _value.second
          : second // ignore: cast_nullable_to_non_nullable
              as int,
      millisecond: millisecond == freezed
          ? _value.millisecond
          : millisecond // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_DateTime with DiagnosticableTreeMixin implements _DateTime {
  const _$_DateTime(
      {required this.year,
      required this.month,
      required this.day,
      required this.hour,
      required this.minute,
      required this.second,
      required this.millisecond});

  @override
  final int year;
  @override
  final int month;
  @override // 1 to 12
  final int day;
  @override // 1 to 31
  final int hour;
  @override // 0 to 23
  final int minute;
  @override // 0 to 59
  final int second;
  @override // 0 to 59
  final int millisecond;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DateTime(year: $year, month: $month, day: $day, hour: $hour, minute: $minute, second: $second, millisecond: $millisecond)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DateTime'))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('day', day))
      ..add(DiagnosticsProperty('hour', hour))
      ..add(DiagnosticsProperty('minute', minute))
      ..add(DiagnosticsProperty('second', second))
      ..add(DiagnosticsProperty('millisecond', millisecond));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DateTime &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.minute, minute) &&
            const DeepCollectionEquality().equals(other.second, second) &&
            const DeepCollectionEquality()
                .equals(other.millisecond, millisecond));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(minute),
      const DeepCollectionEquality().hash(second),
      const DeepCollectionEquality().hash(millisecond));

  @JsonKey(ignore: true)
  @override
  _$DateTimeCopyWith<_DateTime> get copyWith =>
      __$DateTimeCopyWithImpl<_DateTime>(this, _$identity);
}

abstract class _DateTime implements DateTime {
  const factory _DateTime(
      {required int year,
      required int month,
      required int day,
      required int hour,
      required int minute,
      required int second,
      required int millisecond}) = _$_DateTime;

  @override
  int get year;
  @override
  int get month;
  @override // 1 to 12
  int get day;
  @override // 1 to 31
  int get hour;
  @override // 0 to 23
  int get minute;
  @override // 0 to 59
  int get second;
  @override // 0 to 59
  int get millisecond;
  @override
  @JsonKey(ignore: true)
  _$DateTimeCopyWith<_DateTime> get copyWith =>
      throw _privateConstructorUsedError;
}
