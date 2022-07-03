import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {
  static setLoginData({
    required String email,
    required String password,
  }) async {
    final sp = await SharedPreferences.getInstance();

    final data = {"email": email, "password": password};

    String stringData = json.encode(data);
    if (sp.containsKey("loginData")) {
      await sp.remove("loginData");
    }
    await sp.setString('loginData', stringData);
  }

  static Future getLoginData() async {
    final sp = await SharedPreferences.getInstance();

    var stringData = sp.getString('loginData');
    if (stringData != null) {
      var data = json.decode(stringData);
      return data;
    } else {
      return null;
    }
  }

  static Future clearLoginData() async {
    final sp = await SharedPreferences.getInstance();
    sp.remove('loginData');
  }
}
