// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'shopping_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ShoppingItemTearOff {
  const _$ShoppingItemTearOff();

// ignore: unused_element
  _ShoppingItem call({@required String title, int quantity, Color color}) {
    return _ShoppingItem(
      title: title,
      quantity: quantity,
      color: color,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ShoppingItem = _$ShoppingItemTearOff();

/// @nodoc
mixin _$ShoppingItem {
  String get title;
  int get quantity;
  Color get color;

  $ShoppingItemCopyWith<ShoppingItem> get copyWith;
}

/// @nodoc
abstract class $ShoppingItemCopyWith<$Res> {
  factory $ShoppingItemCopyWith(
          ShoppingItem value, $Res Function(ShoppingItem) then) =
      _$ShoppingItemCopyWithImpl<$Res>;
  $Res call({String title, int quantity, Color color});
}

/// @nodoc
class _$ShoppingItemCopyWithImpl<$Res> implements $ShoppingItemCopyWith<$Res> {
  _$ShoppingItemCopyWithImpl(this._value, this._then);

  final ShoppingItem _value;
  // ignore: unused_field
  final $Res Function(ShoppingItem) _then;

  @override
  $Res call({
    Object title = freezed,
    Object quantity = freezed,
    Object color = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      color: color == freezed ? _value.color : color as Color,
    ));
  }
}

/// @nodoc
abstract class _$ShoppingItemCopyWith<$Res>
    implements $ShoppingItemCopyWith<$Res> {
  factory _$ShoppingItemCopyWith(
          _ShoppingItem value, $Res Function(_ShoppingItem) then) =
      __$ShoppingItemCopyWithImpl<$Res>;
  @override
  $Res call({String title, int quantity, Color color});
}

/// @nodoc
class __$ShoppingItemCopyWithImpl<$Res> extends _$ShoppingItemCopyWithImpl<$Res>
    implements _$ShoppingItemCopyWith<$Res> {
  __$ShoppingItemCopyWithImpl(
      _ShoppingItem _value, $Res Function(_ShoppingItem) _then)
      : super(_value, (v) => _then(v as _ShoppingItem));

  @override
  _ShoppingItem get _value => super._value as _ShoppingItem;

  @override
  $Res call({
    Object title = freezed,
    Object quantity = freezed,
    Object color = freezed,
  }) {
    return _then(_ShoppingItem(
      title: title == freezed ? _value.title : title as String,
      quantity: quantity == freezed ? _value.quantity : quantity as int,
      color: color == freezed ? _value.color : color as Color,
    ));
  }
}

/// @nodoc
class _$_ShoppingItem implements _ShoppingItem {
  const _$_ShoppingItem({@required this.title, this.quantity, this.color})
      : assert(title != null);

  @override
  final String title;
  @override
  final int quantity;
  @override
  final Color color;

  @override
  String toString() {
    return 'ShoppingItem(title: $title, quantity: $quantity, color: $color)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ShoppingItem &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.quantity, quantity) ||
                const DeepCollectionEquality()
                    .equals(other.quantity, quantity)) &&
            (identical(other.color, color) ||
                const DeepCollectionEquality().equals(other.color, color)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(quantity) ^
      const DeepCollectionEquality().hash(color);

  @override
  _$ShoppingItemCopyWith<_ShoppingItem> get copyWith =>
      __$ShoppingItemCopyWithImpl<_ShoppingItem>(this, _$identity);
}

abstract class _ShoppingItem implements ShoppingItem {
  const factory _ShoppingItem(
      {@required String title, int quantity, Color color}) = _$_ShoppingItem;

  @override
  String get title;
  @override
  int get quantity;
  @override
  Color get color;
  @override
  _$ShoppingItemCopyWith<_ShoppingItem> get copyWith;
}
