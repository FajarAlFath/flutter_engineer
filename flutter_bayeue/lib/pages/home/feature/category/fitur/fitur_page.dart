// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/response_checkout.dart';
import 'package:flutter_bayeue/pages/home/feature/category/fitur/confirm.dart';
import 'package:flutter_bayeue/viewmodel/products_providers.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

class FiturPage extends StatefulWidget {
  const FiturPage({Key? key, required this.slug}) : super(key: key);

  final String slug;

  @override
  State<FiturPage> createState() => _FiturPageState();
}

class _FiturPageState extends State<FiturPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductsDetailProvider>(context, listen: false)
          .getProductsDetail(slug: widget.slug.toString());
    });
  }

  plus({required int a}) {
    int b = 500;
    var c = a + b;
    return c.toString();
  }

  fee2({required int a}) {
    int b = 1500;
    var c = a + b;
    return c.toString();
  }

  final formkey = GlobalKey<FormState>();
  final _numberController = TextEditingController();
  final _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final postd = Provider.of<CheckoutProvider>(context);
    final details = Provider.of<ProductsDetailProvider>(context);
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
          widget.slug,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.7)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25, right: 25),
          child: Form(
            key: formkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Phone Number',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.8),
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 5,
                      shadowColor: Colors.grey.withOpacity(0.8),
                      child: TextFormField(
                        controller: _numberController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'masukkan nomor';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Input Number',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Material(
                      borderRadius: BorderRadius.circular(10),
                      elevation: 1,
                      shadowColor: Colors.grey,
                      child: TextFormField(
                        controller: _nameController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'masukkan nama';
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          fillColor: const Color.fromARGB(255, 247, 240, 240),
                          filled: true,
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide:
                                  const BorderSide(color: Colors.white)),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          hintText: 'Input Name',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    GridView.builder(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          mainAxisSpacing: 16,
                          crossAxisSpacing: 40,
                          childAspectRatio: 18 / 10,
                          crossAxisCount: 2,
                        ),
                        itemCount: details.getd != null
                            ? details.getd!.result!.detail!.length
                            : 0,
                        itemBuilder: (context, i) {
                          return GestureDetector(
                            onTap: (() async {
                              if (formkey.currentState!.validate()) {
                                String slugs = details
                                    .getd!.result!.detail![i].detailSlug!;
                                await postd.post(
                                    idCustomer: _numberController.text,
                                    customerName: _nameController.text,
                                    productslug: slugs);

                                print(postd.postd!.result);
                                CheckoutResponse? data = postd.postd;
                                // ignore: use_build_context_synchronously
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: ((context) => Confirm(
                                              data: data!,
                                            ))));
                              }
                            }),
                            child: Container(
                                decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.grey.shade300,
                                      blurRadius: 6,
                                      spreadRadius: 3,
                                    )
                                  ],
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 20),
                                      child: Text(
                                        plus(
                                            a: details.getd!.result!.detail![i]
                                                .price!),
                                        style: TextStyle(
                                            fontSize: 23,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Colors.black.withOpacity(0.8)),
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 10),
                                          child: Text(
                                            'Price Rp ',
                                            style: TextStyle(
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.black
                                                    .withOpacity(0.8)),
                                          ),
                                        ),
                                        Text(
                                          fee2(
                                              a: details.getd!.result!
                                                  .detail![i].price!),
                                          style: const TextStyle(
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ],
                                )),
                          );
                        }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
