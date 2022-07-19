import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/api/services.dart';
import 'package:flutter_bayeue/model/login_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get Login', () async {
    var formlogin = {
      "Email": 'gozza15bdg@gmail.com',
      "Password": 'password',
    };
    var dio = Dio();
    var response = await dio.post('${Url.baseUrl}/login', data: formlogin);

    print(response.data['data']['token']);
    expect(response.data != null, true);
  });
}
