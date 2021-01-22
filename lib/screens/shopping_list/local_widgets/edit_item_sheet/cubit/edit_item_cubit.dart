import 'dart:ui';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'edit_item_state.dart';

class EditItemCubit extends Cubit<EditItemState> {
  TextEditingController titleController = TextEditingController();

  EditItemCubit() : super(EditItemState.initial());

  Future<void> titleUpdated(String text) async {
    emit(EditItemState.updated(
      shoppingItem: state.shoppingItem.copyWith(
        title: text,
      ),
    ));
  }

  Future<void> colorUpdated(Color color) async {
    emit(EditItemState.updated(
      shoppingItem: state.shoppingItem.copyWith(
        color: color,
      ),
    ));
  }
}
