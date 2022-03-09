import 'package:shared_preferences/shared_preferences.dart';
import 'package:shared_preferences_flutter/constants/value.dart';

class SharedPref {
  static Future getBool() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(boolSharedPreference, true);
  }

  static Future<bool> setBool() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(boolSharedPreference) ?? false;
  }

  static Future setListString(
      {required String id, required String token}) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setStringList(listSharedPreference, [id, token]);
  }

  static Future<List<String>> getListString() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getStringList(listSharedPreference) ?? [];
  }

  static Future<String> getString() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(listSharedPreference) ?? "";
  }

  static Future setString() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setString(stringSharedPreference, "");
  }

  static Future setInt() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setInt(intSharedPreference, 12);
  }

  static Future<int> getInt() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(intSharedPreference) ?? 0;
  }

  static Future setDouble() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.setDouble(doubleSharedPreference, 0.0);
  }

  static Future<double> getDouble() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(doubleSharedPreference) ?? 0.0;
  }

  static Future clearSharedPref() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.clear();
  }

  static Future reload() async {
    final prefs = await SharedPreferences.getInstance();
    var x = prefs.reload().asStream();
    //  x.listen((event) { print(event.toString()); });
  }
}
