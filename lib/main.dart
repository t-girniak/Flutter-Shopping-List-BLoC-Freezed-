import 'dart:io';

import 'package:dynamic_theme/dynamic_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/di/get_it_dependencies.dart';
import 'package:flutter_shopping_list/models/hive/hive_core.dart';
import 'package:flutter_shopping_list/screens/shopping_list/cubit/shopping_list_cubit/shopping_list_cubit.dart';
import 'package:flutter_shopping_list/screens/shopping_list/local_widgets/edit_item_sheet/cubit/edit_item_cubit.dart';
import 'package:flutter_shopping_list/screens/shopping_list_screen.dart';
import 'package:flutter_shopping_list/themes/constants/themes.dart';
import 'package:flutter_shopping_list/widgets/drawers/app_drawer/cubit/app_drawer_cubit.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'models/hive/shopping_item/shopping_item_hive.dart';

Future<void> main() async {
  return runApp(App());
}

class App extends StatefulWidget {
  App({Key key}) : super(key: key);

  @override
  _AppState createState() {
    return _AppState();
  }
}

class _AppState extends State<App> {
  @override
  initState() {
    registerDependencies();
    super.initState();
  }

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
              BlocProvider<EditItemCubit>(
                create: (BuildContext context) => EditItemCubit(),
              ),
            ],
            child: FutureBuilder(
              future: GetIt.instance.allReady(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.hasData) {
                  return ShoppingListScreen();
                } else {
                  return Container();
                }
              },
            ),
          ),
        );
      },
    );
  }
}
