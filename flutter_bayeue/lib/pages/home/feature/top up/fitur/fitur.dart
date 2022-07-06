import 'package:flutter/material.dart';

class OvoPage extends StatelessWidget {
  const OvoPage({Key? key}) : super(key: key);

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
        toolbarHeight: kToolbarHeight * 1.5,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        title: const Text(
          'OVO',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}

class ShopeePage extends StatelessWidget {
  const ShopeePage({Key? key}) : super(key: key);

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
        toolbarHeight: kToolbarHeight * 1.5,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        title: const Text(
          'ShopeePay',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}

class DanaPage extends StatelessWidget {
  const DanaPage({Key? key}) : super(key: key);

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
        toolbarHeight: kToolbarHeight * 1.5,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        title: const Text(
          'DANA',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}

class GopayPage extends StatelessWidget {
  const GopayPage({Key? key}) : super(key: key);

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
        toolbarHeight: kToolbarHeight * 1.5,
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        title: const Text(
          'GoPay',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}
