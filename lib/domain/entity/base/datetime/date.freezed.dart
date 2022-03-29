// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'date.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$DateTearOff {
  const _$DateTearOff();

  _Date call({required int year, required int month, required int day}) {
    return _Date(
      year: year,
      month: month,
      day: day,
    );
  }
}

/// @nodoc
const $Date = _$DateTearOff();

/// @nodoc
mixin _$Date {
  int get year => throw _privateConstructorUsedError;
  int get month => throw _privateConstructorUsedError; // 1 to 12
  int get day => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DateCopyWith<Date> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DateCopyWith<$Res> {
  factory $DateCopyWith(Date value, $Res Function(Date) then) =
      _$DateCopyWithImpl<$Res>;
  $Res call({int year, int month, int day});
}

/// @nodoc
class _$DateCopyWithImpl<$Res> implements $DateCopyWith<$Res> {
  _$DateCopyWithImpl(this._value, this._then);

  final Date _value;
  // ignore: unused_field
  final $Res Function(Date) _then;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$DateCopyWith<$Res> implements $DateCopyWith<$Res> {
  factory _$DateCopyWith(_Date value, $Res Function(_Date) then) =
      __$DateCopyWithImpl<$Res>;
  @override
  $Res call({int year, int month, int day});
}

/// @nodoc
class __$DateCopyWithImpl<$Res> extends _$DateCopyWithImpl<$Res>
    implements _$DateCopyWith<$Res> {
  __$DateCopyWithImpl(_Date _value, $Res Function(_Date) _then)
      : super(_value, (v) => _then(v as _Date));

  @override
  _Date get _value => super._value as _Date;

  @override
  $Res call({
    Object? year = freezed,
    Object? month = freezed,
    Object? day = freezed,
  }) {
    return _then(_Date(
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
    ));
  }
}

/// @nodoc

class _$_Date with DiagnosticableTreeMixin implements _Date {
  const _$_Date({required this.year, required this.month, required this.day});

  @override
  final int year;
  @override
  final int month;
  @override // 1 to 12
  final int day;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Date(year: $year, month: $month, day: $day)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Date'))
      ..add(DiagnosticsProperty('year', year))
      ..add(DiagnosticsProperty('month', month))
      ..add(DiagnosticsProperty('day', day));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Date &&
            const DeepCollectionEquality().equals(other.year, year) &&
            const DeepCollectionEquality().equals(other.month, month) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(year),
      const DeepCollectionEquality().hash(month),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$DateCopyWith<_Date> get copyWith =>
      __$DateCopyWithImpl<_Date>(this, _$identity);
}

abstract class _Date implements Date {
  const factory _Date(
      {required int year, required int month, required int day}) = _$_Date;

  @override
  int get year;
  @override
  int get month;
  @override // 1 to 12
  int get day;
  @override
  @JsonKey(ignore: true)
  _$DateCopyWith<_Date> get copyWith => throw _privateConstructorUsedError;
}
