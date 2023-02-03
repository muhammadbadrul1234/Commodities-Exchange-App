import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard extends StatefulWidget {
  final String value;
  const Dashboard({
    Key? key,
    required this.value,
  }) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
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
                      .copyWith(topRight: Radius.circular(0))),
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
                          Text(''),
                        ],
                      ),
                    ],
                  ),
                ),
                PopupMenuItem(
                  child: Text(''),
                  value: 2,
                ),
              ],
              onSelected: (value) {
                if (value == 1) {
                } else if (value == 2) {}
              },
            ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Text(
                "Hi,",
                style: GoogleFonts.poppins(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              Text(
                "${widget.value}",
                style: GoogleFonts.poppins(
                  fontSize: 30.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
}
