import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class PulsaPage extends StatefulWidget {
  const PulsaPage({Key? key}) : super(key: key);

  @override
  State<PulsaPage> createState() => _PulsaPageState();
}

class _PulsaPageState extends State<PulsaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
          'Pulsa',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.8)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: SingleChildScrollView(),
    );
  }
}
// const Color.fromARGB(255, 247, 240, 240),