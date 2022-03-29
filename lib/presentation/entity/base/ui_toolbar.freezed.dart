// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ui_toolbar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UIToolbarTearOff {
  const _$UIToolbarTearOff();

  _UIToolbar call({required String title, required bool hasBackButton}) {
    return _UIToolbar(
      title: title,
      hasBackButton: hasBackButton,
    );
  }
}

/// @nodoc
const $UIToolbar = _$UIToolbarTearOff();

/// @nodoc
mixin _$UIToolbar {
  String get title => throw _privateConstructorUsedError;
  bool get hasBackButton => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UIToolbarCopyWith<UIToolbar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UIToolbarCopyWith<$Res> {
  factory $UIToolbarCopyWith(UIToolbar value, $Res Function(UIToolbar) then) =
      _$UIToolbarCopyWithImpl<$Res>;
  $Res call({String title, bool hasBackButton});
}

/// @nodoc
class _$UIToolbarCopyWithImpl<$Res> implements $UIToolbarCopyWith<$Res> {
  _$UIToolbarCopyWithImpl(this._value, this._then);

  final UIToolbar _value;
  // ignore: unused_field
  final $Res Function(UIToolbar) _then;

  @override
  $Res call({
    Object? title = freezed,
    Object? hasBackButton = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hasBackButton: hasBackButton == freezed
          ? _value.hasBackButton
          : hasBackButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$UIToolbarCopyWith<$Res> implements $UIToolbarCopyWith<$Res> {
  factory _$UIToolbarCopyWith(
          _UIToolbar value, $Res Function(_UIToolbar) then) =
      __$UIToolbarCopyWithImpl<$Res>;
  @override
  $Res call({String title, bool hasBackButton});
}

/// @nodoc
class __$UIToolbarCopyWithImpl<$Res> extends _$UIToolbarCopyWithImpl<$Res>
    implements _$UIToolbarCopyWith<$Res> {
  __$UIToolbarCopyWithImpl(_UIToolbar _value, $Res Function(_UIToolbar) _then)
      : super(_value, (v) => _then(v as _UIToolbar));

  @override
  _UIToolbar get _value => super._value as _UIToolbar;

  @override
  $Res call({
    Object? title = freezed,
    Object? hasBackButton = freezed,
  }) {
    return _then(_UIToolbar(
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hasBackButton: hasBackButton == freezed
          ? _value.hasBackButton
          : hasBackButton // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_UIToolbar implements _UIToolbar {
  _$_UIToolbar({required this.title, required this.hasBackButton});

  @override
  final String title;
  @override
  final bool hasBackButton;

  @override
  String toString() {
    return 'UIToolbar(title: $title, hasBackButton: $hasBackButton)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UIToolbar &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.hasBackButton, hasBackButton));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(hasBackButton));

  @JsonKey(ignore: true)
  @override
  _$UIToolbarCopyWith<_UIToolbar> get copyWith =>
      __$UIToolbarCopyWithImpl<_UIToolbar>(this, _$identity);
}

abstract class _UIToolbar implements UIToolbar {
  factory _UIToolbar({required String title, required bool hasBackButton}) =
      _$_UIToolbar;

  @override
  String get title;
  @override
  bool get hasBackButton;
  @override
  @JsonKey(ignore: true)
  _$UIToolbarCopyWith<_UIToolbar> get copyWith =>
      throw _privateConstructorUsedError;
}
