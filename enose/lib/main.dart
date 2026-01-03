import 'package:flutter/material.dart';
import 'package:enose/screens/home.dart';

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
          title: const Text(
            'Home',
            style: TextStyle(
              color: Color.fromARGB(255, 26, 30, 113),
              fontSize: 32,
              fontWeight: FontWeight.bold,
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