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
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 50),
                Image(
                  image: AssetImage('assets/images/DSE_logo.png'),
                  height:140 ,
                ),
                SizedBox(height: 15),
                Text('Dhaka Stock Exchange',
                  style: GoogleFonts.poppins(
                    fontSize: 26.0,
                    fontWeight: FontWeight.w700
                  ),
                ),
                SizedBox(height: 30),
                Text('Log in',
                style: GoogleFonts.actor(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                       hintText: 'Email',
                       border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                 ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey.shade200,
                      filled: true,
                       hintText: 'Password',
                       border: OutlineInputBorder(
                       borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                 ),
                 SizedBox(height: 30),
                 ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                   ElevatedButton(
                     onPressed: () {
                       primary: Colors.white;
                       Navigator.pushNamed(context,'/Singup');
                      },
                      child: Text('SIGN IN',
                        style: GoogleFonts.poppins(
                          fontSize: 15.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                       backgroundColor: Color(0xFF126172),
                       foregroundColor: Colors.white,
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25.0),
                       ),
                      ),
                   ),
                  ],
                ),
                SizedBox(height: 15),
                Text('Forgot Password?',),
              ],  
            ),
          ),
        ),
      ), 
    );
  }
}
