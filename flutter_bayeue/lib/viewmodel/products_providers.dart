import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/api/category_api.dart';
import 'package:flutter_bayeue/model/response_category_products.dart';
import 'package:flutter_bayeue/model/response_detail_product.dart';

class ProductsCategoryProvider with ChangeNotifier {
  ProductsCategory? get;

  getProductsData() async {
    get = await ProductsCategoryApi.getProductsCat(id: '1');
    notifyListeners();
  }
}

class ProductsDetailProvider with ChangeNotifier {
  ResponseDetail? get;

  getProductsDetail({required String slug}) async {
    get = await ProductsDetailApi.getProductsDet(slug: slug);
    notifyListeners();
  }
}
