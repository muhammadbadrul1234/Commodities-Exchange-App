// ignore_for_file: prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/src/investment/investmentPage.dart';
import 'package:untitled/src/mongodb/connection/mongodb.dart';
import 'package:untitled/src/pages/homescreen.dart';
import 'package:untitled/src/pages/news.dart';
import 'package:untitled/src/pages/stockdataall.dart';
import 'package:untitled/src/widgets/linechart_1/home.dart';
import 'package:untitled/src/pages/first_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/login/login_page.dart';
import 'package:untitled/src/login/signup.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:untitled/src/investment/investmentPage.dart';


class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  final screens = [
    HomeScreen(),
    Signup(),
    MongoDBNewsPage(),
    MongoDBStockDataPage(),
    InvestmentPage(),
  ];

  @override
  Widget build(BuildContext context) => Scaffold(
        body: screens[currentIndex],
        bottomNavigationBar: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24),
            topLeft: Radius.circular(24),
          ),
          child: BottomNavigationBar(
            //padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            //alignment: FractionalOffset.bottomCenter,

            backgroundColor: const Color(0xFF126172),
            // type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex,
            onTap: (index) {
              setState(() {
                currentIndex = index;
                print("Bottom Navigation Index: ${index} Pressed");
              });
            },
            selectedItemColor: Colors.white,
            // ignore: prefer_const_literals_to_create_immutables
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_mini,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                label: 'Home',
                backgroundColor: Color(0xFF126172),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.search_rounded,
                  color: Colors.white,
                ),
                label: 'Search',
                backgroundColor: Color(0xFF126172),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.newspaper_rounded,
                  color: Colors.white,
                ),
                label: 'News',
                backgroundColor: Color(0xFF126172),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.data_array,
                  color: Colors.white,
                ),
                label: 'Stocks Data',
                backgroundColor: Color(0xFF126172),
              ),
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_3,
                  color: Colors.white,
                ),
                label: 'Profile',
                backgroundColor: Color(0xFF126172),
              ),
            ],
          ),
        ),
      );
}
