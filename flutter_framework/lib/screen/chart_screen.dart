import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:go_router/go_router.dart';

class ChartScreen extends StatelessWidget {
  const ChartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      child: Center(
        child: ElevatedButton(
            onPressed: () => context.pop(), child: const Text("HOME")),
      ),
    );
  }
}
