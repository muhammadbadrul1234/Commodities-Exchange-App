//import 'dart:html';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class SideMenu extends StatefulWidget {
  const SideMenu({super.key});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  @override
  Widget build(BuildContext context) {
    // return a drawer with a drawer header at the right side
    return Drawer(
      child: Container(
        color: Color.fromARGB(255, 8, 69, 81),
        child: ListView(
          children: [
            DrawerHeader(
              // ignore: sort_child_properties_last
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'User',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                        ),
                      ),
                      const CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.white,
                        child: Text(""),
                      ),
                    ],
                  ),
                  // const SizedBox(
                  //   height: 40,
                  // ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Edit Profile'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32.0),
                      ),
                    ),
                  ),
                ],
              ),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 8, 69, 81),
              ),
            ),
            SizedBox(height: 50),
            Divider(
              color: Color.fromARGB(255, 8, 3, 3),
              thickness: 2,
            ),
            ListTile(
              leading: Icon(
                Icons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Home');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                "Stock Data",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Dashboard');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.info_outline,
                color: Colors.white,
              ),
              title: Text(
                "News",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Dashboard');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today_outlined,
                color: Colors.white,
              ),
              title: Text(
                "Top 10 Loser",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.message,
                color: Colors.white,
              ),
              title: Text(
                "Top 10 Gainer",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.calendar_today,
                color: Colors.white,
              ),
              title: Text(
                "About App",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.headphones,
                color: Colors.white,
              ),
              title: Text(
                "Developers",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.white,
              ),
              title: Text(
                "Supervisors",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Dashboard');
              },
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: Text(
                "Rating",
                style: TextStyle(color: Colors.white),
              ),
              onTap: () {
                FirebaseAuth.instance.signOut();
                Navigator.of(context).pop();
                Navigator.of(context).pushNamed('/Login');
              },
            ),
          ],
        ),
      ),
    );
  }
}
