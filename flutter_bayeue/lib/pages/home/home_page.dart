import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/api/profile_api.dart';
import 'package:flutter_bayeue/model/response_profile_model.dart';
import 'package:flutter_bayeue/pages/home/feature/payment/payment_page.dart';
import 'package:flutter_bayeue/pages/home/feature/top%20up/top_up_page.dart';
import 'package:flutter_bayeue/pages/home/feature/transfer/transfer_page.dart';
import 'package:flutter_bayeue/pages/home/promo/promo1.dart';
import 'package:flutter_bayeue/pages/home/promo/promo2.dart';
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
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      if (accountModel != null)
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: SizedBox(
                            height: 50,
                            width: 50,
                            child: Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: NetworkImage(
                                        accountModel!.result!.user!.image!),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                  shape: BoxShape.rectangle),
                            ),
                          ),
                        ),
                      const Text(
                        '  Hallo',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24),
                      ),
                      Text(
                        accountModel != null
                            ? ' ${accountModel!.result!.user!.name!}'
                            : '',
                        style: const TextStyle(
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
              height: 10,
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
                Positioned(
                  top: 50,
                  left: 30,
                  child: Text(
                    accountModel != null
                        ? '${accountModel!.result!.user!.phone}'
                        : '',
                    style: const TextStyle(
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
                    'Rp.',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Positioned(
                  top: 115,
                  left: 60,
                  child: Text(
                    accountModel != null
                        ? ' ${accountModel!.result!.account!.saldo}'
                        : '',
                    style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                )
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
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) {
                              return const TransferPage();
                            },
                          ),
                        );
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (ctx) {
                            return const TopUpPage();
                          }),
                        );
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (ctx) {
                            return PaymentPage();
                          }),
                        );
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
            //End of Display category product

            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.only(right: 160),
              child: const Text(
                'Info and Special Promo',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24,
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Promo1();
                              },
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 100,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/promo/promo1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Shopping for Vegetables',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'To get 25% cashback',
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (ctx) {
                                return const Promo2();
                              },
                            ),
                          );
                        },
                        child: SizedBox(
                          height: 100,
                          width: 180,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/promo/promo2.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Buy Cinema Tickets',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          Text(
                            'To get 15% off',
                            style: TextStyle(fontSize: 13),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ))));
  }
}
