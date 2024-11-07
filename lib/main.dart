import 'package:flutter/material.dart';
import 'pages/signup_page.dart';
import 'pages/home_page.dart';
import 'pages/hotel_page.dart';

void main() {
  runApp(RelaxInnApp());
}

class RelaxInnApp extends StatelessWidget {
  const RelaxInnApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Relax Inn',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/hotel': (context) => HotelPage(),
      },
    );
  }
}
