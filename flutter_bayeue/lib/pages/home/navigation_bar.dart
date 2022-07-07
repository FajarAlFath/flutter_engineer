import 'package:flutter/material.dart';
import 'package:flutter_bayeue/pages/favorite/favoritepage.dart';
import 'package:flutter_bayeue/pages/history/historypage.dart';
import 'package:flutter_bayeue/pages/home/home_page.dart';
import 'package:flutter_bayeue/pages/profile/profilepage.dart';
import 'package:unicons/unicons.dart';

class Navigationpage extends StatefulWidget {
  const Navigationpage({Key? key}) : super(key: key);

  @override
  State<Navigationpage> createState() => _NavigationpageState();
}

class _NavigationpageState extends State<Navigationpage> {
  int _currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const History(),
    const Favorite(),
    const Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: pages[_currentIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedIconTheme: IconThemeData(color: Colors.blue),
        elevation: 16,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              UniconsLine.estate,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(
              UniconsLine.invoice,
            ),
            label: 'History',
          ),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                UniconsLine.favorite,
              ),
              label: 'Favorite'),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: Icon(
                UniconsLine.user_circle,
              ),
              label: 'Profile'),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blue[100],
        currentIndex: _currentIndex,
        iconSize: 40,
        onTap: (i) {
          setState(() {
            _currentIndex = i;
          });
        },
      ),
    );
  }
}
