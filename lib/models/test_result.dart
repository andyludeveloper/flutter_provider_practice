import 'package:flutter/cupertino.dart';

class TestResult with ChangeNotifier {
  final result = <String, bool>{};

  void updateResult(String testName, bool result) {
    this.result[testName] = result;
    notifyListeners();
  }
}
