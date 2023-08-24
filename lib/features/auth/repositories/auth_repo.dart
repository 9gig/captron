import 'dart:io';

import 'package:captron/core/resources/response_state.dart';
import 'package:captron/features/auth/models/signup_model.dart';
import 'package:captron/features/auth/services/signup_service.dart';
import 'package:dio/dio.dart';

import '../models/user.dart';

abstract class AuthRepo {
  Future<bool> signupImpl({required UserModel userDetails});
  Future<ResponseState<SignupRespModel>> getOtp();
  Future<ResponseState<SignupRespModel>> verifyOtp();
}

class AuthRepoImpl implements AuthRepo {
  final AuthApiService apiService;

  AuthRepoImpl({required this.apiService});

  @override
  Future<bool> signupImpl({required UserModel userDetails}) async {
    final res = await apiService.callSignup(user: userDetails);
    if (res.statusCode == 200) {
      print("SignupResp:${res.body}");
      return true;
    } else {
      print("SignupResp:${res.body}");
      return false;
    }
  }

  @override
  Future<ResponseState<SignupRespModel>> getOtp() {
    // TODO: implement getOtp
    throw UnimplementedError();
  }

  @override
  Future<ResponseState<SignupRespModel>> verifyOtp() {
    // TODO: implement verifyOtp
    throw UnimplementedError();
  }
}
