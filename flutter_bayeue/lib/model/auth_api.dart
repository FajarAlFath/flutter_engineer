import 'package:dio/dio.dart';

class AuthApi {
  static login(email, password) async {
    var formlogin = {
      "email": email,
      "password": password,
    };

    var dio = Dio();
    var response = await dio.post(
        'https://virtserver.swaggerhub.com/gozza/Payment-Point/1.0.0-beta/api/users/login',
        data: formlogin);
    print(response.data.toString());
  }

  static register(nama, email, phone, password) async {
    var formlogin = {
      "name": nama,
      "phone": phone,
      "email": email,
      "password": password,
    };

    var dio = Dio();
    var response = await dio.post(
        'https://virtserver.swaggerhub.com/gozza/Payment-Point/1.0.0-beta/api/users/register',
        data: formlogin);
    print(response.data.toString());
  }
}
