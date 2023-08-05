import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  int _count = 0;

  void incrementCount() {
    _count++;
    notifyListeners();
  }

  void decrementCount() {
    if (_count > 0) {
      _count--;
    }
    notifyListeners();
  }

  int getCountValue() {
    return _count;
  }

  // set countValue(int value) {
  //   _count = _count + value;
  //   notifyListeners();
  // }

  // int get countValue {
  //   return _count;
  // }
}
