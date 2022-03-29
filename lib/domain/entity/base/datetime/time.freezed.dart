// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$TimeTearOff {
  const _$TimeTearOff();

  _Time call(
      {required int hour,
      required int minute,
      required int second,
      required int millisecond}) {
    return _Time(
      hour: hour,
      minute: minute,
      second: second,
      millisecond: millisecond,
    );
  }
}

/// @nodoc
const $Time = _$TimeTearOff();

/// @nodoc
mixin _$Time {
  int get hour => throw _privateConstructorUsedError; // 0 to 23
  int get minute => throw _privateConstructorUsedError; // 0 to 59
  int get second => throw _privateConstructorUsedError; // 0 to 59
  int get millisecond => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TimeCopyWith<Time> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TimeCopyWith<$Res> {
  factory $TimeCopyWith(Time value, $Res Function(Time) then) =
      _$TimeCopyWithImpl<$Res>;
  $Res call({int hour, int minute, int second, int millisecond});
}

/// @nodoc
class _$TimeCopyWithImpl<$Res> implements $TimeCopyWith<$Res> {
  _$TimeCopyWithImpl(this._value, this._then);

  final Time _value;
  // ignore: unused_field
  final $Res Function(Time) _then;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
    Object? second = freezed,
    Object? millisecond = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$TimeCopyWith<$Res> implements $TimeCopyWith<$Res> {
  factory _$TimeCopyWith(_Time value, $Res Function(_Time) then) =
      __$TimeCopyWithImpl<$Res>;
  @override
  $Res call({int hour, int minute, int second, int millisecond});
}

/// @nodoc
class __$TimeCopyWithImpl<$Res> extends _$TimeCopyWithImpl<$Res>
    implements _$TimeCopyWith<$Res> {
  __$TimeCopyWithImpl(_Time _value, $Res Function(_Time) _then)
      : super(_value, (v) => _then(v as _Time));

  @override
  _Time get _value => super._value as _Time;

  @override
  $Res call({
    Object? hour = freezed,
    Object? minute = freezed,
    Object? second = freezed,
    Object? millisecond = freezed,
  }) {
    return _then(_Time(
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

class _$_Time with DiagnosticableTreeMixin implements _Time {
  const _$_Time(
      {required this.hour,
      required this.minute,
      required this.second,
      required this.millisecond});

  @override
  final int hour;
  @override // 0 to 23
  final int minute;
  @override // 0 to 59
  final int second;
  @override // 0 to 59
  final int millisecond;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Time(hour: $hour, minute: $minute, second: $second, millisecond: $millisecond)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Time'))
      ..add(DiagnosticsProperty('hour', hour))
      ..add(DiagnosticsProperty('minute', minute))
      ..add(DiagnosticsProperty('second', second))
      ..add(DiagnosticsProperty('millisecond', millisecond));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Time &&
            const DeepCollectionEquality().equals(other.hour, hour) &&
            const DeepCollectionEquality().equals(other.minute, minute) &&
            const DeepCollectionEquality().equals(other.second, second) &&
            const DeepCollectionEquality()
                .equals(other.millisecond, millisecond));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(hour),
      const DeepCollectionEquality().hash(minute),
      const DeepCollectionEquality().hash(second),
      const DeepCollectionEquality().hash(millisecond));

  @JsonKey(ignore: true)
  @override
  _$TimeCopyWith<_Time> get copyWith =>
      __$TimeCopyWithImpl<_Time>(this, _$identity);
}

abstract class _Time implements Time {
  const factory _Time(
      {required int hour,
      required int minute,
      required int second,
      required int millisecond}) = _$_Time;

  @override
  int get hour;
  @override // 0 to 23
  int get minute;
  @override // 0 to 59
  int get second;
  @override // 0 to 59
  int get millisecond;
  @override
  @JsonKey(ignore: true)
  _$TimeCopyWith<_Time> get copyWith => throw _privateConstructorUsedError;
}
