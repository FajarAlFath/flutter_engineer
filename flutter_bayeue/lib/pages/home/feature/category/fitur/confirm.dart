// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/response_checkout.dart';

import 'package:flutter_bayeue/pages/home/navigation_bar.dart';
import 'package:unicons/unicons.dart';
import 'package:url_launcher/url_launcher.dart';

class Confirm extends StatefulWidget {
  const Confirm({
    Key? key,
    this.data,
  }) : super(key: key);

  final CheckoutResponse? data;

  @override
  State<Confirm> createState() => _ConfirmState();
}

class _ConfirmState extends State<Confirm> {
  Future<void> openUrl({required url}) async {
    if (await canLaunchUrl(url)) {
      await launchUrl(url,
          mode: LaunchMode.platformDefault,
          webViewConfiguration:
              const WebViewConfiguration(enableJavaScript: true));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
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
          widget.data!.result!.product!.name!,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.7)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                elevation: 5,
                shadowColor: Colors.grey.shade300,
                child: SizedBox(
                  width: 366,
                  height: 114,
                  child: ListTile(
                    leading: Padding(
                      padding: const EdgeInsets.only(top: 18),
                      child: SizedBox(
                        width: 84,
                        height: 84,
                        child: Image(
                          image: NetworkImage(
                              widget.data!.result!.product!.image!),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          widget.data!.result!.checkout!.iDCustomer!,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: Colors.black.withOpacity(0.8)),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        Text(
                          widget.data!.result!.checkout!.customerName!,
                          style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              overflow: TextOverflow.ellipsis),
                        ),
                        const SizedBox(
                          height: 23,
                        ),
                        Text(
                          'Product - ${widget.data!.result!.product!.name!}',
                          style: const TextStyle(fontWeight: FontWeight.w300),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListView(
              shrinkWrap: true,
              padding: const EdgeInsets.only(left: 30, right: 30),
              children: [
                ListTile(
                  title: Text(
                    'Total Bill',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 18),
                  ),
                  trailing: Text(
                    'Rp ${widget.data!.result!.checkout!.price!}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 18),
                  ),
                ),
                const Divider(
                  color: Colors.black,
                ),
                ListTile(
                  title: Text(
                    'Customer Id',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8), fontSize: 18),
                  ),
                  trailing: Text(
                    widget.data!.result!.checkout!.iDCustomer!,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 18),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Customer Name',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8), fontSize: 18),
                  ),
                  trailing: Text(
                    widget.data!.result!.checkout!.customerName!,
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8), fontSize: 18),
                  ),
                ),
                ListTile(
                  title: Text(
                    'Admin Fee',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8), fontSize: 18),
                  ),
                  trailing: Text(
                    'Rp 1.500',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8), fontSize: 18),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Divider(
                  color: Colors.black,
                ),
                ListTile(
                  title: Text(
                    'Total Payment',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 18),
                  ),
                  trailing: Text(
                    'Rp ${widget.data!.xenditInvoice!.amount}',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 18),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 80,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 5,
              shadowColor: Colors.black,
              color: Colors.blue.withOpacity(0.8),
              child: InkWell(
                splashColor: Colors.blue.withAlpha(50),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          content: Container(
                            margin: const EdgeInsets.symmetric(vertical: 15),
                            padding: const EdgeInsets.all(10),
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/sure.png',
                                  fit: BoxFit.cover,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Are You Sure?',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Colors.blue.withOpacity(0.8),
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  'Do you want to continue the transaction',
                                  style: TextStyle(fontSize: 15),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                      splashColor: Colors.blue.withAlpha(8),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.blue
                                                    .withOpacity(0.8),
                                                style: BorderStyle.solid,
                                                width: 3),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        height: 50,
                                        width: 120,
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 30, top: 13),
                                          child: Text(
                                            'Cancel',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.blue.shade300,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 15,
                                    ),
                                    InkWell(
                                      splashColor: Colors.blue.withAlpha(8),
                                      onTap: () async {
                                        Uri url = Uri.parse(widget
                                            .data!.xenditInvoice!.invoiceUrl!);
                                        await openUrl(url: url);
                                        Navigator.pushAndRemoveUntil(
                                            context,
                                            MaterialPageRoute(
                                                builder: ((context) =>
                                                    const Navigationpage())),
                                            (route) => false);
                                      },
                                      child: Container(
                                        height: 50,
                                        width: 120,
                                        decoration: BoxDecoration(
                                            color: Colors.blue.withOpacity(0.8),
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Padding(
                                          padding: EdgeInsets.only(
                                              left: 28, top: 14),
                                          child: Text(
                                            'Continue',
                                            style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: SizedBox(
                  height: 60,
                  width: 366,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Confirm',
                        style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontWeight: FontWeight.bold,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
