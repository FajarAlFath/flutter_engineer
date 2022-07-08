import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/api/category_api.dart';
import 'package:flutter_bayeue/model/response_category.dart';
import 'package:flutter_bayeue/pages/home/feature/payment/payments_list.dart';
import 'package:unicons/unicons.dart';

class Setting extends StatefulWidget {
  const Setting({Key? key}) : super(key: key);

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  final CategoryApi _api = CategoryApi();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 227, 244, 254),
          elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              UniconsLine.angle_left_b,
              color: Colors.black,
              size: 40,
            ),
          ),
          title: Text(
            'Setting',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26,
                color: Colors.black.withOpacity(0.8)),
          ),
        ),
        body: const SafeArea(child: Text('data')));
  }
}
