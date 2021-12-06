import 'package:flutter/material.dart';

mixin MyProvider implements ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}
