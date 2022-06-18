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

  static register(nama, email, phone, password) async {
    var formlogin = {
      "name": nama,
      "phone": phone,
      "email": email,
      "password": password,
    };

    var dio = Dio();
    var response =
        await dio.post('http://3.0.50.89:19000/register', data: formlogin);
    print(response.data.toString());
  }
}
