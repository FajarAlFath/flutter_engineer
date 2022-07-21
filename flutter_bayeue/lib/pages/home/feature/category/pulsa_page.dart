import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/home/feature/category/fitur/fitur_page.dart';

import 'package:flutter_bayeue/viewmodel/products_providers.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({Key? key, required this.id, required this.name})
      : super(key: key);
  @override
  State<CategoryPage> createState() => _CategoryPageState();
  final String id;
  final String name;
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductsCategoryProvider>(context, listen: false)
          .getProductsData(id: widget.id);
    });
  }

  @override
  Widget build(BuildContext context) {
    final catProviders = Provider.of<ProductsCategoryProvider>(context);
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
          widget.name,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.8)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: GridView.builder(
          padding: const EdgeInsets.only(left: 10, right: 10),
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 15,
            crossAxisCount: 4,
          ),
          itemCount: catProviders.get != null
              ? catProviders.get!.result!.products!.length
              : 0,
          itemBuilder: (context, i) {
            return GestureDetector(
              onTap: () {
                var slug = catProviders.get!.result!.products![i].productSlug!
                    .toString();
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => FiturPage(slug: slug)));
              },
              child: Container(
                height: 120,
                width: 120,
                margin: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 5,
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
                          catProviders.get!.result!.products![i].image!),
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      catProviders.get!.result!.products![i].name!,
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
