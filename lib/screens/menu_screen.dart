import 'package:belajar/screens/home_screen.dart';
import 'package:belajar/screens/input_form.dart';
import 'package:belajar/screens/list_screen.dart';
import 'package:belajar/screens/second_screen.dart';
import 'package:belajar/screens/thrid_screen.dart';
import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  int _selectedtab = 0;
  List _pages = [
    HomeScreen(),
    ListScreen(),
    BelajarForm(),
  ];
  _changetab(int index) {
    setState(() {
      _selectedtab = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedtab],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedtab,
        onTap: (index) => _changetab(index),
        selectedItemColor: Colors.amber,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Cari'),
          BottomNavigationBarItem(icon: Icon(Icons.payment), label: 'Thrid')
        ],
      ),
    );
  }
}
