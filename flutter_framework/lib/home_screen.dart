import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:flutter_framework/router/routers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('HomeScreen'),
          Center(
            child: ElevatedButton(
                onPressed: () => const AuthRoute().go(context),
                child: const Text("LOGIN")),
          ),
          Center(
            child: ElevatedButton(
                onPressed: () {
                  const ChartRoute().push(context);
                },
                child: const Text("CHART")),
          ),
        ],
      ),
    );
  }
}
