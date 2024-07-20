import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  BottomNavigation({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: Color(0xFFFAB515), // Color for selected icon
      unselectedItemColor: Colors.grey, // Color for unselected icons
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'الرئيسية',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          label: 'التصنيفات',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person),
          label: 'تسجيل الدخول',
        ),
      ],
    );
  }
}
