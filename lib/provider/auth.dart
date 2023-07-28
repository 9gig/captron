import 'package:flutter/material.dart';

class AuthProvider with ChangeNotifier {
  bool _callingApi = false;
  int _signUpIndex = 0;

  bool get callingApi => _callingApi;
  int get signUpIndex => _signUpIndex;

  void switchsignUp(value) {
    _signUpIndex = value;
    print(_signUpIndex);
    notifyListeners();
  }
}
