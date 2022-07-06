import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/home/navigation_bar.dart';
import 'package:flutter_bayeue/pages/login/login_page.dart';
import 'package:flutter_bayeue/pages/login/started_page.dart';
import 'package:flutter_bayeue/viewmodel/auth_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
<<<<<<< HEAD
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
=======
        providers: [
          ChangeNotifierProvider(
            create: (_) => AuthProvider(),
          ),
        ],
        builder: (context, child) {
          var authProvider = Provider.of<AuthProvider>(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            home: authProvider.firstTime == true
                ? const StartedPage()
                : authProvider.isLogin == false
                    ? const LoginPage()
                    : const Navigationpage(),
          );
        });
>>>>>>> 7a412ffe3df8f405146a26b33182845abc5ffaca
  }
}
