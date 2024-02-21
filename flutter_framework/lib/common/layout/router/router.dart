import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/router/router_notifier.dart';
import 'package:flutter_framework/common/layout/router/routers.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router.g.dart';

final _key = GlobalKey<NavigatorState>(debugLabel: 'routerKey');

@Riverpod(dependencies: [RouterNotifier])
AppRouter router(RouterRef ref) {
  final notifier = ref.watch(routerNotifierProvider.notifier);

  return AppRouter(notifier, '/login');
}

class AppRouter {
  final Listenable _notifier;
  final String _initialLocation;
  //final List<AppRouterInterceptor> _interceptors;

  AppRouter(this._notifier, this._initialLocation);

  late final GoRouter config = GoRouter(
      navigatorKey: _key,
      initialLocation: _initialLocation,
      refreshListenable: _notifier,
      redirect: (context, state) async {
        return null;
      },
      debugLogDiagnostics: true,
      routes: $appRoutes);
}
