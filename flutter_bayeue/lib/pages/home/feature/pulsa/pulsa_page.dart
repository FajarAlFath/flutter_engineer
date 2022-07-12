import 'package:flutter/material.dart';
import 'package:flutter_bayeue/model/response_category_products.dart';
import 'package:flutter_bayeue/viewmodel/products_providers.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

class PulsaPage extends StatefulWidget {
  const PulsaPage({Key? key}) : super(key: key);
  @override
  State<PulsaPage> createState() => _PulsaPageState();
}

class _PulsaPageState extends State<PulsaPage> {
  ProductsCategory? catProviders;
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductsCategoryProvider>(context, listen: false)
          .getProductsData();
    });
  }

  @override
  Widget build(BuildContext context) {
    final catProviders =
        Provider.of<ProductsCategoryProvider>(context, listen: false);
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
      body: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
          ),
          itemCount: catProviders.get != null
              ? catProviders.get!.result.products.length
              : 0,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {},
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 20,
                      spreadRadius: 4,
                    )
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: NetworkImage(
                          catProviders.get!.result.products[i].image),
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      catProviders.get!.result.products[i].name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black.withOpacity(0.7)),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
