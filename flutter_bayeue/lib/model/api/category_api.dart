import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/response_category.dart';

class CategoryApi {
  Future<List<Result>?> getCategory() async {
    try {
      var categoryData =
          await Dio().get('http://13.229.124.128:19000/category');
      print('Category info :${categoryData.data}');
      var categoryresponse = CategoryResponse.fromJson(categoryData.data);
      var categorydata = categoryresponse.result;
      return categorydata;
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio Error');
      } else {
        print('Sending Message');
        print(e.message);
      }
    }
  }
}
