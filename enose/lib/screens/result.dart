import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}
class _ResultState extends State<Result> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Home',
            style: TextStyle(
              color: Color.fromARGB(255, 26, 30, 113),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 60),
              Center(
                child: Image.asset('assets/images/machine.jpg', width: 200),
              ),
              SizedBox(height: 60),
              Text(
                'loading...',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}