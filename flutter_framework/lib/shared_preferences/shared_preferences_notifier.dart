import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_notifier.g.dart';

@Riverpod(dependencies: [])
class SharedPreferencesNotifier extends _$SharedPreferencesNotifier {
  late final SharedPreferences refs;

  SharedPreferencesNotifier();

  Future<SharedPreferences> build() async {
    return await SharedPreferences.getInstance();
  }
}
