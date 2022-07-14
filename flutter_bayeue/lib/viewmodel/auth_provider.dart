import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/api/auth_api.dart';
import 'package:flutter_bayeue/model/login_model.dart';
import 'package:flutter_bayeue/model/storage/local_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/api/auth_api.dart';

class AuthProvider with ChangeNotifier {
  bool firstTime = true;
  bool isLogin = false;
  File? imgGallery;
  bool isImg = false;
  LoginModel data = LoginModel();

  AuthProvider() {
    getData();
    init();
  }

  getData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    firstTime = sp.getBool('firstime')!;
    notifyListeners();
  }

  void getStarted() async {
    firstTime = false;
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool('firstime', firstTime);
    notifyListeners();
  }

  init() async {
    var data = await LocalStorage.getLoginData();
    if (data != null) {
      login(data['email'], data['password']);
      isLogin = true;
      return true;
    } else {
      return false;
    }
  }

  login(email, password) async {
    var response = await AuthApi.login(email, password);
    if (response != null) {
      data = response;
      SharedPreferences sp = await SharedPreferences.getInstance();
      sp.setString("token", response.data!.token!);
      LocalStorage.setLoginData(email: email, password: password);
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
    await AuthApi.register(nama, email, phone, password);
  }

  Future logOut() async {
    await LocalStorage.clearLoginData();
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

  pin(
    pin,
  ) async {
    var response = await AuthApi.pin(pin);
    if (response != null) {
      return true;
    } else {
      return false;
    }
  }

  changeprofile(nama, email, password, phone, img) async {
    try {
      final imagePicker =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      print("${imagePicker!.path}");
      imgGallery = File(imagePicker.path);

      isImg = true;
      notifyListeners();
    } catch (e) {
      return null;
    }
  }

  changeData(nama, email, password, phone) async {
    try {
      print(data.data!.token);
      await AuthApi.changeprofile(
          nama, email, password, phone, imgGallery!, data.data!.token);
      notifyListeners();
    } catch (e) {
      return null;
    }
  }
}
