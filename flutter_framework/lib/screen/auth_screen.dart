import 'package:flutter/material.dart';
import 'package:flutter_framework/common/component/custom_text_form_field.dart';
import 'package:flutter_framework/common/const/data.dart';
import 'package:flutter_framework/common/layout/default_layout.dart';
import 'package:flutter_framework/shared_preferences/shared_preferences_notifier.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AuthScreen extends ConsumerWidget {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _pwController = TextEditingController();

  AuthScreen({super.key});

  void _loginPressed(WidgetRef ref) async {
    try {
      ref
          .read(sharedPreferencesNotifierProvider.notifier)
          .setLogin(_idController.text, _pwController.text);

      List<String> test =
          await ref.read(sharedPreferencesNotifierProvider.notifier).getLogin();
      logger.d(test);
    } catch (e) {
      logger.e(e);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DefaultLayout(
      isAppBar: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomTextFormField(
            controller: _idController,
            hintText: "ID",
            iconData: Icons.person,
          ),
          CustomTextFormField(
            controller: _pwController,
            hintText: "PW",
            obscureText: true,
            iconData: Icons.password,
            isSuffixIcon: true,
          ),
          ElevatedButton(
              onPressed: () => _loginPressed(ref), child: const Text("LOGIN"))
        ],
      ),
    );
  }
}
