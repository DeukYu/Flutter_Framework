import 'package:flutter/material.dart';
import 'package:flutter_framework/router/router_interceptor/app_router_interceptor.dart';
import 'package:flutter_framework/router/router_interceptor/auth_screen_interceptor.dart';
import 'package:flutter_framework/router/router_interceptor/splash_screen_interceptor.dart';
import 'package:flutter_framework/router/router_notifier.dart';
import 'package:flutter_framework/router/routers.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@Riverpod(dependencies: [
  RouterNotifier,
  splashScreenInterceptor,
  authScreenInterceptor
])
AppRouter router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return AppRouter(notifier, '/auth', [
    ref.watch(splashScreenInterceptorProvider),
    ref.watch(authScreenInterceptorProvider)
  ]);
}

class AppRouter {
  final Listenable _notifier;
  final String _initialLocation;
  final List<AppRouterInterceptor> _interceptors;

  AppRouter(this._notifier, this._initialLocation, this._interceptors);

  late final GoRouter config = GoRouter(
      navigatorKey: _key,
      initialLocation: _initialLocation,
      refreshListenable: _notifier,
      redirect: (context, state) async {
        for (AppRouterInterceptor interceptor in _interceptors) {
          final String? result = await interceptor.canGo(context, state);
          if (result != null) return result;
        }
        return null;
      },
      debugLogDiagnostics: true,
      routes: $appRoutes);
}
