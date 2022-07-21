import 'package:flutter_bayeue/model/api/category_api.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Get Category', () async {
    var category = await CategoryApi().getCategory();
    expect(category!.isNotEmpty, true);
  });
}
