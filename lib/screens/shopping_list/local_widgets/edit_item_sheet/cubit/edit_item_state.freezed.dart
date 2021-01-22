// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'edit_item_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EditItemStateTearOff {
  const _$EditItemStateTearOff();

// ignore: unused_element
  _ItemUpdated updated({ShoppingItem shoppingItem}) {
    return _ItemUpdated(
      shoppingItem: shoppingItem,
    );
  }

// ignore: unused_element
  _ItemInitial initial(
      {ShoppingItem shoppingItem = const ShoppingItem(title: '')}) {
    return _ItemInitial(
      shoppingItem: shoppingItem,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EditItemState = _$EditItemStateTearOff();

/// @nodoc
mixin _$EditItemState {
  ShoppingItem get shoppingItem;

  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(ShoppingItem shoppingItem),
    @required TResult initial(ShoppingItem shoppingItem),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(ShoppingItem shoppingItem),
    TResult initial(ShoppingItem shoppingItem),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(_ItemUpdated value),
    @required TResult initial(_ItemInitial value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(_ItemUpdated value),
    TResult initial(_ItemInitial value),
    @required TResult orElse(),
  });

  $EditItemStateCopyWith<EditItemState> get copyWith;
}

/// @nodoc
abstract class $EditItemStateCopyWith<$Res> {
  factory $EditItemStateCopyWith(
          EditItemState value, $Res Function(EditItemState) then) =
      _$EditItemStateCopyWithImpl<$Res>;
  $Res call({ShoppingItem shoppingItem});

  $ShoppingItemCopyWith<$Res> get shoppingItem;
}

/// @nodoc
class _$EditItemStateCopyWithImpl<$Res>
    implements $EditItemStateCopyWith<$Res> {
  _$EditItemStateCopyWithImpl(this._value, this._then);

  final EditItemState _value;
  // ignore: unused_field
  final $Res Function(EditItemState) _then;

  @override
  $Res call({
    Object shoppingItem = freezed,
  }) {
    return _then(_value.copyWith(
      shoppingItem: shoppingItem == freezed
          ? _value.shoppingItem
          : shoppingItem as ShoppingItem,
    ));
  }

  @override
  $ShoppingItemCopyWith<$Res> get shoppingItem {
    if (_value.shoppingItem == null) {
      return null;
    }
    return $ShoppingItemCopyWith<$Res>(_value.shoppingItem, (value) {
      return _then(_value.copyWith(shoppingItem: value));
    });
  }
}

/// @nodoc
abstract class _$ItemUpdatedCopyWith<$Res>
    implements $EditItemStateCopyWith<$Res> {
  factory _$ItemUpdatedCopyWith(
          _ItemUpdated value, $Res Function(_ItemUpdated) then) =
      __$ItemUpdatedCopyWithImpl<$Res>;
  @override
  $Res call({ShoppingItem shoppingItem});

  @override
  $ShoppingItemCopyWith<$Res> get shoppingItem;
}

/// @nodoc
class __$ItemUpdatedCopyWithImpl<$Res> extends _$EditItemStateCopyWithImpl<$Res>
    implements _$ItemUpdatedCopyWith<$Res> {
  __$ItemUpdatedCopyWithImpl(
      _ItemUpdated _value, $Res Function(_ItemUpdated) _then)
      : super(_value, (v) => _then(v as _ItemUpdated));

  @override
  _ItemUpdated get _value => super._value as _ItemUpdated;

  @override
  $Res call({
    Object shoppingItem = freezed,
  }) {
    return _then(_ItemUpdated(
      shoppingItem: shoppingItem == freezed
          ? _value.shoppingItem
          : shoppingItem as ShoppingItem,
    ));
  }
}

/// @nodoc
class _$_ItemUpdated implements _ItemUpdated {
  const _$_ItemUpdated({this.shoppingItem});

  @override
  final ShoppingItem shoppingItem;

  @override
  String toString() {
    return 'EditItemState.updated(shoppingItem: $shoppingItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemUpdated &&
            (identical(other.shoppingItem, shoppingItem) ||
                const DeepCollectionEquality()
                    .equals(other.shoppingItem, shoppingItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shoppingItem);

  @override
  _$ItemUpdatedCopyWith<_ItemUpdated> get copyWith =>
      __$ItemUpdatedCopyWithImpl<_ItemUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(ShoppingItem shoppingItem),
    @required TResult initial(ShoppingItem shoppingItem),
  }) {
    assert(updated != null);
    assert(initial != null);
    return updated(shoppingItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(ShoppingItem shoppingItem),
    TResult initial(ShoppingItem shoppingItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(shoppingItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(_ItemUpdated value),
    @required TResult initial(_ItemInitial value),
  }) {
    assert(updated != null);
    assert(initial != null);
    return updated(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(_ItemUpdated value),
    TResult initial(_ItemInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (updated != null) {
      return updated(this);
    }
    return orElse();
  }
}

abstract class _ItemUpdated implements EditItemState {
  const factory _ItemUpdated({ShoppingItem shoppingItem}) = _$_ItemUpdated;

  @override
  ShoppingItem get shoppingItem;
  @override
  _$ItemUpdatedCopyWith<_ItemUpdated> get copyWith;
}

/// @nodoc
abstract class _$ItemInitialCopyWith<$Res>
    implements $EditItemStateCopyWith<$Res> {
  factory _$ItemInitialCopyWith(
          _ItemInitial value, $Res Function(_ItemInitial) then) =
      __$ItemInitialCopyWithImpl<$Res>;
  @override
  $Res call({ShoppingItem shoppingItem});

  @override
  $ShoppingItemCopyWith<$Res> get shoppingItem;
}

/// @nodoc
class __$ItemInitialCopyWithImpl<$Res> extends _$EditItemStateCopyWithImpl<$Res>
    implements _$ItemInitialCopyWith<$Res> {
  __$ItemInitialCopyWithImpl(
      _ItemInitial _value, $Res Function(_ItemInitial) _then)
      : super(_value, (v) => _then(v as _ItemInitial));

  @override
  _ItemInitial get _value => super._value as _ItemInitial;

  @override
  $Res call({
    Object shoppingItem = freezed,
  }) {
    return _then(_ItemInitial(
      shoppingItem: shoppingItem == freezed
          ? _value.shoppingItem
          : shoppingItem as ShoppingItem,
    ));
  }
}

/// @nodoc
class _$_ItemInitial implements _ItemInitial {
  const _$_ItemInitial({this.shoppingItem = const ShoppingItem(title: '')})
      : assert(shoppingItem != null);

  @JsonKey(defaultValue: const ShoppingItem(title: ''))
  @override
  final ShoppingItem shoppingItem;

  @override
  String toString() {
    return 'EditItemState.initial(shoppingItem: $shoppingItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ItemInitial &&
            (identical(other.shoppingItem, shoppingItem) ||
                const DeepCollectionEquality()
                    .equals(other.shoppingItem, shoppingItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(shoppingItem);

  @override
  _$ItemInitialCopyWith<_ItemInitial> get copyWith =>
      __$ItemInitialCopyWithImpl<_ItemInitial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult updated(ShoppingItem shoppingItem),
    @required TResult initial(ShoppingItem shoppingItem),
  }) {
    assert(updated != null);
    assert(initial != null);
    return initial(shoppingItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult updated(ShoppingItem shoppingItem),
    TResult initial(ShoppingItem shoppingItem),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(shoppingItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult updated(_ItemUpdated value),
    @required TResult initial(_ItemInitial value),
  }) {
    assert(updated != null);
    assert(initial != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult updated(_ItemUpdated value),
    TResult initial(_ItemInitial value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ItemInitial implements EditItemState {
  const factory _ItemInitial({ShoppingItem shoppingItem}) = _$_ItemInitial;

  @override
  ShoppingItem get shoppingItem;
  @override
  _$ItemInitialCopyWith<_ItemInitial> get copyWith;
}
