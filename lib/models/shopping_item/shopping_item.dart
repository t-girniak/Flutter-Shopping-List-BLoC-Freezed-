import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'shopping_item.freezed.dart';

@freezed
abstract class ShoppingItem with _$ShoppingItem {
  const factory ShoppingItem({
    @required String title,
    int quantity,
    @Default(Color.fromARGB(255, 0, 170, 255)) Color color,
    @Default(false) bool checked,
  }) = _ShoppingItem;
}
