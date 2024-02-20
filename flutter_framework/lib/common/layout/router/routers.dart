import 'package:flutter/material.dart';
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
