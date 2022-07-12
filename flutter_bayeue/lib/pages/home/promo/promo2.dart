import 'package:flutter/material.dart';

class Promo2 extends StatelessWidget {
  const Promo2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 30,
          ),
        ),
        toolbarHeight: kToolbarHeight * 1.2,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        title: const Text(
          'Promo',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/promo/promo2.png',
                height: 200,
                width: 400,
                fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 200),
              child: Text(
                'Buy Cinema Tickets',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
            const SizedBox(
              height: 14,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Description',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Lacus, at nunc amet diam. Sed pellentesque maecenas nisl viverra malesuada. Eget purus posuere vivamus tempus.',
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Detail Promo',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Image.asset('assets/promo/kado.png'),
                      title: const Text(
                        'Benefit',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        '25% discount min shopping Rp 50.000 up to Rp 20.000',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/promo/jam.png'),
                      title: const Text(
                        'Promo Period',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        '23 May 2022 07:00 WIB - 30 May 2022 at 23:59 WIB',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset('assets/promo/wallet.png'),
                      title: const Text(
                        'Payment Method',
                        style: TextStyle(color: Colors.blue),
                      ),
                      subtitle: const Text(
                        'Bayeue Balance, Debit Card, Credit Card',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
