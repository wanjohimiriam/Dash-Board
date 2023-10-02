//
// ignore_for_file: prefer_const_constructors

import 'package:dashboard/list.dart';
import 'package:flutter/material.dart';

class BNavBar extends StatefulWidget {
  const BNavBar({super.key});

  @override
  State<BNavBar> createState() => _BNavBarState();
}

class _BNavBarState extends State<BNavBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return bNavBar();
  }

  Widget bNavBar() {
    return BottomNavigationBar(
      items: items,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.shifting,
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.purple[900],
      unselectedItemColor: Colors.black38,
      selectedLabelStyle: TextStyle(fontSize: 15),
      unselectedIconTheme: IconThemeData(
        color: Colors.black38,
      ),
      unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 12),
      selectedIconTheme: IconThemeData(size: 23, color: Colors.purple[900]),
      iconSize: 20,
      onTap: _onItemTapped,
      elevation: 5,
    );
  }
}
