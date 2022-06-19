import 'dart:convert';

import 'package:dio/dio.dart';

class AuthApi {
  static login(email, password) async {
    var formlogin = {
      "Email": email,
      "Password": password,
    };

    try {
      var dio = Dio();
      var response =
          await dio.post('http://3.0.50.89:19000/login', data: formlogin);
      print(response.data.toString());

      return response;
    } catch (e) {
      return null;
    }
  }

  static register1(nama, email, phone, password) async {
    print(nama);
    print(email);
    print(password);
    print(phone);
    var formRegister = {
      "name": nama,
      "email": email,
      "password": password,
      "phone": phone
    };
    print('object1');
    print(formRegister);
    var dio = Dio();
    var response =
        await dio.post('http://3.0.50.89:19000/register', data: formRegister);
    print(response.data['data']);
  }

  static validation(code) async {
    var formValidation = {
      "code": code,
    };
    try {
      var dio = Dio();
      var response = await dio.post('http://3.0.50.89:19000/validation',
          data: formValidation);
      print(response.data.toString());
    } catch (e) {
      return null;
    }
  }
}
