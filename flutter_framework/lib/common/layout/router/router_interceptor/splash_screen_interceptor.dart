import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/router/router_interceptor/router_interceptor.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_screen_interceptor.g.dart';

@Riverpod(dependencies: [])
SplashScreenInterceptor splashScreenInterceptor(
    SplashScreenInterceptorRef ref) {
  return SplashScreenInterceptor(ref);
}

class SplashScreenInterceptor implements RouterInterceptor {
  final Ref ref;

  SplashScreenInterceptor(this.ref);

  @override
  String? canGo(BuildContext context, GoRouterState routerState) {
    return null;
  }
}
