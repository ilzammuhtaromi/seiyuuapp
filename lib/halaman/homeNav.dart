import 'package:seiyuuapp/halaman/home.dart';
import 'package:seiyuuapp/halaman/homeseiyuu.dart';
import 'package:seiyuuapp/halaman/profile.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int selectedPage = 0;

  final _pageChange = [
    HomePage(),
    HomeChara(),
    ProfilePage(),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageChange[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance_sharp),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.accessibility_new_outlined),
            label: 'Seiyuu',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_box),
            label: 'Profile',
            backgroundColor: Colors.purple,
          ),
        ],
        currentIndex: selectedPage,
        selectedItemColor: Colors.blue[400],
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
