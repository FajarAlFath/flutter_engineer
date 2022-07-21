// ignore_for_file: avoid_print

import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/api/services.dart';
import 'package:flutter_bayeue/model/response_profile_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileApi {
  static Future<AccountModel> getResult() async {
    try {
      SharedPreferences sp = await SharedPreferences.getInstance();
      var token = sp.getString("token");
      var dio = Dio();
      var response = await dio.get('${Url.baseUrl}/users/session',
          options: Options(headers: {"Authorization": "Bearer $token"}));
      print(response.data['Result']);

      return AccountModel.fromJson(response.data);
    } catch (e) {
      throw Exception(e);
    }
  }
}
