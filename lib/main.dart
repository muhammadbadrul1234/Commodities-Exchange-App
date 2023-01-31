import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/src/splash_screen/first_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/login/login_page.dart';
//import 'package:untitled/firebase_options.dart';
import 'package:untitled/src/signup/signup.dart';
//import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'src/firebase/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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
        '/Login': (context) => const Login(),
        '/Signup': (context) => const Signup(),
      },
      home: const Signup(),
      debugShowCheckedModeBanner: false,
    );
  }
}
// END HOMEPAGE

