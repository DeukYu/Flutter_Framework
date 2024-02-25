import 'package:flutter/material.dart';
import 'package:flutter_framework/auth/auth_notifier.dart';
import 'package:flutter_framework/auth/auth_state.dart';
import 'package:flutter_framework/router/router_interceptor/app_router_interceptor.dart';
import 'package:flutter_framework/router/routers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_screen_interceptor.g.dart';

@Riverpod(dependencies: [AuthNotifier])
SplashScreenInterceptor splashScreenInterceptor(
    SplashScreenInterceptorRef ref) {
  return SplashScreenInterceptor(ref);
}

class SplashScreenInterceptor implements AppRouterInterceptor {
  final Ref ref;

  SplashScreenInterceptor(this.ref);

  @override
  String? canGo(BuildContext context, GoRouterState routerState) {
    final authState = ref.read(authNotifierProvider);
    final isSplash = routerState.fullPath == SplashRoute.path;

    if (isSplash) {
      if (authState is Authenticating) {
        return null; // Stay on splash route if authenticating
      } else if (authState is Authenticated) {
        return HomeRoute.path; // Redirect to home if authenticated
      } else {
        return AuthRoute.path; // Redirect to auth if not authenticated
      }
    }

    return null; // Stay on current route if not splash route
  }
}
