import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'app_drawer_state.dart';

class AppDrawerCubit extends Cubit<AppDrawerState> {
  AppDrawerCubit() : super(LightTheme());

  Future<void> switchTheme() async {
    if (state is LightTheme) {
      emit(DarkTheme());
    } else {
      emit(LightTheme());
    }
  }
}
