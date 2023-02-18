/*
not fulfilled yet
 */

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/src/investment/investmentPage.dart';
import 'package:untitled/src/mongodb/connection/mongodb.dart';
import 'package:untitled/src/navigationbar/home.dart';
import 'package:untitled/src/pages/homescreen.dart';
import 'package:untitled/src/pages/news.dart';
import 'package:untitled/src/widgets/linechart_1/home.dart';
import 'package:untitled/src/pages/first_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/login/login_page.dart';
import 'package:untitled/src/login/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'src/firebase/firebase_options.dart';
import 'src/dashboard/dashboard.dart';

//12121
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  print("Firebase Initiated");
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  WidgetsFlutterBinding.ensureInitialized();
  print("Mongodb Initiated");
  await MongoDatabase.connect();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Commodities Exchange App',
      routes: {
        '/Login': (context) => const Login(),
        '/Signup': (context) => const Signup(),
        '/Dashboard': (context) => const Dashboard(),
      },
      home: const Home(),

      //const Dashboard(value: "value"),
      debugShowCheckedModeBanner: false,
    );
  }
}
// END HOMEPAGE

