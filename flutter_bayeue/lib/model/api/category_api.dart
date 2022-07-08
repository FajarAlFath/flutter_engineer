import 'package:dio/dio.dart';
import 'package:flutter_bayeue/model/api/services.dart';
import 'package:flutter_bayeue/model/response_category.dart';

class CategoryApi {
  Future<List<ResultCategory>?> getCategory() async {
    try {
      var categoryData = await Dio().get('${Url.baseUrl}/category');
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
    return null;
  }
}
