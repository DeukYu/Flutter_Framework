import 'package:flutter/material.dart';
import 'package:flutter_framework/auth/auth_notifier.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        Duration.zero, () => ref.read(authNotifierProvider.notifier).init());
  }

  @override
  Widget build(BuildContext context) {
    return const DefaultLayout(
      backgroundColor: Color.fromRGBO(252, 228, 216, 1.0),
      isAppBar: false,
      child: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
