import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isAppBar: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                onPressed: () => context.go('/login/home'),
                child: const Text("HOME")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () => context.go('/splash'),
                child: const Text("SPLASH")),
          ),
        ],
      ),
    );
  }
}
