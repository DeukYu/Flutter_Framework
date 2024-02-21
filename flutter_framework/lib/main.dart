import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/router/routers.dart';
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
    GoRouter(initialLocation: LoginRoute.path, routes: $appRoutes);
