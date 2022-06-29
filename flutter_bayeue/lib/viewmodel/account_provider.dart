import 'package:flutter/cupertino.dart';
import 'package:flutter_bayeue/model/account_model.dart';

class AccountProvider with ChangeNotifier {
<<<<<<< HEAD
  final List<AccountModel> _account = [];
  List<AccountModel> get account => _account;

  void show(AccountModel account) {
=======
  final List<Account> _account = [];
  List<Account> get account => _account;

  void show(Account account) {
>>>>>>> 80679bf7c7730e82337ec4e04047fe6ebba61091
    _account.add(account);
    notifyListeners();
  }
}
