import 'package:flutter/material.dart';

class ToolsProvider extends ChangeNotifier {
  int _toolIndex = 20;

  void switchTools(newIndex) {
    _toolIndex = newIndex;
    notifyListeners();
  }

  int get toolIndex => _toolIndex;
}
