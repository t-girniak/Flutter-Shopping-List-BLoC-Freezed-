import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_shopping_list/themes/constants/themes.dart';
import 'package:flutter_shopping_list/widgets/drawers/app_drawer/cubit/app_drawer_cubit.dart';

class AppDrawer extends StatelessWidget {
  AppDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppDrawerCubit, AppDrawerState>(
      builder: (BuildContext context, state) {
        return Drawer(
          child: ListView(
            children: [
              Container(
                color: Theme.of(context).accentColor,
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Text(
                      'Shopping list',
                      style: Theme.of(context).textTheme.headline6.merge(
                            TextStyle(
                              color: Theme.of(context).backgroundColor,
                            ),
                          ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24, vertical: 4),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Dark Mode',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    Switch(
                      value: state is DarkTheme,
                      onChanged: (value) {
                        AppThemes.switchTheme(context, state is LightTheme);
                        BlocProvider.of<AppDrawerCubit>(context).switchTheme();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
