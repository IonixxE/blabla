import 'package:flutter/material.dart';
import 'package:enose/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eNose',
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            ' Home',
            style: GoogleFonts.kanit(
              color: const Color.fromARGB(255, 26, 30, 113),
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 40,
              fontWeight: FontWeight.w600,
            ),
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          centerTitle: false,
        ),
        body: const Home(),
      ),
    );
  }
}
