import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_cubit.dart';
import 'package:flutter_shopping_list/screens/shopping_list/local_widgets/edit_item_sheet/local_widgets/color_picker.dart';
import 'package:flutter_shopping_list/utils/validators/basic_validator.dart';

import 'cubit/edit_item_cubit.dart';
import 'cubit/edit_item_state.dart';

void displayBottomSheet(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    builder: (context) {
      return BlocProvider<EditItemCubit>(
        create: (BuildContext context) => EditItemCubit(),
        child: BlocConsumer<EditItemCubit, EditItemState>(
          listener: (BuildContext context, state) {
            state.when(
                saved: (_) => Navigator.pop(context),
                updated: (_) {},
                initial: (_) {});
          },
          builder: (BuildContext context, state) {
            EditItemCubit cubit = BlocProvider.of(context);

            return Container(
              color: Theme.of(context).cardColor,
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Form(
                      key: cubit.formKey,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Item name..',
                        ),
                        style: Theme.of(context).textTheme.subtitle2,
                        controller: cubit.titleController,
                        validator: (value) => basicValidator(value),
                      ),
                    ),
                    SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Color: ',
                              style: Theme.of(context).textTheme.subtitle2,
                            ),
                            SizedBox(width: 16),
                            Container(
                              width: 32,
                              height: 32,
                              color: state.shoppingItem?.color ?? Colors.green,
                              child: InkWell(
                                onTap: () => showColorPicker(context, cubit),
                              ),
                            ),
                          ],
                        ),
                        MaterialButton(
                          color: Theme.of(context).accentColor,
                          onPressed: () =>
                              BlocProvider.of<EditItemCubit>(context)
                                  .saveItem(),
                          child: Text(
                            'Save',
                            style: Theme.of(context).textTheme.subtitle2.merge(
                                  TextStyle(
                                    color: Theme.of(context).backgroundColor,
                                  ),
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      );
    },
  ).then(
    (_) {
      BlocProvider.of<ShoppingListCubit>(context).loadItems();
    },
  );
}
