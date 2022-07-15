class ResponseDetail {
  String? message;
  int? rescode;
  ResultDetProduct? result;

  ResponseDetail({this.message, this.rescode, this.result});

  ResponseDetail.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    rescode = json['rescode'];
    result = json['result'] != null
        ? new ResultDetProduct.fromJson(json['result'])
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

class ResultDetProduct {
  List<Detail>? detail;

  ResultDetProduct({this.detail});

  ResultDetProduct.fromJson(Map<String, dynamic> json) {
    if (json['detail'] != null) {
      detail = <Detail>[];
      json['detail'].forEach((v) {
        detail!.add(new Detail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.detail != null) {
      data['detail'] = this.detail!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Detail {
  int? iD;
  String? productSlug;
  String? name;
  String? detailSlug;
  int? price;
  bool? status;

  Detail(
      {this.iD,
      this.productSlug,
      this.name,
      this.detailSlug,
      this.price,
      this.status});

  Detail.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    productSlug = json['Product_Slug'];
    name = json['Name'];
    detailSlug = json['Detail_Slug'];
    price = json['Price'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Product_Slug'] = this.productSlug;
    data['Name'] = this.name;
    data['Detail_Slug'] = this.detailSlug;
    data['Price'] = this.price;
    data['Status'] = this.status;
    return data;
  }
}
