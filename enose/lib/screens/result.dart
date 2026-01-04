import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget {
  const Result({super.key});

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 10), () {
      if (mounted) {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Normal()),
        );
      }
    });
    // You can add any initialization code here if needed
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            ' Home',
            style: GoogleFonts.kanit(
              color: const Color.fromARGB(255, 26, 30, 113),
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 40,
              fontWeight: FontWeight.w600,
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
                style: GoogleFonts.kanit(
              color: const Color.fromARGB(255, 129, 129, 129),
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 28,
              fontWeight: FontWeight.w500,
            ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Normal extends StatelessWidget {
  const Normal({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            ' Home',
            style: GoogleFonts.kanit(
              color: const Color.fromARGB(255, 26, 30, 113),
              textStyle: Theme.of(context).textTheme.displayLarge,
              fontSize: 40,
              fontWeight: FontWeight.w600,
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
              SizedBox(
                width: 300,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 142, 186, 220),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 8,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 64, 113, 192),
                            borderRadius: BorderRadius.circular(40),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 3),
                              Image.asset(
                                'assets/images/checkmark.png',
                                width: 40,
                                height: 40,
                              ),
                              SizedBox(width: 40),
                              Center(
                                child: Text(
                                  'RESULT',
                                  style: GoogleFonts.kanit(
                                    fontSize: 32,

                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 10, width: 300),
                        Text(
                          '   สถานะ',
                          style: GoogleFonts.kanit(
                            color: Color.fromARGB(255, 26, 30, 113),
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 28,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          '        คุณไม่มีความเสี่ยงเป็นโรคเบาหวาน',
                          style: GoogleFonts.kanit(
                            color: Color.fromARGB(255, 26, 30, 113),
                            textStyle: Theme.of(context).textTheme.displayLarge,
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: 20),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
