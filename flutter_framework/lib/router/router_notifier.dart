import 'package:flutter/material.dart';
import 'package:flutter_framework/auth/auth_notifier.dart';
import 'package:flutter_framework/auth/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'router_notifier.g.dart';

@Riverpod(dependencies: [AuthNotifier])
class RouterNotifier extends _$RouterNotifier implements Listenable {
  VoidCallback? routerListener;

  AuthState authState = const Authenticating();

  @override
  Future<void> build() async {
    ref.listenSelf((_, __) {
      if (state.isLoading) return;
      routerListener?.call();
    });
  }

  @override
  void addListener(VoidCallback listener) {
    routerListener = listener;
  }

  @override
  void removeListener(VoidCallback listener) {
    routerListener = null;
  }
}
