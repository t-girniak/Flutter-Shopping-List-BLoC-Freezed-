import 'package:bloc/bloc.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_state.dart';
import 'package:flutter_shopping_list/models/shopping_item/shopping_item.dart';

class ShoppingListCubit extends Cubit<ShoppingListState> {
  ShoppingListCubit() : super(ShoppingListState.loaded());

  Future<void> addItem(ShoppingItem item) async {
    emit(ShoppingListState.loading());
    emit(ShoppingListState.loaded(items: <ShoppingItem>[item]));
  }
}
