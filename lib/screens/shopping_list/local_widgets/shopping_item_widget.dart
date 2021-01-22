import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/models/shopping_item/shopping_item.dart';

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
    return Card(
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
            Padding(
              padding: EdgeInsets.only(left: 8),
              child: Text(widget.shoppingItem.title),
            ),
            Checkbox(
              checkColor: Colors.blue,
              activeColor: Colors.blue,
              value: false,
              onChanged: null,
            )
          ],
        ),
      ),
    );
  }
}
