import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/api/category_api.dart';
import 'package:flutter_bayeue/model/response_category_products.dart';

class ProductsCategoryProvider with ChangeNotifier {
  late ProductsCategory get;

  getProductsData(context) async {
    get = await getProducts(context);
    notifyListeners();
  }

  getProducts(context) {}
}
