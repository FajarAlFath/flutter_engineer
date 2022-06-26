import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthApi {
  static login(email, password) async {
    var formlogin = {
      "Email": email,
      "Password": password,
    };

    try {
      SharedPreferences sp = await SharedPreferences.getInstance();
      var token = sp.getString("token");
      var dio = Dio();
      var response = await dio.post('http://3.0.50.89:19000/login',
          options: Options(headers: {"Authorization": "Bearer $token"}),
          data: formlogin);
      print(response.data);

      return response;
    } catch (e) {
      return null;
    }
  }
}
