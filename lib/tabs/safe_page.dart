import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SafePage extends StatelessWidget {
  const SafePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Latest Transactions',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.navigate_next_rounded,
                  color: Colors.white,
                ),
              ),
            ],
          ),

          // sb
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                //kelly new
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
                    const SizedBox(width: 75),
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

                // nf new
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
                    const SizedBox(width: 78),
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
                //sb
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

                //zahirnew
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
                    const SizedBox(width: 75),
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
                //figma

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
                    SizedBox(width: 65),
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
                //zahir

                //kelly
              ],
            ),
          ),
        ],
      ),
    );
  }
}
