// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ui_city.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UICityTearOff {
  const _$UICityTearOff();

  _UICity call(
      {required int cityId,
      required String title,
      required String locationType,
      required String location,
      required bool isFavourite}) {
    return _UICity(
      cityId: cityId,
      title: title,
      locationType: locationType,
      location: location,
      isFavourite: isFavourite,
    );
  }
}

/// @nodoc
const $UICity = _$UICityTearOff();

/// @nodoc
mixin _$UICity {
  int get cityId => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get locationType => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  bool get isFavourite => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UICityCopyWith<UICity> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UICityCopyWith<$Res> {
  factory $UICityCopyWith(UICity value, $Res Function(UICity) then) =
      _$UICityCopyWithImpl<$Res>;
  $Res call(
      {int cityId,
      String title,
      String locationType,
      String location,
      bool isFavourite});
}

/// @nodoc
class _$UICityCopyWithImpl<$Res> implements $UICityCopyWith<$Res> {
  _$UICityCopyWithImpl(this._value, this._then);

  final UICity _value;
  // ignore: unused_field
  final $Res Function(UICity) _then;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? title = freezed,
    Object? locationType = freezed,
    Object? location = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_value.copyWith(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UICityCopyWith<$Res> implements $UICityCopyWith<$Res> {
  factory _$UICityCopyWith(_UICity value, $Res Function(_UICity) then) =
      __$UICityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int cityId,
      String title,
      String locationType,
      String location,
      bool isFavourite});
}

/// @nodoc
class __$UICityCopyWithImpl<$Res> extends _$UICityCopyWithImpl<$Res>
    implements _$UICityCopyWith<$Res> {
  __$UICityCopyWithImpl(_UICity _value, $Res Function(_UICity) _then)
      : super(_value, (v) => _then(v as _UICity));

  @override
  _UICity get _value => super._value as _UICity;

  @override
  $Res call({
    Object? cityId = freezed,
    Object? title = freezed,
    Object? locationType = freezed,
    Object? location = freezed,
    Object? isFavourite = freezed,
  }) {
    return _then(_UICity(
      cityId: cityId == freezed
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as int,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      locationType: locationType == freezed
          ? _value.locationType
          : locationType // ignore: cast_nullable_to_non_nullable
              as String,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      isFavourite: isFavourite == freezed
          ? _value.isFavourite
          : isFavourite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UICity extends _UICity {
  _$_UICity(
      {required this.cityId,
      required this.title,
      required this.locationType,
      required this.location,
      required this.isFavourite})
      : super._();

  @override
  final int cityId;
  @override
  final String title;
  @override
  final String locationType;
  @override
  final String location;
  @override
  final bool isFavourite;

  @override
  String toString() {
    return 'UICity(cityId: $cityId, title: $title, locationType: $locationType, location: $location, isFavourite: $isFavourite)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UICity &&
            const DeepCollectionEquality().equals(other.cityId, cityId) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.locationType, locationType) &&
            const DeepCollectionEquality().equals(other.location, location) &&
            const DeepCollectionEquality()
                .equals(other.isFavourite, isFavourite));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(cityId),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(locationType),
      const DeepCollectionEquality().hash(location),
      const DeepCollectionEquality().hash(isFavourite));

  @JsonKey(ignore: true)
  @override
  _$UICityCopyWith<_UICity> get copyWith =>
      __$UICityCopyWithImpl<_UICity>(this, _$identity);
}

abstract class _UICity extends UICity {
  factory _UICity(
      {required int cityId,
      required String title,
      required String locationType,
      required String location,
      required bool isFavourite}) = _$_UICity;
  _UICity._() : super._();

  @override
  int get cityId;
  @override
  String get title;
  @override
  String get locationType;
  @override
  String get location;
  @override
  bool get isFavourite;
  @override
  @JsonKey(ignore: true)
  _$UICityCopyWith<_UICity> get copyWith => throw _privateConstructorUsedError;
}
