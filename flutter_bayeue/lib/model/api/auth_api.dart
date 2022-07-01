import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/login_model.dart';

class AuthApi {
  static Future<LoginModel?> login(email, password) async {
    try {
      var formlogin = {
        "Email": email,
        "Password": password,
      };
      var dio = Dio();
      var response =
          await dio.post('http://13.229.124.128:19000/login', data: formlogin);
      print(response.data);

      return LoginModel.fromJson(response.data);
    } catch (e) {
      return null;
    }
  }

  static register(nama, email, phone, password) async {
    var formRegister = {
      "name": nama,
      "email": email,
      "password": password,
      "phone": phone
    };
    try {
      var dio = Dio();
      var response = await dio.post('http://13.229.124.128:19000/register',
          data: formRegister);
      return response;
    } catch (e) {
      return null;
    }
  }

  static validation(code) async {
    var formValidation = {
      "code": code,
    };
    try {
      var dio = Dio();
      var response = await dio.post('http://13.229.124.128:19000/validation',
          data: formValidation);
      return response;
    } catch (e) {
      return null;
    }
  }

  static pin(code) async {
    var formValidation = {
      "pin": pin,
    };
    try {
      var dio = Dio();
      var response = await dio.post('http://13.229.124.128:19000/users/pin',
          data: formValidation);
      return response;
    } catch (e) {
      return null;
    }
  }
}
