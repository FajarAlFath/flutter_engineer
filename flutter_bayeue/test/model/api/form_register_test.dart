import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/api/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Test Register', () async {
    var Register = {
      "name": 'reza',
      "email": 'sinambela211@gmail.com',
      "password": '123456',
      "phone": '085235352352'
    };
    var dio = Dio();
    var response = await dio.post('${Url.baseUrl}/register', data: Register);
    print(response.data['data']);
    expect(response.data != null, true);
  });
}
