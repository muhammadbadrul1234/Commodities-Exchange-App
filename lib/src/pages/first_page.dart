// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          actions: [
            PopupMenuButton(
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
                .copyWith(topRight: Radius.circular(0))
              ),
              padding: EdgeInsets.all(10),
              elevation: 10,
              color: Colors.grey.shade100,
              //color: Colors.white,
              itemBuilder:(context)=>[
                PopupMenuItem(
                  value: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.developer_board, color: Color(0xFF126172)),
                          SizedBox(width: 10),
                          Text('Developers'
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                 PopupMenuItem(
                  value: 2,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.apps, color: Color(0xFF126172)),
                          SizedBox(width: 10),
                          Text('About App'),
                        ],
                      ),
                    ],
                  ),
                ),
                 PopupMenuItem(
                  value: 3,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.people, color: Color(0xFF126172)),
                          SizedBox(width: 10),
                          Text('Supervisors'),
                        ],
                      ),
                    ],
                  ),
                ),
                 PopupMenuItem(
                  value: 4,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.no_encryption_rounded, color: Color(0xFF126172)),
                          SizedBox(width: 10),
                          Text('Licences'),
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.feedback, color: Color(0xFF126172)),
                          SizedBox(width: 10),
                          Text('Feedback'),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Navigator.pushNamed(context, '/Developer');
                } else if (value == 2) {
                  Navigator.pushNamed(context, '/App');
                }
                else if (value == 3) {
                  Navigator.pushNamed(context, '/Supervisor');
                }
                else if (value == 4) {
                  Navigator.pushNamed(context, '/Licence');
                }
                else if (value == 5) {
                  Navigator.pushNamed(context, '/Feedback');
                }
              },
            ),
          ],
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(height: 20),
              Image(
                image: AssetImage('assets/images/DSE_logo.png'),
                height: 169,
              ),
              SizedBox(height: 47),
              Text(
                'Commodities Exchange ',
                style: GoogleFonts.poppins(
                  fontSize: 26.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 78),
              Text(
                'Feel the new experience of Stock',
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                'Market.',
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 120),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      primary:
                      Colors.white;
                      Navigator.pushNamed(context, '/Login');
                    },
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(236, 39),
                      backgroundColor: Color(0xFF126172),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.only(top: 0),
                child: TextButton(
                  onPressed: () {
                    primary:
                    Colors.white;
                    Navigator.pushNamed(context, '/Signup');
                  },
                  child: Text(
                    'Signup',
                    style: GoogleFonts.poppins(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF126172),
                    ),
                  ),
                ),
              ),
              //textbutton for sign up
            ],
          ),
        ),
      ),
    );
  }
}







