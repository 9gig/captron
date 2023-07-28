import 'package:captron/pages/auth/auth.dart';
import 'package:captron/pages/cap_splah.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../pages/app/get_captions.dart';
import '../pages/app/home.dart';
import '../pages/app/loading.dart';
import '../pages/auth/login.dart';
import '../pages/auth/signup.dart';
import '../pages/onboard.dart';

final router =
    GoRouter(debugLogDiagnostics: true, initialLocation: '/splash', routes: [
  GoRoute(
      path: '/splash',
      builder: (BuildContext context, GoRouterState state) {
        return const CaptronSplash();
      }),
  GoRoute(
      path: '/auth',
      builder: (BuildContext context, GoRouterState state) {
        return const CaptronAuth();
      }),
  GoRoute(
      path: '/signUp',
      builder: (BuildContext context, GoRouterState state) {
        return SignUPAuth();
      }),
  GoRoute(
      path: '/login',
      name: 'login',
      builder: (BuildContext context, GoRouterState state) {
        return LoginAuth();
      }),
  GoRoute(
      path: '/onboard',
      builder: (BuildContext context, GoRouterState state) {
        return const CaptronOnboard();
      }),
  GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const Captron();
      }),
  GoRoute(
      path: '/getCaptions',
      builder: (BuildContext context, GoRouterState state) {
        return const GetCaptions();
      }),
  GoRoute(
      path: '/loading',
      builder: (BuildContext context, GoRouterState state) {
        return const LoadingPage();
      }),
]);
