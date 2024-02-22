import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/router/router_interceptor/router_interceptor.dart';
import 'package:flutter_framework/common/layout/router/router_interceptor/splash_screen_interceptor.dart';
import 'package:flutter_framework/common/layout/router/router_notifier.dart';
import 'package:flutter_framework/common/layout/router/routers.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@Riverpod(dependencies: [RouterNotifier, splashScreenInterceptor])
AppRouter router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return AppRouter(
      notifier, '/login', [ref.watch(splashScreenInterceptorProvider)]);
}

class AppRouter {
  final Listenable _notifier;
  final String _initialLocation;
  final List<RouterInterceptor> _interceptors;

  AppRouter(this._notifier, this._initialLocation, this._interceptors);

  late final GoRouter config = GoRouter(
      navigatorKey: _key,
      initialLocation: _initialLocation,
      refreshListenable: _notifier,
      redirect: (context, state) async {
        for (RouterInterceptor interceptor in _interceptors) {
          final String? result = await interceptor.canGo(context, state);
          if (result != null) return result;
        }
        return null;
      },
      debugLogDiagnostics: true,
      routes: $appRoutes);
}
