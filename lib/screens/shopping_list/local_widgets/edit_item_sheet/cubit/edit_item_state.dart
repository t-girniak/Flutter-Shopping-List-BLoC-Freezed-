import 'package:flutter/cupertino.dart';
import 'package:flutter_shopping_list/models/shopping_item/shopping_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_item_state.freezed.dart';

@freezed
abstract class EditItemState with _$EditItemState {
  const factory EditItemState.updated({
    ShoppingItem shoppingItem,
  }) = _ItemUpdated;

  const factory EditItemState.initial({
    @Default(ShoppingItem(title: '')) ShoppingItem shoppingItem,
  }) = _ItemInitial;
}
