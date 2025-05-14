import 'dart:io';

import 'package:hive_flutter/hive_flutter.dart';
import 'package:path_provider/path_provider.dart';

class HiveBase {
  static const _db = 'localDB';
  static late final Box _dbBox;

  static Future<Box> ensureInitialized() async {
    final dir = await getApplicationDocumentsDirectory();
    Directory('${dir.path}/dir')
        .create(recursive: true)
        .then((Directory directory) {
      Hive.init(directory.path);
    });
    await Hive.initFlutter();
    _dbBox = await Hive.openBox(_db);
    return _dbBox;
  }

  Box get dbBox => _dbBox;
}
