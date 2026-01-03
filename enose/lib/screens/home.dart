import 'package:enose/screens/result.dart';
import 'package:flutter/material.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 255, 255, 255),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 30),
            Center(child: Image.asset('assets/images/machine.jpg', width: 200)),
            const SizedBox(height: 60),
            SizedBox(
              height: 60,
              width: 10,
              child: FilledButton(
                onPressed: () {
                  result();
                },
                child: const Text(
                  'Start',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 60),
            Image.asset('assets/images/benefits.jpg'),
          ],
        ),
      ),
    );
  }
  void result() {
    runApp(const Result());
  }
}
