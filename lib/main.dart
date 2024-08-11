import 'package:flutter/material.dart';
import 'package:flutter_tut/pages/home_page.dart';
import 'package:flutter_tut/pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
        primaryColor: Colors.grey,
        // fontFamily: GoogleFonts.lato(),
        primaryTextTheme: GoogleFonts.latoTextTheme(),
      ),
      initialRoute: "/",
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => HomePage(),
        '/login': (context) => LoginPage(),
      },
    );
  }
}
