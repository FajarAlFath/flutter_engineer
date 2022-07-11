import 'package:flutter/material.dart';

class ListrikPage extends StatelessWidget {
  const ListrikPage({Key? key}) : super(key: key);

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
          'Listrik',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}

class PulsaPage extends StatelessWidget {
  const PulsaPage({Key? key}) : super(key: key);

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
          'Pulsa',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}

class PaketDataPage extends StatelessWidget {
  const PaketDataPage({Key? key}) : super(key: key);

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
          'Paket Data',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}

class InternetPage extends StatelessWidget {
  const InternetPage({Key? key}) : super(key: key);

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
          'Internet',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w500, color: Colors.black),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
    );
  }
}
