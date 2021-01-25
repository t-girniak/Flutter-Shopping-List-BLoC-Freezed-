import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_shopping_list/screens/shopping_list/local_widgets/edit_item_sheet/cubit/edit_item_cubit.dart';

void showColorPicker(BuildContext context, EditItemCubit cubit) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        titlePadding: const EdgeInsets.all(0.0),
        contentPadding: const EdgeInsets.all(0.0),
        content: SingleChildScrollView(
          child: ColorPicker(
            pickerColor: cubit.state.shoppingItem?.color ?? Colors.green,
            onColorChanged: (color) => cubit.colorUpdated(color),
            colorPickerWidth: 300.0,
            pickerAreaHeightPercent: 0.7,
            enableAlpha: true,
            displayThumbColor: true,
            showLabel: true,
            paletteType: PaletteType.hsv,
            pickerAreaBorderRadius: const BorderRadius.only(
              topLeft: const Radius.circular(2.0),
              topRight: const Radius.circular(2.0),
            ),
          ),
        ),
      );
    },
  );
}
