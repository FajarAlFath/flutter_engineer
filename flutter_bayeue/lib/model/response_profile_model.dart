class AccountModel {
  String? message;
  int? rescode;
  Result? result;

  AccountModel({this.message, this.rescode, this.result});

  AccountModel.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    rescode = json['rescode'];
    result =
        json['result'] != null ? new Result.fromJson(json['result']) : null;
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

class Result {
  Account? account;
  User? user;

  Result({this.account, this.user});

  Result.fromJson(Map<String, dynamic> json) {
    account =
        json['account'] != null ? new Account.fromJson(json['account']) : null;
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.account != null) {
      data['account'] = this.account!.toJson();
    }
    if (this.user != null) {
      data['user'] = this.user!.toJson();
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['ID'] = this.iD;
    data['Phone'] = this.phone;
    data['Saldo'] = this.saldo;
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
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['Name'] = this.name;
    data['Email'] = this.email;
    data['Phone'] = this.phone;
    data['Image'] = this.image;
    data['Status'] = this.status;
    return data;
  }
}
