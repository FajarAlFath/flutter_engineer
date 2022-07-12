import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/api/category_api.dart';
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
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        toolbarHeight: kToolbarHeight * 1.2,
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 24),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.withOpacity(0.2),
                ),
                child: const ListTile(
                  leading: Icon(UniconsLine.search),
                  title: TextField(
                    decoration: InputDecoration(
                        hintText: 'what can we do to help you?',
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {},
                        enabled: true,
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          child: const Icon(
                            UniconsLine.bell,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Notification'),
                        trailing: const Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          child: const Icon(
                            UniconsLine.lock,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Privacy'),
                        trailing: const Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          child: const Icon(
                            UniconsLine.shield,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Security'),
                        trailing: const Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          child: const Icon(
                            UniconsLine.text_fields,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Text Size'),
                        trailing: const Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          child: const Icon(
                            UniconsLine.english_to_chinese,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Language'),
                        trailing: const Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset:
                              const Offset(0, 3), // changes position of shadow
                        ),
                      ]),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        onTap: () {},
                        leading: CircleAvatar(
                          backgroundColor: Colors.blue.withOpacity(0.8),
                          child: const Icon(
                            UniconsLine.bell,
                            color: Colors.white,
                          ),
                        ),
                        title: const Text('Notification'),
                        trailing: const Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
