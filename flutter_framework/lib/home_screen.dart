import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isAppBar: false,
      child: Center(
        child: ElevatedButton(
            onPressed: () => context.go('/login'), child: const Text("LOGIN")),
      ),
    );
  }
}
