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
              itemBuilder: (context) => [
                PopupMenuItem(
                  value: 1,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.developer_board, color: Color(0xFF126172)),
                          SizedBox(width: 10),
                          Text('About Developers'
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                PopupMenuItem(
                  child: Text('About App'),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text('Feedback'
                  ),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text('Licences'),
                  value: 2,
                ),
                PopupMenuItem(
                  child: Text('Exit'),
                  value: 2,
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                  Navigator.pushNamed(context, '/Login');
                } else if (value == 2) {
                  Navigator.pushNamed(context, '/Signup');
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







