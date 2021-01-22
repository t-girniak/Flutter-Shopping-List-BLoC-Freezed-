import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_cubit.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_state.dart';
import 'package:flutter_shopping_list/screens/shopping_list/local_widgets/shopping_item_widget.dart';

class ShoppingList extends StatelessWidget {
  ShoppingList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShoppingListCubit, ShoppingListState>(
      builder: (BuildContext context, state) {
        return ListView.builder(
          padding: EdgeInsets.all(8),
          itemBuilder: (BuildContext _context, int i) {
            return ShoppingItemWidget(shoppingItem: state.items[i]);
          },
          itemCount: state.items.isEmpty ? 1 : state.items.length,
        );
      },
    );
  }
}
