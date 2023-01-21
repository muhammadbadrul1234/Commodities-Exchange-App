import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/first_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/login_page.dart';
import 'package:untitled/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commodities Exchange App',
      routes: {
        '/Login':(context) => const Login(),
        '/Signup':(context) => const Signup(),
      },
      debugShowCheckedModeBanner: false,
      //home: Login(),
      home: Splashscreen(),
    );
  }
}

//HOMEPAGE
class Homepage extends StatefulWidget {
  const Homepage({super.key});
  //intialize the firebase app
  Future<FirebaseApp> initializeFirebase() async {
    FirebaseApp app = await Firebase.initializeApp();
    print(app.name);
    return app;
    //ss
  }
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
// END HOMEPAGE 