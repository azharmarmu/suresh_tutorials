import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesDB {

  //Push
  void setPushValue(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('push', value);
  }

  Future<bool> getPushValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('push') ?? false;
  }


  //Theme
  void setThemeValue(bool value) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool('theme', value);
  }

  Future<bool> getThemeValue() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('theme') ?? false;
  }

  //Name


  //Mobile Number
}
