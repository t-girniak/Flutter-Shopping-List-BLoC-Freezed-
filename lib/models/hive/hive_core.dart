import 'dart:io';

import 'package:flutter_shopping_list/models/hive/shopping_item/shopping_item_hive.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

const String hiveBox = 'MainHiveBox';

class HiveCore {
  Box get box => _box;
  Box _box;

  Future<HiveCore> initialize() async {
    var appDocDirectory = await getApplicationDocumentsDirectory();
    final path = await Directory(appDocDirectory.path + '/' + 'hive')
        .create(recursive: true);
    Hive
      ..init(path.path)
      ..registerAdapter(
        ShoppingItemHiveAdapter(),
      );
    _box = await Hive.openBox(hiveBox);
    return this;
  }
}
