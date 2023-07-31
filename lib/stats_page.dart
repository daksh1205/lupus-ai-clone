import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'bottom_nav_bar.dart';
import 'package:lupus_ai/tabs/frauds_page.dart';
import 'package:lupus_ai/tabs/safe_page.dart';
import 'package:lupus_ai/tab_bar/my_tabbar.dart';

class NewPage extends StatefulWidget {
  const NewPage({super.key});

  @override
  State<NewPage> createState() => _NewPageState();
}

class _NewPageState extends State<NewPage> {
  List tabOptions = const [
    ["Frauds", FraudPage()],
    ["Safe", SafePage()],
  ];

  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int? index) {
    setState(() {
      _currentBottomIndex = index!;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabOptions.length,
      child: Scaffold(
        backgroundColor: Colors.black,
        bottomNavigationBar: MyBottomNavBar(
          index: _currentBottomIndex,
          onTap: _handleBottomIndexChange,
        ),
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.west_rounded),
          ),
          centerTitle: true,
          title: Text(
            'Statistics',
            style: GoogleFonts.poppins(
              color: Colors.white,
              fontSize: 16,
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 140.0),
                    child: Text(
                      '\$',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Text(
                    '123.12',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 45,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        'You spent this week',
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Image.asset(
                          'assets/arrowdown.png',
                          height: 20,
                        ),
                      ),
                      Text(
                        '16%',
                        style: GoogleFonts.poppins(
                          color: Colors.green,
                          fontSize: 12,
                        ),
                      ),
                      const SizedBox(
                        width: 85,
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: SizedBox(
                          height: 30,
                          width: 80,
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 8.0,
                              bottom: 8.0,
                              right: 20,
                              left: 24,
                            ),
                            child: Text(
                              'Card 1',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w700,
                                fontSize: 10,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('assets/graph.png'),
                  ),
                  SizedBox(
                    height: 400,
                    child: MyTabBar(
                      tabOptions: tabOptions,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
