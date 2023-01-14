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
              //email field with rounded corner
              Container(
                margin: EdgeInsets.only(top: 50),
                padding: EdgeInsets.only(left: 20),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  //background color of box
                  //upper corner rounded lower corner not rounded
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(15),
                    topLeft: Radius.circular(15),
                ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Email',
                  ),
                ),
              ),
              //password field with rounded corner with icon
              Container(
                margin: EdgeInsets.only(top: 2),
                padding: EdgeInsets.only(left: 20),
                width: 300,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(15),
                    bottomLeft: Radius.circular(15),
                  ),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Password',
                    suffixIcon: Icon(Icons.visibility_off),
                  ),
                ),
              ),
              //elevated login button green color
              Container(
                margin: EdgeInsets.only(top: 20),
                width: 300,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Login',
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    backgroundColor: Color(0xFF126172),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),

              //forgot password
              Container(
                margin: EdgeInsets.only(top: 20),
                child: TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?',
                    style: GoogleFonts.poppins(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
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
