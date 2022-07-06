import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/api/profile_api.dart';
import 'package:flutter_bayeue/model/response_profile_model.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:unicons/unicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  AccountModel? accountModel;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getProfileApi();
    });
  }

  String name = '';

  void getProfileApi() async {
    accountModel = await ProfileApi.getResult();
    setState(() {});
    // accountModel = await ProfileApi.getResult();
  }

  @override
  Widget build(BuildContext context) {
    // final category = Provider.of<CategoryProvider>(context);

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundImage: NetworkImage(
                              'https://picsum.photos/id/870/200/300?grayscale&blur=2'),
                        ),
                        Text(
                          ' Hallo',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                        Text(
                          accountModel != null
                              ? ' ${accountModel!.result!.user!.name!}'
                              : '',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 26),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: const Icon(
                        UniconsLine.bell,
                        color: Colors.blue,
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  Image.asset('assets/images/home2.png'),
                  Positioned(
                    top: 12,
                    right: 24,
                    child: Image.asset(
                      'assets/images/dihome.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                  const Positioned(
                    top: 20,
                    left: 30,
                    child: Text(
                      'Phone Number',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const Positioned(
                    top: 50,
                    left: 30,
                    child: Text(
                      '08023840238402',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  const Positioned(
                    top: 85,
                    left: 30,
                    child: Text(
                      'Current Balance',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                  const Positioned(
                    top: 115,
                    left: 30,
                    child: Text(
                      'Rp. 123456',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 16),
                padding: const EdgeInsets.only(right: 300),
                child: const Text(
                  'Feature',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //Feature Display category product
              Row(
                children: const [Text('data')],
              ),
              //End of Display category product

              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 150),
                child: Text(
                  'Info and Special Promo',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            print('object');
                          },
                          child: SizedBox(
                            height: 100,
                            width: 180,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://picsum.photos/id/870/200/300?grayscale&blur=2',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Shopping for Vegetables',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'To get 25% cashback',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            print('object');
                          },
                          child: SizedBox(
                            height: 100,
                            width: 180,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.network(
                                'https://picsum.photos/id/870/200/300?grayscale&blur=2',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Shopping for Vegetables',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        ),
                        const Text(
                          'To get 25% cashback',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.only(right: 200),
                child: Text(
                  'Last Transaction',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // print('object');
                          },
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
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/images/Outline.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Transfer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '27 May 2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('20:30 WIB',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      '- 50.000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // print('object');
                          },
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
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/images/Outline.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Transfer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '27 May 2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('20:30 WIB',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      '- 50.000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            // print('object');
                          },
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
                                ),
                              ],
                            ),
                            child: Image.asset(
                              'assets/images/Outline.png',
                              color: Colors.blue,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          children: const [
                            Text(
                              'Transfer',
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              '27 May 2022',
                              style: TextStyle(color: Colors.grey),
                            ),
                            Text('20:30 WIB',
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                      ],
                    ),
                    const Text(
                      '- 50.000',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
