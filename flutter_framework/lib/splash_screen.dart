import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
        backgroundColor: Color.fromRGBO(252, 228, 216, 1.0),
        isAppBar: false,
        child: Center(child: Image.asset('image/splash_img.jpg')));
  }
}
