import 'package:flutter/material.dart';

import 'dashboard.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var selectedItem = 0;
  List children = [
    DashBoardPage(),
    DashBoardPage(),
    DashBoardPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[selectedItem],
      backgroundColor: Color(0xFF202020),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1B1B1B),
        selectedItemColor: Color(0xFFFD4F99),
        iconSize: 25,
        currentIndex: selectedItem,
        unselectedLabelStyle: TextStyle(
          color: Color(0xFF1B1B1B),
        ),
        unselectedItemColor: Color(0xFF888888),
        onTap: (currtIndex) {
          setState(() {
            selectedItem = currtIndex;
          });
        },
        items: [
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFD4F99),
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.search),
            label: 'Search',
            activeIcon: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFD4F99),
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.camera_alt),
            label: 'Camera',
            activeIcon: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFD4F99),
              ),
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: Color(0xFF1B1B1B),
            icon: Icon(Icons.person_outline),
            label: 'Profile',
            activeIcon: Container(
              height: 5,
              width: 5,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFFD4F99),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
