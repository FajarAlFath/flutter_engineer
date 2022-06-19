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
      "Name": nama,
      "Email": email,
      "Password": password,
      "Phone": phone
    };
    print('object1');
    try {
      var dio = Dio();
      var response =
          await dio.post('http://3.0.50.89:19000/register', data: formRegister);
      print(response.data.toString());
    } catch (e) {
      // return null;
      print(e);
    }
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
