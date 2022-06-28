import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/api/auth_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthProvider with ChangeNotifier {
  bool firstTime = true;

  void getStarted() {
    firstTime = false;
    notifyListeners();
  }

  login(email, password) async {
    var response = await AuthApi.login(email, password);
    if (response != null) {
      SharedPreferences sp = await SharedPreferences.getInstance();
      sp.setString("token", response.data!.token!);

      return true;
    } else {
      return false;
    }
  }

  register(
    nama,
    email,
    phone,
    password,
  ) async {
    await AuthApi.register1(nama, email, phone, password);
  }

  validation(
    code,
  ) async {
    var response = await AuthApi.validation(code);
    if (response != null) {
      return true;
    } else {
      return false;
    }
  }
}
