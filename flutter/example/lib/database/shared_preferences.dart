import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDB {
  void setSecretValue(String value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('secretKey', value);
  }

  Future<String> getSecretValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString('secretKey') ?? '';
  }
}
