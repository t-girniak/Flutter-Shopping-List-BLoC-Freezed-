import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_cubit.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_state.dart';
import 'package:flutter_shopping_list/screens/shopping_list/local_widgets/edit_item_sheet/edit_item_bottom_sheet.dart';
import 'package:flutter_shopping_list/screens/shopping_list/local_widgets/shopping_list_widget.dart';
import 'package:flutter_shopping_list/widgets/drawers/app_drawer/app_drawer.dart';

class ShoppingListScreen extends StatefulWidget {
  ShoppingListScreen({Key key}) : super(key: key);

  @override
  _ShoppingListScreenState createState() {
    return _ShoppingListScreenState();
  }
}

class _ShoppingListScreenState extends State<ShoppingListScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter shopping list'),
      ),
      drawer: AppDrawer(),
      body: BlocConsumer<ShoppingListCubit, ShoppingListState>(
        builder: (BuildContext context, ShoppingListState state) => state.when(
          loaded: (value) => value.isEmpty
              ? Center(
                  child: Text(
                    'Add something to your list 📝',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : ShoppingList(),
          loading: (value) => Center(
            child: CircularProgressIndicator(),
          ),
          error: (value) => Center(
            child: Text(
              'An unexpected error had been occurred :*',
              style: TextStyle(
                color: Colors.red,
              ),
            ),
          ),
        ),
        listener: (BuildContext context, state) {},
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => displayBottomSheet(context),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // T
    );
  }
}
