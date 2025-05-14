import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:task/model/home_model.dart';
import 'package:task/utils/debug.dart';

class DbService {
  final _dbName = "localDB";
  late final Box _box;

  DbService() {
    _box = Hive.box(_dbName);
  }

  List<Meal> get load {
    printLog("loading sfakmasfkmakfsmaksmf ");
    final data = _box.values.toList();
    return data.map((item) {
      final decoded = jsonDecode(item);
      return Meal.fromJson(decoded);
    }).toList();
  }

  add(Meal product) async {
    // printLog("adding sfakmasfkmakfsmaksmf ");
    final dataString = jsonEncode(product.toJson());
    await _box.add(dataString);
  }

  Future<void> deleteHiveBox() async {
    try {
      if (Hive.isBoxOpen(_dbName)) {
        await Hive.deleteBoxFromDisk(_dbName);
        Hive.openBox(_dbName);
      } else {
        printLog('Box not found or already deleted.');
      }
      await Future.delayed(const Duration(milliseconds: 100));
    } catch (e) {
      printLog('Error deleting box: $e');
    }
  }
}
