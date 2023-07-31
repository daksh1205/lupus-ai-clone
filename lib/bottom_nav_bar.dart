import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onTap;

  const MyBottomNavBar({
    Key? key,
    required this.index,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white,
      backgroundColor: Color.fromARGB(255, 28, 13, 54),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset(
            'assets/homen.png',
            height: 35,
          ),
          label: '',
        ),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/money.png',
              height: 35,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/stats.png',
              height: 35,
            ),
            label: ''),
        BottomNavigationBarItem(
            icon: Image.asset(
              'assets/acc.png',
              height: 35,
            ),
            label: ''),
      ],
    );
  }
}
