import 'dart:convert';

ProductsCategory productsCategoryFromJson(String str) =>
    ProductsCategory.fromJson(json.decode(str));

String productsCategoryToJson(ProductsCategory data) =>
    json.encode(data.toJson());

class ProductsCategory {
  ProductsCategory({
    required this.message,
    required this.rescode,
    required this.result,
  });

  String message;
  int rescode;
  ResultCatProducts result;

  factory ProductsCategory.fromJson(Map<String, dynamic> json) =>
      ProductsCategory(
        message: json["message"],
        rescode: json["rescode"],
        result: ResultCatProducts.fromJson(json["result"]),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "rescode": rescode,
        "result": result.toJson(),
      };
}

class ResultCatProducts {
  ResultCatProducts({
    required this.products,
  });

  List<Product> products;

  factory ResultCatProducts.fromJson(Map<String, dynamic> json) =>
      ResultCatProducts(
        products: List<Product>.from(
            json["products"].map((x) => Product.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "products": List<dynamic>.from(products.map((x) => x.toJson())),
      };
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.code,
    required this.categoryId,
    required this.image,
    required this.status,
  });

  int id;
  String name;
  String code;
  int categoryId;
  String image;
  bool status;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["ID"],
        name: json["Name"],
        code: json["Code"],
        categoryId: json["Category_Id"],
        image: json["Image"],
        status: json["Status"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Name": name,
        "Code": code,
        "Category_Id": categoryId,
        "Image": image,
        "Status": status,
      };
}
