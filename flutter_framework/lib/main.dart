import 'package:flutter/material.dart';
import 'package:flutter_framework/Home_Screen.dart';
import 'package:flutter_framework/login_screen.dart';
import 'package:flutter_framework/splash_screen.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(MaterialApp.router(
    routeInformationProvider: _router.routeInformationProvider,
    routeInformationParser: _router.routeInformationParser,
    routerDelegate: _router.routerDelegate,
    debugShowCheckedModeBanner: false,
  ));
}

final GoRouter _router =
    GoRouter(initialLocation: '/login', routes: <RouteBase>[
  GoRoute(
      path: '/login',
      builder: (context, state) {
        return const LoginScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'home',
          builder: (context, state) {
            return const HomeScreen();
          },
        )
      ]),
  GoRoute(
    path: '/splash',
    builder: (context, state) {
      return const SplashScreen();
    },
  )
]);
