// class CategoryResponse {
//   String? message;
//   int? rescode;
//   List<Result>? result;

//   CategoryResponse({this.message, this.rescode, this.result});

//   CategoryResponse.fromJson(Map<String, dynamic> json) {
//     message = json['message'];
//     rescode = json['rescode'];
//     if (json['result'] != null) {
//       result = <Result>[];
//       json['result'].forEach((v) {
//         result!.add(new Result.fromJson(v));
//       });
//     }
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['message'] = this.message;
//     data['rescode'] = this.rescode;
//     if (this.result != null) {
//       data['result'] = this.result!.map((v) => v.toJson()).toList();
//     }
//     return data;
//   }
// }

// class Result {
//   int? iD;
//   String? name;
//   String? icon;
//   bool? status;

//   Result({this.iD, this.name, this.icon, this.status});

//   Result.fromJson(Map<String, dynamic> json) {
//     iD = json['ID'];
//     name = json['Name'];
//     icon = json['Icon'];
//     status = json['Status'];
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['ID'] = this.iD;
//     data['Name'] = this.name;
//     data['Icon'] = this.icon;
//     data['Status'] = this.status;
//     return data;
//   }
// }

import 'dart:convert';

CategoryResponse categoryResponseFromJson(String str) =>
    CategoryResponse.fromJson(json.decode(str));

String categoryResponseToJson(CategoryResponse data) =>
    json.encode(data.toJson());

class CategoryResponse {
  CategoryResponse({
    required this.message,
    required this.rescode,
    required this.result,
  });

  String message;
  int rescode;
  List<ResultCategory> result;

  factory CategoryResponse.fromJson(Map<String, dynamic> json) =>
      CategoryResponse(
        message: json["message"],
        rescode: json["rescode"],
        result: List<ResultCategory>.from(
            json["result"].map((x) => ResultCategory.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "rescode": rescode,
        "result": List<dynamic>.from(result.map((x) => x.toJson())),
      };
}

class ResultCategory {
  ResultCategory({
    required this.id,
    required this.name,
    required this.icon,
    required this.status,
  });

  int id;
  String name;
  String icon;
  bool status;

  factory ResultCategory.fromJson(Map<String, dynamic> json) => ResultCategory(
        id: json["ID"],
        name: json["Name"],
        icon: json["Icon"],
        status: json["Status"],
      );

  Map<String, dynamic> toJson() => {
        "ID": id,
        "Name": name,
        "Icon": icon,
        "Status": status,
      };
}
