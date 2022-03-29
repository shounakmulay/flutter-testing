// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchScreenStateTearOff {
  const _$SearchScreenStateTearOff();

  _SearchScreenState call(
      {required UIToolbar toolbar,
      required bool showLoading,
      required List<UIListItem> searchList}) {
    return _SearchScreenState(
      toolbar: toolbar,
      showLoading: showLoading,
      searchList: searchList,
    );
  }
}

/// @nodoc
const $SearchScreenState = _$SearchScreenStateTearOff();

/// @nodoc
mixin _$SearchScreenState {
  UIToolbar get toolbar => throw _privateConstructorUsedError;
  bool get showLoading => throw _privateConstructorUsedError;
  List<UIListItem> get searchList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchScreenStateCopyWith<SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenStateCopyWith<$Res> {
  factory $SearchScreenStateCopyWith(
          SearchScreenState value, $Res Function(SearchScreenState) then) =
      _$SearchScreenStateCopyWithImpl<$Res>;
  $Res call({UIToolbar toolbar, bool showLoading, List<UIListItem> searchList});

  $UIToolbarCopyWith<$Res> get toolbar;
}

/// @nodoc
class _$SearchScreenStateCopyWithImpl<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  _$SearchScreenStateCopyWithImpl(this._value, this._then);

  final SearchScreenState _value;
  // ignore: unused_field
  final $Res Function(SearchScreenState) _then;

  @override
  $Res call({
    Object? toolbar = freezed,
    Object? showLoading = freezed,
    Object? searchList = freezed,
  }) {
    return _then(_value.copyWith(
      toolbar: toolbar == freezed
          ? _value.toolbar
          : toolbar // ignore: cast_nullable_to_non_nullable
              as UIToolbar,
      showLoading: showLoading == freezed
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchList: searchList == freezed
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<UIListItem>,
    ));
  }

  @override
  $UIToolbarCopyWith<$Res> get toolbar {
    return $UIToolbarCopyWith<$Res>(_value.toolbar, (value) {
      return _then(_value.copyWith(toolbar: value));
    });
  }
}

/// @nodoc
abstract class _$SearchScreenStateCopyWith<$Res>
    implements $SearchScreenStateCopyWith<$Res> {
  factory _$SearchScreenStateCopyWith(
          _SearchScreenState value, $Res Function(_SearchScreenState) then) =
      __$SearchScreenStateCopyWithImpl<$Res>;
  @override
  $Res call({UIToolbar toolbar, bool showLoading, List<UIListItem> searchList});

  @override
  $UIToolbarCopyWith<$Res> get toolbar;
}

/// @nodoc
class __$SearchScreenStateCopyWithImpl<$Res>
    extends _$SearchScreenStateCopyWithImpl<$Res>
    implements _$SearchScreenStateCopyWith<$Res> {
  __$SearchScreenStateCopyWithImpl(
      _SearchScreenState _value, $Res Function(_SearchScreenState) _then)
      : super(_value, (v) => _then(v as _SearchScreenState));

  @override
  _SearchScreenState get _value => super._value as _SearchScreenState;

  @override
  $Res call({
    Object? toolbar = freezed,
    Object? showLoading = freezed,
    Object? searchList = freezed,
  }) {
    return _then(_SearchScreenState(
      toolbar: toolbar == freezed
          ? _value.toolbar
          : toolbar // ignore: cast_nullable_to_non_nullable
              as UIToolbar,
      showLoading: showLoading == freezed
          ? _value.showLoading
          : showLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      searchList: searchList == freezed
          ? _value.searchList
          : searchList // ignore: cast_nullable_to_non_nullable
              as List<UIListItem>,
    ));
  }
}

/// @nodoc

class _$_SearchScreenState implements _SearchScreenState {
  _$_SearchScreenState(
      {required this.toolbar,
      required this.showLoading,
      required this.searchList});

  @override
  final UIToolbar toolbar;
  @override
  final bool showLoading;
  @override
  final List<UIListItem> searchList;

  @override
  String toString() {
    return 'SearchScreenState(toolbar: $toolbar, showLoading: $showLoading, searchList: $searchList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchScreenState &&
            const DeepCollectionEquality().equals(other.toolbar, toolbar) &&
            const DeepCollectionEquality()
                .equals(other.showLoading, showLoading) &&
            const DeepCollectionEquality()
                .equals(other.searchList, searchList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(toolbar),
      const DeepCollectionEquality().hash(showLoading),
      const DeepCollectionEquality().hash(searchList));

  @JsonKey(ignore: true)
  @override
  _$SearchScreenStateCopyWith<_SearchScreenState> get copyWith =>
      __$SearchScreenStateCopyWithImpl<_SearchScreenState>(this, _$identity);
}

abstract class _SearchScreenState implements SearchScreenState {
  factory _SearchScreenState(
      {required UIToolbar toolbar,
      required bool showLoading,
      required List<UIListItem> searchList}) = _$_SearchScreenState;

  @override
  UIToolbar get toolbar;
  @override
  bool get showLoading;
  @override
  List<UIListItem> get searchList;
  @override
  @JsonKey(ignore: true)
  _$SearchScreenStateCopyWith<_SearchScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
