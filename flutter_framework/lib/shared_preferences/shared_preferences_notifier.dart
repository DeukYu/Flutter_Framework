import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'shared_preferences_notifier.g.dart';

@Riverpod(dependencies: [])
class SharedPreferencesNotifier extends _$SharedPreferencesNotifier {
  late SharedPreferences prefs;

  SharedPreferencesNotifier() {
    _initSharedPreferences();
  }

  Future<void> _initSharedPreferences() async {
    prefs = await SharedPreferences.getInstance();
    // SharedPreferences가 초기화되면 ChangeNotifier에 변경 사항을 알립니다.
  }

  void setLogin(String id, String pw) async {
    await _initSharedPreferences();
    prefs.setStringList('login', [id, pw]);
  }

  Future<List<String>> getLogin() async {
    await _initSharedPreferences();
    return prefs.getStringList('login') ?? [];
  }

  @override
  SharedPreferences build() {
    return prefs;
  }
}
