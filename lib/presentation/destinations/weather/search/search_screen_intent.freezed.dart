// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'search_screen_intent.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SearchScreenIntentTearOff {
  const _$SearchScreenIntentTearOff();

  _SearchScreenIntent_Search search({required String searchTerm}) {
    return _SearchScreenIntent_Search(
      searchTerm: searchTerm,
    );
  }

  _SearchScreenIntent_Favorite toggleFavorite({required UICity city}) {
    return _SearchScreenIntent_Favorite(
      city: city,
    );
  }
}

/// @nodoc
const $SearchScreenIntent = _$SearchScreenIntentTearOff();

/// @nodoc
mixin _$SearchScreenIntent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) search,
    required TResult Function(UICity city) toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchTerm)? search,
    TResult Function(UICity city)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? search,
    TResult Function(UICity city)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchScreenIntent_Search value) search,
    required TResult Function(_SearchScreenIntent_Favorite value)
        toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchScreenIntent_Search value)? search,
    TResult Function(_SearchScreenIntent_Favorite value)? toggleFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchScreenIntent_Search value)? search,
    TResult Function(_SearchScreenIntent_Favorite value)? toggleFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchScreenIntentCopyWith<$Res> {
  factory $SearchScreenIntentCopyWith(
          SearchScreenIntent value, $Res Function(SearchScreenIntent) then) =
      _$SearchScreenIntentCopyWithImpl<$Res>;
}

/// @nodoc
class _$SearchScreenIntentCopyWithImpl<$Res>
    implements $SearchScreenIntentCopyWith<$Res> {
  _$SearchScreenIntentCopyWithImpl(this._value, this._then);

  final SearchScreenIntent _value;
  // ignore: unused_field
  final $Res Function(SearchScreenIntent) _then;
}

/// @nodoc
abstract class _$SearchScreenIntent_SearchCopyWith<$Res> {
  factory _$SearchScreenIntent_SearchCopyWith(_SearchScreenIntent_Search value,
          $Res Function(_SearchScreenIntent_Search) then) =
      __$SearchScreenIntent_SearchCopyWithImpl<$Res>;
  $Res call({String searchTerm});
}

/// @nodoc
class __$SearchScreenIntent_SearchCopyWithImpl<$Res>
    extends _$SearchScreenIntentCopyWithImpl<$Res>
    implements _$SearchScreenIntent_SearchCopyWith<$Res> {
  __$SearchScreenIntent_SearchCopyWithImpl(_SearchScreenIntent_Search _value,
      $Res Function(_SearchScreenIntent_Search) _then)
      : super(_value, (v) => _then(v as _SearchScreenIntent_Search));

  @override
  _SearchScreenIntent_Search get _value =>
      super._value as _SearchScreenIntent_Search;

  @override
  $Res call({
    Object? searchTerm = freezed,
  }) {
    return _then(_SearchScreenIntent_Search(
      searchTerm: searchTerm == freezed
          ? _value.searchTerm
          : searchTerm // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SearchScreenIntent_Search implements _SearchScreenIntent_Search {
  _$_SearchScreenIntent_Search({required this.searchTerm});

  @override
  final String searchTerm;

  @override
  String toString() {
    return 'SearchScreenIntent.search(searchTerm: $searchTerm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchScreenIntent_Search &&
            const DeepCollectionEquality()
                .equals(other.searchTerm, searchTerm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(searchTerm));

  @JsonKey(ignore: true)
  @override
  _$SearchScreenIntent_SearchCopyWith<_SearchScreenIntent_Search>
      get copyWith =>
          __$SearchScreenIntent_SearchCopyWithImpl<_SearchScreenIntent_Search>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) search,
    required TResult Function(UICity city) toggleFavorite,
  }) {
    return search(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchTerm)? search,
    TResult Function(UICity city)? toggleFavorite,
  }) {
    return search?.call(searchTerm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? search,
    TResult Function(UICity city)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchTerm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchScreenIntent_Search value) search,
    required TResult Function(_SearchScreenIntent_Favorite value)
        toggleFavorite,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchScreenIntent_Search value)? search,
    TResult Function(_SearchScreenIntent_Favorite value)? toggleFavorite,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchScreenIntent_Search value)? search,
    TResult Function(_SearchScreenIntent_Favorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _SearchScreenIntent_Search implements SearchScreenIntent {
  factory _SearchScreenIntent_Search({required String searchTerm}) =
      _$_SearchScreenIntent_Search;

  String get searchTerm;
  @JsonKey(ignore: true)
  _$SearchScreenIntent_SearchCopyWith<_SearchScreenIntent_Search>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SearchScreenIntent_FavoriteCopyWith<$Res> {
  factory _$SearchScreenIntent_FavoriteCopyWith(
          _SearchScreenIntent_Favorite value,
          $Res Function(_SearchScreenIntent_Favorite) then) =
      __$SearchScreenIntent_FavoriteCopyWithImpl<$Res>;
  $Res call({UICity city});

  $UICityCopyWith<$Res> get city;
}

/// @nodoc
class __$SearchScreenIntent_FavoriteCopyWithImpl<$Res>
    extends _$SearchScreenIntentCopyWithImpl<$Res>
    implements _$SearchScreenIntent_FavoriteCopyWith<$Res> {
  __$SearchScreenIntent_FavoriteCopyWithImpl(
      _SearchScreenIntent_Favorite _value,
      $Res Function(_SearchScreenIntent_Favorite) _then)
      : super(_value, (v) => _then(v as _SearchScreenIntent_Favorite));

  @override
  _SearchScreenIntent_Favorite get _value =>
      super._value as _SearchScreenIntent_Favorite;

  @override
  $Res call({
    Object? city = freezed,
  }) {
    return _then(_SearchScreenIntent_Favorite(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as UICity,
    ));
  }

  @override
  $UICityCopyWith<$Res> get city {
    return $UICityCopyWith<$Res>(_value.city, (value) {
      return _then(_value.copyWith(city: value));
    });
  }
}

/// @nodoc

class _$_SearchScreenIntent_Favorite implements _SearchScreenIntent_Favorite {
  _$_SearchScreenIntent_Favorite({required this.city});

  @override
  final UICity city;

  @override
  String toString() {
    return 'SearchScreenIntent.toggleFavorite(city: $city)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SearchScreenIntent_Favorite &&
            const DeepCollectionEquality().equals(other.city, city));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(city));

  @JsonKey(ignore: true)
  @override
  _$SearchScreenIntent_FavoriteCopyWith<_SearchScreenIntent_Favorite>
      get copyWith => __$SearchScreenIntent_FavoriteCopyWithImpl<
          _SearchScreenIntent_Favorite>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String searchTerm) search,
    required TResult Function(UICity city) toggleFavorite,
  }) {
    return toggleFavorite(city);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String searchTerm)? search,
    TResult Function(UICity city)? toggleFavorite,
  }) {
    return toggleFavorite?.call(city);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchTerm)? search,
    TResult Function(UICity city)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(city);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchScreenIntent_Search value) search,
    required TResult Function(_SearchScreenIntent_Favorite value)
        toggleFavorite,
  }) {
    return toggleFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SearchScreenIntent_Search value)? search,
    TResult Function(_SearchScreenIntent_Favorite value)? toggleFavorite,
  }) {
    return toggleFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchScreenIntent_Search value)? search,
    TResult Function(_SearchScreenIntent_Favorite value)? toggleFavorite,
    required TResult orElse(),
  }) {
    if (toggleFavorite != null) {
      return toggleFavorite(this);
    }
    return orElse();
  }
}

abstract class _SearchScreenIntent_Favorite implements SearchScreenIntent {
  factory _SearchScreenIntent_Favorite({required UICity city}) =
      _$_SearchScreenIntent_Favorite;

  UICity get city;
  @JsonKey(ignore: true)
  _$SearchScreenIntent_FavoriteCopyWith<_SearchScreenIntent_Favorite>
      get copyWith => throw _privateConstructorUsedError;
}
