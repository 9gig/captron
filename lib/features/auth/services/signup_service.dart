import 'dart:convert';

import 'package:captron/core/constants/api.dart';
import 'package:captron/features/auth/models/user.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http;

class AuthApiService {
  final Dio dio;

  AuthApiService({required this.dio});

  // Future<Response> signupApi() async {
  //   Response response = await dio.post(baseUrl + signup_path,
  //       data: {'name': 'PreBoy', 'phone_no': '09012345606'});

  //   return response;
  // }

  Future<http.Response> callSignup({required UserModel user}) async {
    http.Response res = await http.post(
        Uri.parse(
            '${ApiConst.baseUrlProd}${ApiConst.signup_path}'), // change this
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: userModelToJson(user));
    // print("this is stat:: ${res.body}");
    return res;
  }
}
