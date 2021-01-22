// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'shopping_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShoppingListStateTearOff {
  const _$ShoppingListStateTearOff();

// ignore: unused_element
  _ShoppingListLoaded loaded(
      {List<ShoppingItem> items = const <ShoppingItem>[]}) {
    return _ShoppingListLoaded(
      items: items,
    );
  }

// ignore: unused_element
  _ShoppingListLoading loading(
      {List<ShoppingItem> items = const <ShoppingItem>[]}) {
    return _ShoppingListLoading(
      items: items,
    );
  }

// ignore: unused_element
  _ShoppingListError error(
      {List<ShoppingItem> items = const <ShoppingItem>[]}) {
    return _ShoppingListError(
      items: items,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShoppingListState = _$ShoppingListStateTearOff();

/// @nodoc
mixin _$ShoppingListState {
  List<ShoppingItem> get items;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<ShoppingItem> items),
    @required TResult loading(List<ShoppingItem> items),
    @required TResult error(List<ShoppingItem> items),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<ShoppingItem> items),
    TResult loading(List<ShoppingItem> items),
    TResult error(List<ShoppingItem> items),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_ShoppingListLoaded value),
    @required TResult loading(_ShoppingListLoading value),
    @required TResult error(_ShoppingListError value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_ShoppingListLoaded value),
    TResult loading(_ShoppingListLoading value),
    TResult error(_ShoppingListError value),
    @required TResult orElse(),
  });

  $ShoppingListStateCopyWith<ShoppingListState> get copyWith;
}

/// @nodoc
abstract class $ShoppingListStateCopyWith<$Res> {
  factory $ShoppingListStateCopyWith(
          ShoppingListState value, $Res Function(ShoppingListState) then) =
      _$ShoppingListStateCopyWithImpl<$Res>;
  $Res call({List<ShoppingItem> items});
}

/// @nodoc
class _$ShoppingListStateCopyWithImpl<$Res>
    implements $ShoppingListStateCopyWith<$Res> {
  _$ShoppingListStateCopyWithImpl(this._value, this._then);

  final ShoppingListState _value;
  // ignore: unused_field
  final $Res Function(ShoppingListState) _then;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed ? _value.items : items as List<ShoppingItem>,
    ));
  }
}

/// @nodoc
abstract class _$ShoppingListLoadedCopyWith<$Res>
    implements $ShoppingListStateCopyWith<$Res> {
  factory _$ShoppingListLoadedCopyWith(
          _ShoppingListLoaded value, $Res Function(_ShoppingListLoaded) then) =
      __$ShoppingListLoadedCopyWithImpl<$Res>;
  @override
  $Res call({List<ShoppingItem> items});
}

/// @nodoc
class __$ShoppingListLoadedCopyWithImpl<$Res>
    extends _$ShoppingListStateCopyWithImpl<$Res>
    implements _$ShoppingListLoadedCopyWith<$Res> {
  __$ShoppingListLoadedCopyWithImpl(
      _ShoppingListLoaded _value, $Res Function(_ShoppingListLoaded) _then)
      : super(_value, (v) => _then(v as _ShoppingListLoaded));

  @override
  _ShoppingListLoaded get _value => super._value as _ShoppingListLoaded;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_ShoppingListLoaded(
      items: items == freezed ? _value.items : items as List<ShoppingItem>,
    ));
  }
}

/// @nodoc
class _$_ShoppingListLoaded implements _ShoppingListLoaded {
  const _$_ShoppingListLoaded({this.items = const <ShoppingItem>[]})
      : assert(items != null);

  @JsonKey(defaultValue: const <ShoppingItem>[])
  @override
  final List<ShoppingItem> items;

  @override
  String toString() {
    return 'ShoppingListState.loaded(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingListLoaded &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$ShoppingListLoadedCopyWith<_ShoppingListLoaded> get copyWith =>
      __$ShoppingListLoadedCopyWithImpl<_ShoppingListLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<ShoppingItem> items),
    @required TResult loading(List<ShoppingItem> items),
    @required TResult error(List<ShoppingItem> items),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<ShoppingItem> items),
    TResult loading(List<ShoppingItem> items),
    TResult error(List<ShoppingItem> items),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_ShoppingListLoaded value),
    @required TResult loading(_ShoppingListLoading value),
    @required TResult error(_ShoppingListError value),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_ShoppingListLoaded value),
    TResult loading(_ShoppingListLoading value),
    TResult error(_ShoppingListError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _ShoppingListLoaded implements ShoppingListState {
  const factory _ShoppingListLoaded({List<ShoppingItem> items}) =
      _$_ShoppingListLoaded;

  @override
  List<ShoppingItem> get items;
  @override
  _$ShoppingListLoadedCopyWith<_ShoppingListLoaded> get copyWith;
}

/// @nodoc
abstract class _$ShoppingListLoadingCopyWith<$Res>
    implements $ShoppingListStateCopyWith<$Res> {
  factory _$ShoppingListLoadingCopyWith(_ShoppingListLoading value,
          $Res Function(_ShoppingListLoading) then) =
      __$ShoppingListLoadingCopyWithImpl<$Res>;
  @override
  $Res call({List<ShoppingItem> items});
}

/// @nodoc
class __$ShoppingListLoadingCopyWithImpl<$Res>
    extends _$ShoppingListStateCopyWithImpl<$Res>
    implements _$ShoppingListLoadingCopyWith<$Res> {
  __$ShoppingListLoadingCopyWithImpl(
      _ShoppingListLoading _value, $Res Function(_ShoppingListLoading) _then)
      : super(_value, (v) => _then(v as _ShoppingListLoading));

  @override
  _ShoppingListLoading get _value => super._value as _ShoppingListLoading;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_ShoppingListLoading(
      items: items == freezed ? _value.items : items as List<ShoppingItem>,
    ));
  }
}

/// @nodoc
class _$_ShoppingListLoading implements _ShoppingListLoading {
  const _$_ShoppingListLoading({this.items = const <ShoppingItem>[]})
      : assert(items != null);

  @JsonKey(defaultValue: const <ShoppingItem>[])
  @override
  final List<ShoppingItem> items;

  @override
  String toString() {
    return 'ShoppingListState.loading(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingListLoading &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$ShoppingListLoadingCopyWith<_ShoppingListLoading> get copyWith =>
      __$ShoppingListLoadingCopyWithImpl<_ShoppingListLoading>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<ShoppingItem> items),
    @required TResult loading(List<ShoppingItem> items),
    @required TResult error(List<ShoppingItem> items),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<ShoppingItem> items),
    TResult loading(List<ShoppingItem> items),
    TResult error(List<ShoppingItem> items),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_ShoppingListLoaded value),
    @required TResult loading(_ShoppingListLoading value),
    @required TResult error(_ShoppingListError value),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_ShoppingListLoaded value),
    TResult loading(_ShoppingListLoading value),
    TResult error(_ShoppingListError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _ShoppingListLoading implements ShoppingListState {
  const factory _ShoppingListLoading({List<ShoppingItem> items}) =
      _$_ShoppingListLoading;

  @override
  List<ShoppingItem> get items;
  @override
  _$ShoppingListLoadingCopyWith<_ShoppingListLoading> get copyWith;
}

/// @nodoc
abstract class _$ShoppingListErrorCopyWith<$Res>
    implements $ShoppingListStateCopyWith<$Res> {
  factory _$ShoppingListErrorCopyWith(
          _ShoppingListError value, $Res Function(_ShoppingListError) then) =
      __$ShoppingListErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<ShoppingItem> items});
}

/// @nodoc
class __$ShoppingListErrorCopyWithImpl<$Res>
    extends _$ShoppingListStateCopyWithImpl<$Res>
    implements _$ShoppingListErrorCopyWith<$Res> {
  __$ShoppingListErrorCopyWithImpl(
      _ShoppingListError _value, $Res Function(_ShoppingListError) _then)
      : super(_value, (v) => _then(v as _ShoppingListError));

  @override
  _ShoppingListError get _value => super._value as _ShoppingListError;

  @override
  $Res call({
    Object items = freezed,
  }) {
    return _then(_ShoppingListError(
      items: items == freezed ? _value.items : items as List<ShoppingItem>,
    ));
  }
}

/// @nodoc
class _$_ShoppingListError implements _ShoppingListError {
  const _$_ShoppingListError({this.items = const <ShoppingItem>[]})
      : assert(items != null);

  @JsonKey(defaultValue: const <ShoppingItem>[])
  @override
  final List<ShoppingItem> items;

  @override
  String toString() {
    return 'ShoppingListState.error(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingListError &&
            (identical(other.items, items) ||
                const DeepCollectionEquality().equals(other.items, items)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(items);

  @override
  _$ShoppingListErrorCopyWith<_ShoppingListError> get copyWith =>
      __$ShoppingListErrorCopyWithImpl<_ShoppingListError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult loaded(List<ShoppingItem> items),
    @required TResult loading(List<ShoppingItem> items),
    @required TResult error(List<ShoppingItem> items),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult loaded(List<ShoppingItem> items),
    TResult loading(List<ShoppingItem> items),
    TResult error(List<ShoppingItem> items),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult loaded(_ShoppingListLoaded value),
    @required TResult loading(_ShoppingListLoading value),
    @required TResult error(_ShoppingListError value),
  }) {
    assert(loaded != null);
    assert(loading != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult loaded(_ShoppingListLoaded value),
    TResult loading(_ShoppingListLoading value),
    TResult error(_ShoppingListError value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ShoppingListError implements ShoppingListState {
  const factory _ShoppingListError({List<ShoppingItem> items}) =
      _$_ShoppingListError;

  @override
  List<ShoppingItem> get items;
  @override
  _$ShoppingListErrorCopyWith<_ShoppingListError> get copyWith;
}
