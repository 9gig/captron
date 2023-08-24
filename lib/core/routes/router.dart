import 'package:captron/features/auth/views/auth.dart';
import 'package:captron/shared/cap_splah.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../features/captions/views/edit.dart';
import '../../features/captions/views/get_captions.dart';
import '../../features/home/views/home.dart';
import '../../shared/loading.dart';
import '../../features/pick_and_trim.dart/views/trim_page.dart';
import '../../features/auth/views/login.dart';
import '../../features/auth/views/signup.dart';
import '../../features/payments/views/onboard.dart';

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
  GoRoute(
      path: '/editing',
      builder: (BuildContext context, GoRouterState state) {
        return EditingPage();
      }),
  GoRoute(
      path: '/trimvideo',
      builder: (BuildContext context, GoRouterState state) {
        return TrimVideo();
      }),
]);
