import 'package:bloc/bloc.dart';
import 'package:flutter_shopping_list/models/hive/hive_core.dart';
import 'package:flutter_shopping_list/models/hive/shopping_item/shopping_item_hive.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_state.dart';
import 'package:flutter_shopping_list/models/shopping_item/shopping_item.dart';
import 'package:get_it/get_it.dart';

class ShoppingListCubit extends Cubit<ShoppingListState> {
  ShoppingListCubit() : super(ShoppingListState.loading()) {
    loadItems();
  }

  Future<void> deleteItem(ShoppingItem item) async {
    await GetIt.I<HiveCore>().box.delete(item.title);
    emit(ShoppingListState.loaded(items: state.items..remove(item)));
  }

  Future<void> deleteAllItems() async {
    emit(ShoppingListState.loading());
    await GetIt.I<HiveCore>().box.clear();
    emit(ShoppingListState.loaded(items: <ShoppingItem>[]));
  }

  Future<void> checkItem(ShoppingItem item) async {
    final checkedItem = item.copyWith(
      checked: item.checked == null ? true : !item.checked,
    );
    await GetIt.I<HiveCore>().box.put(
          item.title,
          ShoppingItemHive().toHive(checkedItem),
        );
    final newList = <ShoppingItem>[]
      ..addAll(state.items)
      ..[state.items.indexOf(item)] = checkedItem;
    emit(ShoppingListState.loaded(
      items: newList,
    ));
  }

  Future<void> loadItems() async {
    emit(ShoppingListState.loading());
    final List<ShoppingItemHive> items =
        GetIt.I<HiveCore>().box.values.cast<ShoppingItemHive>().toList();
    emit(ShoppingListState.loaded(
      items: items.map((e) => e.toObject()).toList()
        ..sort(
          (a, b) => a.title.compareTo(b.title),
        ),
    ));
  }
}
