import 'package:flutter_shopping_list/models/shopping_item/shopping_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shopping_list_state.freezed.dart';

@freezed
abstract class ShoppingListState with _$ShoppingListState {
  const factory ShoppingListState.loaded({
    @Default(<ShoppingItem>[]) List<ShoppingItem> items,
  }) = _ShoppingListLoaded;

  const factory ShoppingListState.loading({
    @Default(<ShoppingItem>[]) List<ShoppingItem> items,
  }) = _ShoppingListLoading;

  const factory ShoppingListState.error({
    @Default(<ShoppingItem>[]) List<ShoppingItem> items,
  }) = _ShoppingListError;
}
