import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lupus_ai/stats_page.dart';
import 'package:lupus_ai/bottom_nav_bar.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _currentBottomIndex = 0;
  void _handleBottomIndexChange(int index) {
    setState(() {
      _currentBottomIndex = index;
      switch (index) {
        case 0:
        case 1:
        case 2:
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const NewPage(),
            ),
          );
          break;
        case 3:
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          icon: Image.asset('assets/profile.png'),
        ),
        title: Text(
          'Welcome, Alex  👋',
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/scan.png',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/settings.png',
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        Text(
                          '\$ 3289,96',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w700),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 15.0),
                          child: Text(
                            'Total Balance',
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(width: 140),
                    Image.asset(
                      'assets/add.png',
                      width: 120,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Image.asset(
                  'assets/card_1.png',
                  width: 400,
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          iconSize: 50,
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/trans.png',
                          ),
                        ),
                        Text(
                          'Transaction',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    //Bal
                    Column(
                      children: [
                        IconButton(
                          iconSize: 50,
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/bal.png',
                          ),
                        ),
                        Text(
                          'Balance',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    //frauds
                    Column(
                      children: [
                        IconButton(
                          iconSize: 50,
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/fraud.png',
                          ),
                        ),
                        Text(
                          'Frauds',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),

                    //more
                    Column(
                      children: [
                        IconButton(
                          iconSize: 50,
                          onPressed: () {},
                          icon: Image.asset(
                            'assets/more.png',
                          ),
                        ),
                        Text(
                          'More',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'People',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Image.asset('assets/no.png'),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Image.asset('assets/safe1.png'),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Image.asset('assets/safe2.png'),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Image.asset('assets/unsafe1.png'),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Image.asset('assets/unsafe2.png'),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Image.asset('assets/zayn.png'),
                      ),
                      IconButton(
                        iconSize: 40,
                        onPressed: () {},
                        icon: Image.asset('assets/profile.png'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Transactions',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/sb.png'),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Starbucks',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                'Today, at 11:48 PM',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 50),
                          IconButton(
                            iconSize: 10,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call_made_rounded,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 75),
                          Row(
                            children: [
                              Text(
                                '- \$ 23.25',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),

                      // nf
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/netflix.png'),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 55.0),
                                    child: Text(
                                      'Netflix',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '15 Nov 2022, at 05:50 PM',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 25),
                          IconButton(
                            iconSize: 10,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call_made_rounded,
                              color: Colors.red,
                            ),
                          ),
                          SizedBox(width: 60),
                          Row(
                            children: [
                              Text(
                                '- \$ 239.25',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //figma
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/figma.png'),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      'Figma Sub',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '22 Nov 2022, at 10:48 AM',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 25),
                          IconButton(
                            iconSize: 10,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call_made_rounded,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 75),
                          Row(
                            children: [
                              Text(
                                '- \$ 12.99',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //zahir
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/unsafe1.png'),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 16.0),
                                    child: Text(
                                      'Zahir Mays',
                                      style: GoogleFonts.poppins(
                                        color: Colors.white,
                                        fontSize: 14,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                '10 Jan 2022, at 8:59 PM',
                                style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 8,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 30),
                          IconButton(
                            iconSize: 10,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call_made_rounded,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 70),
                          Row(
                            children: [
                              Text(
                                '- \$ 23.25',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //kelly
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset('assets/unsafe2.png'),
                          ),
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Kelly Jane',
                                    style: GoogleFonts.poppins(
                                      color: Colors.white,
                                      fontSize: 14,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 25.0),
                                child: Text(
                                  '10 Jan 2022',
                                  style: GoogleFonts.poppins(
                                    color: Colors.white,
                                    fontSize: 8,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(width: 50),
                          IconButton(
                            iconSize: 10,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.call_made_rounded,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(width: 70),
                          Row(
                            children: [
                              Text(
                                '- \$ 23.25',
                                style: GoogleFonts.poppins(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
