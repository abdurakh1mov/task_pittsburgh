import 'package:flutter/foundation.dart';

void printLog(Object? object, {bool printToAlice = true}) {
  if (kDebugMode) {
    print(object);
  }
}
