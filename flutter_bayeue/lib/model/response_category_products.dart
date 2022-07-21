class ProductsCategory {
  String? message;
  int? rescode;
  ResultProduct? result;

  ProductsCategory({this.message, this.rescode, this.result});

  ProductsCategory.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    rescode = json['rescode'];
    result =
        json['result'] != null ? ResultProduct.fromJson(json['result']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = message;
    data['rescode'] = rescode;
    if (result != null) {
      data['result'] = result!.toJson();
    }
    return data;
  }
}

class ResultProduct {
  List<Products>? products;

  ResultProduct({this.products});

  ResultProduct.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (products != null) {
      data['products'] = products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? iD;
  String? name;
  String? productSlug;
  int? categoryId;
  String? image;
  bool? status;

  Products(
      {this.iD,
      this.name,
      this.productSlug,
      this.categoryId,
      this.image,
      this.status});

  Products.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    productSlug = json['Product_Slug'];
    categoryId = json['Category_Id'];
    image = json['Image'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Name'] = name;
    data['Product_Slug'] = productSlug;
    data['Category_Id'] = categoryId;
    data['Image'] = image;
    data['Status'] = status;
    return data;
  }
}
