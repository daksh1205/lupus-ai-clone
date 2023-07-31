import 'package:flutter/material.dart';
import 'package:lupus_ai/welcome_page.dart';
import 'package:lupus_ai/stats_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomePage(),
        '/newpage': (context) => const NewPage(),
      },
    );
  }
}
