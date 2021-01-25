import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/models/shopping_item/shopping_item.dart';
import 'package:hive/hive.dart';

part 'shopping_item_hive.g.dart';

@HiveType(typeId: 1)
class ShoppingItemHive extends HiveObject {
  @HiveField(0)
  String title;

  @HiveField(1)
  int quantity;

  @HiveField(2)
  int color;

  @HiveField(3)
  bool checked = false;

  @override
  String toString() {
    return '$title x $quantity: ${color.toString()} is checked: $checked';
  }

  ShoppingItem toObject() {
    return ShoppingItem(
      title: title,
      quantity: quantity,
      color: Color(color),
      checked: checked,
    );
  }

  ShoppingItemHive toHive(ShoppingItem item) {
    return ShoppingItemHive()
      ..title = item.title
      ..quantity = item.quantity
      ..color = item.color.value
      ..checked = item.checked;
  }
}
