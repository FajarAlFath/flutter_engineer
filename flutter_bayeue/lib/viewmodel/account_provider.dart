import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/account_model.dart';

class AccountProvider with ChangeNotifier {
  final List<Account> _account = [];
  List<Account> get account => _account;

  void show(Account account) {
    _account.add(account);
    notifyListeners();
  }
}
