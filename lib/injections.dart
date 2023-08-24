import 'package:captron/core/constants/api.dart';
import 'package:captron/features/auth/repositories/auth_repo.dart';
import 'package:captron/features/auth/view_models/auth.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'features/auth/services/signup_service.dart';

final svl = GetIt.instance;

Future<void> initDependencies() async {
  //Dio
  svl.registerSingleton<Dio>(Dio());

  //AuthServices
  svl.registerSingleton<AuthApiService>(AuthApiService(dio: svl()));

  //Auth Repo
  svl.registerSingleton<AuthRepo>(AuthRepoImpl(apiService: svl()));

  //AuthViewModel
  svl.registerFactory<AuthViewModel>(() => AuthViewModel(authRepo: svl()));
}
