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
