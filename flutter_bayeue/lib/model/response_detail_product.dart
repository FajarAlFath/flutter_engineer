class ResponseDetail {
  String? message;
  int? rescode;
  ResultDetProduct? result;

  ResponseDetail({this.message, this.rescode, this.result});

  ResponseDetail.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    rescode = json['rescode'];
    result = json['result'] != null
        ? ResultDetProduct.fromJson(json['result'])
        : null;
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

class ResultDetProduct {
  List<Detail>? detail;

  ResultDetProduct({this.detail});

  ResultDetProduct.fromJson(Map<String, dynamic> json) {
    if (json['detail'] != null) {
      detail = <Detail>[];
      json['detail'].forEach((v) {
        detail!.add(Detail.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (detail != null) {
      data['detail'] = detail!.map((v) => v.toJson()).toList();
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
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Product_Slug'] = productSlug;
    data['Name'] = name;
    data['Detail_Slug'] = detailSlug;
    data['Price'] = price;
    data['Status'] = status;
    return data;
  }
}
