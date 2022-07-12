import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class HelpSupport extends StatelessWidget {
  const HelpSupport({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      appBar: AppBar(
        toolbarHeight: kToolbarHeight * 1.2,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
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
          'Help and Support',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.8)),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
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
                        hintText: 'What can we do to help you?',
                        border: InputBorder.none),
                  ),
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                'Topics',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Image.asset(
                            'assets/images/Outline.png',
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Transfer',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/trx.png',
                                color: Colors.blue,
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Top Up',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 20,
                                  spreadRadius: 2,
                                )
                              ]),
                          child: Image.asset(
                            'assets/images/bill.png',
                            color: Colors.blue,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        'Payment',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
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
                    children: const [
                      Text(
                        'FAQ’s',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Text('What is Bayeue?'),
                        trailing: Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        leading: Text('How do I change my mobile number?'),
                        trailing: Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        leading: Text('How to process fraud report to Bayeue?'),
                        trailing: Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        leading: Text('How to top-up my Bayeue Balance?'),
                        trailing: Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        leading: Text('How do I delete transaction history?'),
                        trailing: Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        leading: Text('Lorem ipsum dolor sit amet?'),
                        trailing: Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
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
                      const Text(
                        'Contact Us',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ListTile(
                        leading: Image.asset('assets/promo/surat.png'),
                        title: const Text('bayeue@mail.com'),
                        trailing: const Icon(
                          UniconsLine.angle_right_b,
                          color: Colors.blue,
                        ),
                      ),
                      ListTile(
                        leading: Image.asset('assets/promo/telp.png'),
                        title: const Text('085123456789'),
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
                height: 20,
              )
            ],
          ),
        ),
      ),
    );
  }
}
