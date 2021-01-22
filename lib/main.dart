import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_cubit.dart';
import 'package:flutter_shopping_list/screens/shopping_list_screen.dart';
import 'package:flutter_shopping_list/themes/constants/themes.dart';
import 'package:flutter_shopping_list/widgets/drawers/app_drawer/cubit/app_drawer_cubit.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DynamicTheme(
      defaultBrightness: Brightness.light,
      data: (brightness) => AppThemes.lightTheme,
      themedWidgetBuilder: (context, theme) {
        return MaterialApp(
          title: 'Shopping List',
          theme: theme,
          home: MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (BuildContext context) => ShoppingListCubit(),
              ),
              BlocProvider(
                create: (BuildContext context) => AppDrawerCubit(),
              ),
            ],
            child: ShoppingListScreen(),
          ),
        );
      },
    );
  }
}
