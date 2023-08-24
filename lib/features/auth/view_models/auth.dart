import 'dart:io';

import 'package:captron/core/resources/response_state.dart';
import 'package:captron/features/auth/models/user.dart';
import 'package:captron/features/auth/repositories/auth_repo.dart';
import 'package:flutter/material.dart';

class AuthViewModel with ChangeNotifier {
  final AuthRepo authRepo;

  bool _isLoading = false;
  int _signUpIndex = 0;
  String _message = '';
  UserModel _user = UserModel(phoneNo: '', name: '');

  AuthViewModel({required this.authRepo});

  bool get isLoading => _isLoading;
  int get signUpIndex => _signUpIndex;
  String get phoneNumber => _user.phoneNo;
  String get message => _message;

  void switchsignUp(value) {
    _signUpIndex = value;
    print(_signUpIndex);
    notifyListeners();
  }

  void setUserDetails({required String name, required String phone}) {
    _user = UserModel(name: name, phoneNo: phone);
    print(_user);
    notifyListeners();
  }

  Future<void> signup() async {
    try {
      print(_user);
      //Call Signup Service
      var res = await authRepo.signupImpl(userDetails: _user);
      if (res) {
        print(res);
      } else {
        print(res);
      }

      ///Save users data and then navigate to homepage
    } on SocketException catch (_) {
      //Run Socket Issues
      socketExcpt();
    } catch (e) {
      //Run Error issues
      errorExcpt();
    }
  }

  void socketExcpt() {
    _message = 'No Internet connection';
    notifyListeners();
  }

  void errorExcpt() {
    _message = 'An error occured please try again';
    notifyListeners();
  }
}
