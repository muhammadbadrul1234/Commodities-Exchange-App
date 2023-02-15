import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/src/dashboard/dashboard.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  bool isLoading = false;
  final nameController = TextEditingController(),
      emailController = TextEditingController();
      //myController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    // ),
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              reverse: true,
              padding: EdgeInsets.all(32),
              child: Column(
                children: [
                  // SizedBox(height: 60),
                  if (!isKeyboard)
                    Image(
                      image: AssetImage('assets/images/DSE_logo.png'),
                      height: 169,
                    ),
                  SizedBox(height: 47),
                  Text(
                    ' Contact Us ',
                    style: GoogleFonts.poppins(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    padding: EdgeInsets.only(left: 20),
                    width: 325,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E1),
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25),
                        topLeft: Radius.circular(25),
                      ),
                    ),
                    child: TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Full Name',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        icon: Icon(
                          Icons.person,
                        ),
                        //icon color change on focus
                      ),
                      autofocus: true,
                    ),
                  ),

                  //email text field
                  Container(
                    margin: EdgeInsets.only(top: 1),
                    padding: EdgeInsets.only(left: 20),
                    width: 325,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xFFE1E1E1),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(0),
                      ),
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        hintStyle: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        icon: Icon(Icons.email),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 120,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () async {
                        setState(() {
                          isLoading = true;
                        });
                        Future.delayed(
                          Duration(seconds: 2),
                              () {
                            setState(() {
                              isLoading = false;
                            });
                          },
                        );
                        //await contact();
                        print("emailController.text");
                      },
                      child: isLoading
                          ? SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(
                              color: Colors.white, strokeWidth: 3))
                          : Text(
                        'Contact Us',
                        style: GoogleFonts.poppins(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w700,
                        ),
                      ),

                      //bb
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        backgroundColor: Color(0xFF126172),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

