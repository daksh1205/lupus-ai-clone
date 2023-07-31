import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTabBar extends StatelessWidget {
  final List tabOptions;
  const MyTabBar({
    Key? key,
    required this.tabOptions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelStyle: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          unselectedLabelColor: Colors.white,
          labelStyle: GoogleFonts.poppins(
            fontSize: 15,
          ),
          tabs: [
            Tab(
              child: Text(
                tabOptions[0][0],
              ),
            ),
            Tab(
              child: Text(
                tabOptions[1][0],
              ),
            ),
          ],
        ),
        Expanded(
          child: TabBarView(
            children: [
              tabOptions[0][1],
              tabOptions[1][1],
            ],
          ),
        ),
      ],
    );
  }
}
