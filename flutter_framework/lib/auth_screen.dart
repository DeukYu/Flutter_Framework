import 'package:flutter/material.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';

class AuthScreen extends StatelessWidget {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      isAppBar: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: _idController,
            decoration: const InputDecoration(
                contentPadding: const EdgeInsets.all(10.0)),
          ),
          TextFormField(
            controller: _pwController,
          )
        ],
      ),
    );
  }
}
