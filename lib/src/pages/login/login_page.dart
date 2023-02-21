import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/src/dashboard/dashboard.dart';
import 'package:untitled/src/navigationbar/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool isLoading = false;
  final emailController = TextEditingController(),
      passwordController = TextEditingController();
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
                    'Commodities Exchange ',
                    style: GoogleFonts.poppins(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  
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
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Email',
                        icon: Icon(Icons.email),
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
                      border: Border.all(
                        color: Colors.grey,
                        width: 1,
                      ),
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Password',
                        icon: Icon(Icons.lock),
                        // password hidden
                      ),
                    ),
                  ),
                  //elevated login button green color
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    width: 100,
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
                        await login();
                        print("emailController.text");
                      },
                      child: isLoading
                          ? SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                  color: Colors.white, strokeWidth: 3))
                          : Text(
                              'Login',
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
                  //elevated login button green color

                  //forgot password
                  if (!isKeyboard)
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
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
        ));
  }

  //firebase auth
  Future<void> login() async {
    await FirebaseAuth.instance
        .signInWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) => Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => Home())))

        // Navigator.pushNamed(context, '/signup'))
        .catchError((e) => print(e));
  }
}
