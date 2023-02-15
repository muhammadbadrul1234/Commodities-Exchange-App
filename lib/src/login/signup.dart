import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/login/login_page.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});
  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final nameController = TextEditingController(),
      emailController = TextEditingController(),
      phoneController = TextEditingController(),
      passwordController = TextEditingController(),
      confirmPasswordController = TextEditingController(),
      nidController = TextEditingController(),
      taxrController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isKeyboard = MediaQuery.of(context).viewInsets.bottom != 0;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: SingleChildScrollView(
            reverse: true,
            padding: EdgeInsets.all(32),
            child: Column(
              children: [
                if (!isKeyboard) SizedBox(height: 60),
                if (!isKeyboard)
                  Image(
                    image: AssetImage('assets/images/DSE_logo.png'),
                    height: 169,
                  ),
                if (!isKeyboard) SizedBox(height: 10),
                if (isKeyboard) SizedBox(height: 40),
                if (!isKeyboard)
                  Text(
                    'Commodities Exchange ',
                    style: GoogleFonts.poppins(
                      fontSize: 26.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                if (!isKeyboard) SizedBox(height: 10),
                if (!isKeyboard)
                  Text(
                    'Create an account',
                    style: GoogleFonts.poppins(
                      fontSize: 18.0,
                      fontWeight: FontWeight.w600,
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
                  margin: EdgeInsets.only(top: 1),
                  padding: EdgeInsets.only(left: 20),
                  width: 325,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E1E1),
                  ),
                  child: TextField(
                    controller: phoneController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Phone Number',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      icon: Icon(Icons.phone),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1),
                  padding: EdgeInsets.only(left: 20),
                  width: 325,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E1E1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                    ),
                  ),
                  child: TextField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      icon: Icon(Icons.lock),
                    ),
                  ),
                ),
                //confirm password field with dynamic icon
                Container(
                  margin: EdgeInsets.only(top: 1),
                  padding: EdgeInsets.only(left: 20),
                  width: 325,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E1E1),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(0),
                      topLeft: Radius.circular(0),
                    ),
                  ),
                  child: TextField(
                    controller: confirmPasswordController,
                    obscureText: true,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Confirm Password',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      icon: Icon(Icons.password),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 1),
                  padding: EdgeInsets.only(left: 20),
                  width: 325,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E1E1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(0),
                      bottomLeft: Radius.circular(0),
                    ),
                  ),
                  child: TextField(
                    controller: nidController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'NID Number',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      icon: Icon(Icons.credit_card_rounded),
                      //focus color
                    ),
                  ),
                ),
                //Tax Return ID field with dynamic icon
                Container(
                  margin: EdgeInsets.only(top: 1),
                  padding: EdgeInsets.only(left: 20),
                  width: 325,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFE1E1E1),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                  ),
                  child: TextField(
                    controller: taxrController,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Tax Return ID',
                      hintStyle: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                      ),
                      icon: Icon(Icons.document_scanner),
                    ),
                  ),
                ),
                //check the box to agree our terms and conditions
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Checkbox(
                        value: false,
                        onChanged: (value) {},
                      ),
                      Text(
                        'I agree to the Terms and Conditions',
                        style: GoogleFonts.poppins(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
                //sign up button
                Container(
                  margin: EdgeInsets.only(top: 10),
                  width: 235,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFF126172),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                  ),
                  child: TextButton(
                    onPressed: () async {
                      await signup();
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: Text(
                      'Register',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ),
              ],
              //Signup button
            ),
          ),
        ),
      ),
    );
  }

  Future signup() async {
    final firebaseauth = FirebaseAuth.instance;
    await firebaseauth
        .createUserWithEmailAndPassword(
            email: emailController.text, password: passwordController.text)
        .then((value) {
          firebaseauth.currentUser!.updateDisplayName(nameController.text);
      final firestoreInstance = FirebaseFirestore.instance;
      firestoreInstance
          .collection("Users")
          .doc(firebaseauth.currentUser!.uid)
          .set({
        "name": nameController.text,
        "email": emailController.text,
        "phone": phoneController.text,
        "nid": nidController.text,
        "taxr": taxrController.text,
      }).then((value) {
        print("User Added");
      });
    });
  }
}
