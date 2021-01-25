import 'package:flutter_shopping_list/models/hive/hive_core.dart';
import 'package:get_it/get_it.dart';

void registerDependencies() {
  GetIt.instance
      .registerSingletonAsync<HiveCore>(() async => HiveCore().initialize());
}
