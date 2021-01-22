import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/utils/validators/basic_validator.dart';

import 'cubit/edit_item_cubit.dart';
import 'cubit/edit_item_state.dart';

void displayBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (ctx) {
      return BlocProvider<EditItemCubit>(
        create: (BuildContext context) => EditItemCubit(),
        child: BlocBuilder<EditItemCubit, EditItemState>(
          builder: (BuildContext context, state) {
            EditItemCubit cubit = BlocProvider.of(context);

            return Container(
              height: MediaQuery.of(context).size.height * 0.4,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(Icons.ac_unit),
                      TextFormField(
                        controller: cubit.titleController,
                        validator: (value) => basicValidator(value),
                      ),
                    ],
                  ),
                  SizedBox(height: 24),
                  Container(
                    width: 50,
                    height: 50,
                    color: state.shoppingItem.color,
                    child: InkWell(
                      onTap: () => cubit.colorUpdated(Colors.green),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  ).then(
    (isManuallyHidden) {
      if (isManuallyHidden ?? false) {
        print("hidden via button");
      } else {
        print("dismissed");
      }
    },
  );
}
