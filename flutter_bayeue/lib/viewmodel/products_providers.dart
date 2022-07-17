import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/api/category_api.dart';
import 'package:flutter_bayeue/model/response_category_products.dart';
import 'package:flutter_bayeue/model/response_detail_product.dart';

class ProductsCategoryProvider with ChangeNotifier {
  ProductsCategory? get;

  getProductsData({required String id}) async {
    get = await ProductsCategoryApi.getProductsCat(id: id);
    notifyListeners();
  }
}

class ProductsDetailProvider with ChangeNotifier {
  ResponseDetail? getd;

  getProductsDetail({required String slug}) async {
    getd = await ProductsDetailApi.getProductsDet(slug: slug);
    notifyListeners();
  }
}
