import 'dart:ui';

import 'package:freezed_annotation/freezed_annotation.dart';
part 'shopping_item.freezed.dart';

@freezed
abstract class ShoppingItem with _$ShoppingItem {
  const factory ShoppingItem({
    @required String title,
    int quantity,
    Color color,
  }) = _ShoppingItem;
}
