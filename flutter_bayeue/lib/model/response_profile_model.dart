class AccountModel {
  String? message;
  int? rescode;
  Result? result;

  AccountModel({this.message, this.rescode, this.result});

  AccountModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    rescode = json['rescode'];
    result = json['result'] != null ? Result.fromJson(json['result']) : null;
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

class Result {
  Account? account;
  User? user;

  Result({this.account, this.user});

  Result.fromJson(Map<String, dynamic> json) {
    account =
        json['account'] != null ? Account.fromJson(json['account']) : null;
    user = json['user'] != null ? User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (account != null) {
      data['account'] = account!.toJson();
    }
    if (user != null) {
      data['user'] = user!.toJson();
    }
    return data;
  }
}

class Account {
  int? iD;
  String? phone;
  int? saldo;

  Account({this.iD, this.phone, this.saldo});

  Account.fromJson(Map<String, dynamic> json) {
    iD = json['ID'];
    phone = json['Phone'];
    saldo = json['Saldo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ID'] = iD;
    data['Phone'] = phone;
    data['Saldo'] = saldo;
    return data;
  }
}

class User {
  String? name;
  String? email;
  String? phone;
  String? image;
  bool? status;

  User({this.name, this.email, this.phone, this.image, this.status});

  User.fromJson(Map<String, dynamic> json) {
    name = json['Name'];
    email = json['Email'];
    phone = json['Phone'];
    image = json['Image'];
    status = json['Status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['Name'] = name;
    data['Email'] = email;
    data['Phone'] = phone;
    data['Image'] = image;
    data['Status'] = status;
    return data;
  }
}
