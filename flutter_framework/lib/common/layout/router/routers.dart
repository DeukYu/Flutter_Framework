import 'package:flutter/material.dart';
import 'package:flutter_framework/chart_screen.dart';
import 'package:flutter_framework/home_screen.dart';
import 'package:flutter_framework/login_screen.dart';
import 'package:flutter_framework/splash_screen.dart';
import 'package:go_router/go_router.dart';

part 'routers.g.dart';

@TypedGoRoute<SplashRoute>(path: SplashRoute.path)
class SplashRoute extends GoRouteData {
  const SplashRoute();

  static const path = '/splash';
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SplashScreen();
  }
}

@TypedGoRoute<LoginRoute>(path: LoginRoute.path)
class LoginRoute extends GoRouteData {
  const LoginRoute();

  static const path = '/login';
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const LoginScreen();
  }
}

@TypedGoRoute<HomeRoute>(
    path: HomeRoute.path,
    routes: [TypedGoRoute<ChartRoute>(path: ChartRoute.path)])
class HomeRoute extends GoRouteData {
  const HomeRoute();

  static const path = '/home';
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomeScreen();
  }
}

class ChartRoute extends GoRouteData {
  const ChartRoute();

  static const path = 'chart';

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChartScreen();
  }
}
