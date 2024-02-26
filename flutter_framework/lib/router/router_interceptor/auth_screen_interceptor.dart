import 'package:flutter/material.dart';
import 'package:flutter_framework/auth/auth_notifier.dart';
import 'package:flutter_framework/auth/auth_state.dart';
import 'package:flutter_framework/router/router_interceptor/app_router_interceptor.dart';
import 'package:flutter_framework/router/routers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_screen_interceptor.g.dart';

@Riverpod(dependencies: [AuthNotifier])
AuthScreenInterceptor authScreenInterceptor(AuthScreenInterceptorRef ref) {
  return AuthScreenInterceptor(ref);
}

class AuthScreenInterceptor implements AppRouterInterceptor {
  final Ref ref;

  AuthScreenInterceptor(this.ref);

  @override
  String? canGo(BuildContext context, GoRouterState routerState) {
    final authState = ref.read(authNotifierProvider);
    final isAuth = routerState.matchedLocation == const AuthRoute().location;

    if (isAuth && authState is Authenticated) {
      return HomeRoute.path; // If authenticated, redirect to home
    } else if (!isAuth && authState is! Authenticated) {
      return null; // Stay on current route if not authenticated and already on auth route
    }

    return AuthRoute.path; // Default to auth route
  }
}
