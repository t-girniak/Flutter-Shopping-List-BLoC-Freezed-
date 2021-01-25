import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/models/shopping_item/shopping_item.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_cubit.dart';
import 'package:flutter_shopping_list/screens/shopping_list/local_widgets/edit_item_sheet/edit_item_bottom_sheet.dart';

class ShoppingItemWidget extends StatefulWidget {
  final ShoppingItem shoppingItem;

  ShoppingItemWidget({
    Key key,
    @required this.shoppingItem,
  }) : super(key: key);

  @override
  _ShoppingItemWidgetState createState() {
    return _ShoppingItemWidgetState();
  }
}

class _ShoppingItemWidgetState extends State<ShoppingItemWidget> {
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
    return InkWell(
      onTap: () => displayBottomSheet(
        context,
        shoppingItem: widget.shoppingItem,
      ),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 8,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                children: [
                  SizedBox(width: 8),
                  Icon(
                    Icons.assistant_photo_rounded,
                    color: widget.shoppingItem.color,
                  ),
                  SizedBox(width: 8),
                  Text(
                    '${widget.shoppingItem.title} x ${widget.shoppingItem.quantity}',
                    style: widget.shoppingItem.checked
                        ? Theme.of(context).textTheme.bodyText1.merge(TextStyle(
                              decoration: TextDecoration.lineThrough,
                              decorationThickness: 2,
                            ))
                        : Theme.of(context).textTheme.bodyText1,
                  )
                ],
              ),
              Checkbox(
                checkColor: Theme.of(context).cardColor,
                value: widget.shoppingItem?.checked ?? false,
                onChanged: (value) {
                  BlocProvider.of<ShoppingListCubit>(context).checkItem(
                    widget.shoppingItem,
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
