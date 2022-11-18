import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});
  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              Image.asset('assets/images/DSE_logo.png'),
              Text('Dhaka Stock Exchange',
                style: GoogleFonts.poppins(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
