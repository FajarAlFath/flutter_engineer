import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/favorite/favoritepage.dart';
import 'package:flutter_bayeue/pages/history/historypage.dart';
import 'package:flutter_bayeue/pages/homepage/homepage.dart';
import 'package:flutter_bayeue/pages/profile/profilepage.dart';
import 'package:unicons/unicons.dart';

class Navigationpage extends StatefulWidget {
  const Navigationpage({Key? key}) : super(key: key);

  @override
  State<Navigationpage> createState() => _NavigationpageState();
}

class _NavigationpageState extends State<Navigationpage> {
  int _currentIndex = 0;
  List<Widget> pages = const [
    Home(),
    History(),
    Favorite(),
    Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: const NavigationBarThemeData(
          indicatorColor: Colors.blue,
        ),
        child: NavigationBar(
          height: 60,
          selectedIndex: _currentIndex,
          onDestinationSelected: (int newIndex) {
            setState(() {
              _currentIndex = newIndex;
            });
          },
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(UniconsLine.estate),
              icon: Icon(UniconsLine.estate),
              label: 'Home',
            ),
            NavigationDestination(
              selectedIcon: Icon(UniconsLine.favorite),
              icon: Icon(UniconsLine.favorite),
              label: 'Favorite',
            ),
            NavigationDestination(
              selectedIcon: Icon(UniconsLine.invoice),
              icon: Icon(UniconsLine.invoice),
              label: 'History',
            ),
            NavigationDestination(
              selectedIcon: Icon(
                UniconsLine.user_circle,
                color: Colors.white,
              ),
              icon: Icon(UniconsLine.user_circle),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}
