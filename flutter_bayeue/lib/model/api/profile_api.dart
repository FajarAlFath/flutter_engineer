import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/response_profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileApi {
  static Future<AccountModel> getResult(int id) async {
    try {
      SharedPreferences sp = await SharedPreferences.getInstance();
      var token = sp.getString("token");
      var dio = Dio();
      var response = await dio.get('http://13.229.124.128:19000/users/session',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      print(response.data['Result']);

      return AccountModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
