// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'effect.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EffectTearOff {
  const _$EffectTearOff();

  SnackBarEffect snackBar(
      {required String text,
      Duration duration = const Duration(seconds: 4),
      bool closeCurrentSnackbar = true,
      SnackBarBehavior behavior = SnackBarBehavior.floating}) {
    return SnackBarEffect(
      text: text,
      duration: duration,
      closeCurrentSnackbar: closeCurrentSnackbar,
      behavior: behavior,
    );
  }

  HideKeyboardEffect hideKeyboard() {
    return HideKeyboardEffect();
  }
}

/// @nodoc
const $Effect = _$EffectTearOff();

/// @nodoc
mixin _$Effect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function() hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EffectCopyWith<$Res> {
  factory $EffectCopyWith(Effect value, $Res Function(Effect) then) =
      _$EffectCopyWithImpl<$Res>;
}

/// @nodoc
class _$EffectCopyWithImpl<$Res> implements $EffectCopyWith<$Res> {
  _$EffectCopyWithImpl(this._value, this._then);

  final Effect _value;
  // ignore: unused_field
  final $Res Function(Effect) _then;
}

/// @nodoc
abstract class $SnackBarEffectCopyWith<$Res> {
  factory $SnackBarEffectCopyWith(
          SnackBarEffect value, $Res Function(SnackBarEffect) then) =
      _$SnackBarEffectCopyWithImpl<$Res>;
  $Res call(
      {String text,
      Duration duration,
      bool closeCurrentSnackbar,
      SnackBarBehavior behavior});
}

/// @nodoc
class _$SnackBarEffectCopyWithImpl<$Res> extends _$EffectCopyWithImpl<$Res>
    implements $SnackBarEffectCopyWith<$Res> {
  _$SnackBarEffectCopyWithImpl(
      SnackBarEffect _value, $Res Function(SnackBarEffect) _then)
      : super(_value, (v) => _then(v as SnackBarEffect));

  @override
  SnackBarEffect get _value => super._value as SnackBarEffect;

  @override
  $Res call({
    Object? text = freezed,
    Object? duration = freezed,
    Object? closeCurrentSnackbar = freezed,
    Object? behavior = freezed,
  }) {
    return _then(SnackBarEffect(
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      closeCurrentSnackbar: closeCurrentSnackbar == freezed
          ? _value.closeCurrentSnackbar
          : closeCurrentSnackbar // ignore: cast_nullable_to_non_nullable
              as bool,
      behavior: behavior == freezed
          ? _value.behavior
          : behavior // ignore: cast_nullable_to_non_nullable
              as SnackBarBehavior,
    ));
  }
}

/// @nodoc

class _$SnackBarEffect with DiagnosticableTreeMixin implements SnackBarEffect {
  _$SnackBarEffect(
      {required this.text,
      this.duration = const Duration(seconds: 4),
      this.closeCurrentSnackbar = true,
      this.behavior = SnackBarBehavior.floating});

  @override
  final String text;
  @JsonKey()
  @override
  final Duration duration;
  @JsonKey()
  @override
  final bool closeCurrentSnackbar;
  @JsonKey()
  @override
  final SnackBarBehavior behavior;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Effect.snackBar(text: $text, duration: $duration, closeCurrentSnackbar: $closeCurrentSnackbar, behavior: $behavior)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Effect.snackBar'))
      ..add(DiagnosticsProperty('text', text))
      ..add(DiagnosticsProperty('duration', duration))
      ..add(DiagnosticsProperty('closeCurrentSnackbar', closeCurrentSnackbar))
      ..add(DiagnosticsProperty('behavior', behavior));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is SnackBarEffect &&
            const DeepCollectionEquality().equals(other.text, text) &&
            const DeepCollectionEquality().equals(other.duration, duration) &&
            const DeepCollectionEquality()
                .equals(other.closeCurrentSnackbar, closeCurrentSnackbar) &&
            const DeepCollectionEquality().equals(other.behavior, behavior));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(text),
      const DeepCollectionEquality().hash(duration),
      const DeepCollectionEquality().hash(closeCurrentSnackbar),
      const DeepCollectionEquality().hash(behavior));

  @JsonKey(ignore: true)
  @override
  $SnackBarEffectCopyWith<SnackBarEffect> get copyWith =>
      _$SnackBarEffectCopyWithImpl<SnackBarEffect>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function() hideKeyboard,
  }) {
    return snackBar(text, duration, closeCurrentSnackbar, behavior);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
  }) {
    return snackBar?.call(text, duration, closeCurrentSnackbar, behavior);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(text, duration, closeCurrentSnackbar, behavior);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) {
    return snackBar(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
  }) {
    return snackBar?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) {
    if (snackBar != null) {
      return snackBar(this);
    }
    return orElse();
  }
}

abstract class SnackBarEffect implements Effect {
  factory SnackBarEffect(
      {required String text,
      Duration duration,
      bool closeCurrentSnackbar,
      SnackBarBehavior behavior}) = _$SnackBarEffect;

  String get text;
  Duration get duration;
  bool get closeCurrentSnackbar;
  SnackBarBehavior get behavior;
  @JsonKey(ignore: true)
  $SnackBarEffectCopyWith<SnackBarEffect> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HideKeyboardEffectCopyWith<$Res> {
  factory $HideKeyboardEffectCopyWith(
          HideKeyboardEffect value, $Res Function(HideKeyboardEffect) then) =
      _$HideKeyboardEffectCopyWithImpl<$Res>;
}

/// @nodoc
class _$HideKeyboardEffectCopyWithImpl<$Res> extends _$EffectCopyWithImpl<$Res>
    implements $HideKeyboardEffectCopyWith<$Res> {
  _$HideKeyboardEffectCopyWithImpl(
      HideKeyboardEffect _value, $Res Function(HideKeyboardEffect) _then)
      : super(_value, (v) => _then(v as HideKeyboardEffect));

  @override
  HideKeyboardEffect get _value => super._value as HideKeyboardEffect;
}

/// @nodoc

class _$HideKeyboardEffect
    with DiagnosticableTreeMixin
    implements HideKeyboardEffect {
  _$HideKeyboardEffect();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Effect.hideKeyboard()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'Effect.hideKeyboard'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is HideKeyboardEffect);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String text, Duration duration,
            bool closeCurrentSnackbar, SnackBarBehavior behavior)
        snackBar,
    required TResult Function() hideKeyboard,
  }) {
    return hideKeyboard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
  }) {
    return hideKeyboard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String text, Duration duration, bool closeCurrentSnackbar,
            SnackBarBehavior behavior)?
        snackBar,
    TResult Function()? hideKeyboard,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SnackBarEffect value) snackBar,
    required TResult Function(HideKeyboardEffect value) hideKeyboard,
  }) {
    return hideKeyboard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
  }) {
    return hideKeyboard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SnackBarEffect value)? snackBar,
    TResult Function(HideKeyboardEffect value)? hideKeyboard,
    required TResult orElse(),
  }) {
    if (hideKeyboard != null) {
      return hideKeyboard(this);
    }
    return orElse();
  }
}

abstract class HideKeyboardEffect implements Effect {
  factory HideKeyboardEffect() = _$HideKeyboardEffect;
}
