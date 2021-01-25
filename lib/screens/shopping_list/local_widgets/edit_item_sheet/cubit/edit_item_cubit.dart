import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/models/hive/hive_core.dart';
import 'package:flutter_shopping_list/models/hive/shopping_item/shopping_item_hive.dart';
import 'package:get_it/get_it.dart';
import 'edit_item_state.dart';

class EditItemCubit extends Cubit<EditItemState> {
  final TextEditingController titleController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  EditItemCubit() : super(EditItemState.initial());

  Future<void> saveItem() async {
    if (!formKey.currentState.validate()) {
      return;
    }
    var shoppingItemHive = ShoppingItemHive()
      ..title = titleController.text
      ..quantity = state.shoppingItem?.quantity ?? 1
      ..color = state.shoppingItem?.color?.value;

    await GetIt.I<HiveCore>().box.put(titleController.text, shoppingItemHive);

    emit(EditItemState.saved(
      shoppingItem: state.shoppingItem,
    ));
  }

  Future<void> colorUpdated(Color color) async {
    emit(EditItemState.updated(
      shoppingItem: state.shoppingItem.copyWith(
        color: color,
      ),
    ));
  }

  Future<void> increaseQuantity() async {
    emit(EditItemState.updated(
      shoppingItem: state.shoppingItem
          .copyWith(quantity: (state.shoppingItem?.quantity ?? 1) + 1),
    ));
  }

  Future<void> decreaseQuantity() async {
    if ((state.shoppingItem?.quantity ?? 1) <= 1) {
      return;
    }
    emit(EditItemState.updated(
      shoppingItem: state.shoppingItem
          .copyWith(quantity: (state.shoppingItem?.quantity ?? 1) - 1),
    ));
  }
}
