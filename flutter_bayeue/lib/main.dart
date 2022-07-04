import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/home/navigation_bar.dart';
import 'package:flutter_bayeue/viewmodel/auth_provider.dart';
import 'package:flutter_bayeue/viewmodel/category_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthProvider(),
        ),
        // ChangeNotifierProvider(
        //   create: (_) => CategoryProvider(),
        // ),
      ],
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Navigationpage(),
      ),
    );
  }
}
