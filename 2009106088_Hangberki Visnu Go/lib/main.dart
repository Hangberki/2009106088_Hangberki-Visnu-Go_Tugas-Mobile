import 'package:flutter/material.dart';

import 'form_page.dart';
import 'landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "baskvi",
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingPage(),
        '/dua': (context) => const FormPage(),
      },
    );
  }
}
