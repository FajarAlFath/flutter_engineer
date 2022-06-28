import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/account_model.dart';

class AccountProvider with ChangeNotifier {
  final List<AccountModel> _account = [];
  List<AccountModel> get account => _account;

  void show(AccountModel account) {
    _account.add(account);
    notifyListeners();
  }
}
