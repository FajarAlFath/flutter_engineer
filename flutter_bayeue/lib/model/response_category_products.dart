class ProductsCategory {
  String? message;
  int? rescode;
  ResultProducts? result;

  ProductsCategory({this.message, this.rescode, this.result});

  ProductsCategory.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    rescode = json['rescode'];
    result = json['result'] != null
        ? new ResultProducts.fromJson(json['result'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['message'] = this.message;
    data['rescode'] = this.rescode;
    if (this.result != null) {
      data['result'] = this.result!.toJson();
    }
    return data;
  }
}

class ResultProducts {
  List<Products>? products;

  ResultProducts({this.products});

  ResultProducts.fromJson(Map<String, dynamic> json) {
    if (json['products'] != null) {
      products = <Products>[];
      json['products'].forEach((v) {
        products!.add(new Products.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.products != null) {
      data['products'] = this.products!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Products {
  int? iD;
  String? name;
  String? code;
  int? categoryId;
  String? images;
  bool? status;

  Products(
      {this.iD,
      this.name,
      this.code,
      this.categoryId,
      this.images,
      this.status});

  Products.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    name = json['Name'];
    code = json['Code'];
    categoryId = json['Category_Id'];
    images = json['Image'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Name'] = this.name;
    data['Code'] = this.code;
    data['Category_Id'] = this.categoryId;
    data['Image'] = this.images;
    data['Status'] = this.status;
    return data;
  }
}
