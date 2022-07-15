import 'package:flutter/material.dart';
import 'package:flutter_bayeue/viewmodel/products_providers.dart';
import 'package:provider/provider.dart';
import 'package:unicons/unicons.dart';

class FiturPulsa extends StatefulWidget {
  const FiturPulsa({Key? key, required this.slug}) : super(key: key);

  final String slug;

  @override
  State<FiturPulsa> createState() => _FiturPulsaState();
}

class _FiturPulsaState extends State<FiturPulsa> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      Provider.of<ProductsDetailProvider>(context, listen: false)
          .getProductsDetail(slug: widget.slug.toString());
    });
  }

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
          'Fitur',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 26,
              color: Colors.black.withOpacity(0.8)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 247, 240, 240),
      body: Text('data'),
    );
  }
}
