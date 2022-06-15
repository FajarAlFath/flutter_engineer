import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/auth_api.dart';

class AuthProvider with ChangeNotifier {
  bool firstTime = true;

  void getStarted() {
    firstTime = false;
    notifyListeners();
  }

  login(email, password) async {
    await AuthApi.login(email, password);
  }

  register(
    nama,
    email,
    phone,
    password,
  ) async {
    await AuthApi.register(nama, email, phone, password);
  }
}
