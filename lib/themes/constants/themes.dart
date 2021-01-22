import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_shopping_list/utils/swatch_creator.dart';

import 'colors.dart';

class AppThemes {
  static void switchTheme(
    BuildContext context,
    bool darkMode,
  ) {
    DynamicTheme.of(context).setThemeData(darkMode ? darkTheme : lightTheme);
  }

  static final ThemeData darkTheme = ThemeData(
    primarySwatch: generateMaterialColor(AppColors.darkGrey),
    primaryColor: AppColors.darkGrey,
    accentColor: AppColors.mustard,
    backgroundColor: AppColors.black,
    brightness: Brightness.dark,
    canvasColor: AppColors.black,
    cardColor: AppColors.darkGrey,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 52.0,
        fontWeight: FontWeight.bold,
        color: AppColors.mustard,
      ),
      headline6: TextStyle(
          fontSize: 24.0,
          fontStyle: FontStyle.italic,
          color: AppColors.mustard),
      bodyText2: TextStyle(
        fontSize: 14.0,
        color: Colors.white,
      ),
      bodyText1: TextStyle(
        fontSize: 14.0,
        color: AppColors.mustard,
      ),
      subtitle2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppColors.mustard,
      ),
    ),
  );

  static final ThemeData lightTheme = ThemeData(
    primarySwatch: Colors.green,
    primaryColor: Colors.green,
    accentColor: Colors.green,
    backgroundColor: Colors.white,
    brightness: Brightness.light,
    canvasColor: Colors.white,
    cardColor: Colors.white,
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 52.0,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
      headline6: TextStyle(
        fontSize: 24.0,
        fontStyle: FontStyle.italic,
        color: AppColors.black,
      ),
      bodyText2: TextStyle(
        fontSize: 14.0,
        color: AppColors.black,
      ),
      bodyText1: TextStyle(
        fontSize: 14.0,
        color: AppColors.black,
      ),
      subtitle2: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: AppColors.black,
      ),
    ),
  );
}
