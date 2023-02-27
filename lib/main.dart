//documentation done by: Badrul
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/src/investment/investmentPage.dart';
import 'package:untitled/src/mongodb/connection/mongodb.dart';
import 'package:untitled/src/navigationbar/home.dart';
import 'package:untitled/src/pages/about/aboutapp.dart';
import 'package:untitled/src/pages/about/aboutdevelopers.dart';
import 'package:untitled/src/pages/about/aboutsupervisor.dart';
import 'package:untitled/src/pages/about/feedback.dart';
import 'package:untitled/src/pages/about/licence.dart';
import 'package:untitled/src/pages/chatroom.dart';
import 'package:untitled/src/pages/homescreen.dart';
import 'package:untitled/src/pages/login/completeprofile.dart';
import 'package:untitled/src/pages/news.dart';
import 'package:untitled/src/ratingPage/ratingUs.dart';
import 'package:untitled/src/widgets/linechart_1/home.dart';
import 'package:untitled/src/pages/first_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/pages/login/login_page.dart';
import 'package:untitled/src/pages/login/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'src/firebase/firebase_options.dart';
import 'src/dashboard/dashboard.dart';
import 'src/pages/about/feedback.dart';

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
        '/Developer': (context) => const AboutDeveloper(),
        '/Supervisor': (context) => const Supervisor(),
        '/App': (context) => const AboutApp(),
        '/Licence': (context) => const License(),
        '/Feedback': (context) => const FeedbackPage(),
      },
      home: const Home(),

      //const Dashboard(value: "value"),
      debugShowCheckedModeBanner: false,
    );
  }
}
// END HOMEPAGE

