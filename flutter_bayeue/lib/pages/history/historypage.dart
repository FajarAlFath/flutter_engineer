import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/history/history_transaction.dart';

class History extends StatelessWidget {
  const History({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: kToolbarHeight * 1.5,
        backgroundColor: const Color.fromARGB(255, 247, 240, 240),
        elevation: 0,
        title: const Padding(
          padding: EdgeInsets.only(left: 8),
          child: Text(
            'History',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 26, color: Colors.black),
          ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 20),
              height: 260,
              width: 366,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.1),
              ),
              child: Image.asset('assets/images/kasar.png'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const Text(
                  'Transaction History',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.black),
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Text('Sort by'),
                  label: const Icon(Icons.sort),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            ),
            Expanded(
              child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (ctx, i) {
                    return Container(
                      margin: const EdgeInsets.only(bottom: 8),
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
                                    listhistory[i].image,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                              Column(
                                children: [
                                  Text(
                                    listhistory[i].nama,
                                    style: const TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    listhistory[i].tanggal,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                  Text(
                                    listhistory[i].waktu,
                                    style: const TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            listhistory[i].harga,
                            style: const TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, i) {
                    return const SizedBox(
                      height: 12,
                    );
                  },
                  itemCount: listhistory.length),
            ),
          ],
        ),
      ),
    );
  }
}
