import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/api/services.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Get Profile', () async {
    var dio = Dio();
    var response = await dio.get('${Url.baseUrl}/users/session',
        options: Options(headers: {
          "Authorization":
              // token
              "Bearer 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MSwicGhvbmUiOiIrNjI4OTU2MzE5NDg2ODYiLCJzdGF0dXMiOnRydWV9.7a_uPcjT-bw0rtIeapt64SNoE89QbjcyW43v-f6b9rQ'"
        }));
    expect(response.data != null, true);
  });
}
