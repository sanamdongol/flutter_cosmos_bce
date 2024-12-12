import 'package:flutter/material.dart';
import 'package:flutter_cosmos_class/bottom_menu/bottom_five.dart';
import 'package:flutter_cosmos_class/bottom_menu/bottom_four.dart';
import 'package:flutter_cosmos_class/bottom_menu/bottom_one.dart';
import 'package:flutter_cosmos_class/bottom_menu/bottom_three.dart';
import 'package:flutter_cosmos_class/bottom_menu/bottom_two.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int _currentIndex = 0;
  List pages = [
    BottomOnePage(),
    BottomTwoPage(),
    BottomThreePage(),
    BottomFourPage(),
    BottomFivePage()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        currentIndex: _currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'One',
            icon: Icon(Icons.looks_one_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Two',
            icon: Icon(Icons.looks_two_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Three',
            icon: Icon(Icons.looks_3_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Four',
            icon: Icon(Icons.looks_4_outlined),
          ),
          BottomNavigationBarItem(
            label: 'Five',
            icon: Icon(Icons.looks_5_outlined),
          )
        ],
      ),
    );
  }
}
