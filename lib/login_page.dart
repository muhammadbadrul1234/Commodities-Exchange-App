import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            children: [
              SizedBox(height: 110),
              Image(
                image: AssetImage('assets/images/DSE_logo.png'),
                height:169 ,
              ),
              SizedBox(height: 47),
              Text('Dhaka Stock Exchange',
                style: GoogleFonts.poppins(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 65),
              Text('Log in',
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
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
