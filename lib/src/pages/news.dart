import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/mongodb/connection/mongodb.dart';

import '../mongodb/news/mogodbmodelnews.dart';

class MongoDBNewsPage extends StatefulWidget {
  const MongoDBNewsPage({Key? key}) : super(key: key);
  @override
  _MongoDBNewsPageState createState() => _MongoDBNewsPageState();
}

class _MongoDBNewsPageState extends State<MongoDBNewsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text(
            "News",
            style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: const Color(0xFF126172),
                fontSize: 22,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          backgroundColor: Color.fromARGB(255, 255, 255, 255),
        ),
      ),
      body: SafeArea(
        child: FutureBuilder(
          future: MongoDatabase.getNews(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else {
              if (snapshot.hasData) {
                var totalData = snapshot.data.length;
                print("Total Data: " + totalData.toString());
                return ListView.builder(
                    itemCount: totalData,
                    itemBuilder: (context, index) {
                      return displaycard(
                          MongoDbModel.fromJson(snapshot.data[index]));
                    });
              } else {
                return Text("No Data Found");
              }
            }
          },
        ),
      ),
     
    );
  }
}

Widget displaycard(MongoDbModel data) {
  return Card(
    //color: Color.fromARGB(255, 158, 162, 158),
    shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(30).copyWith(topRight: Radius.circular(0))),
    shadowColor: const Color(0xFF126172),
    elevation: 10,
    // ignore: sort_child_properties_last
    child: Container(
      padding: const EdgeInsets.all(20.0),
      // ignore: prefer_const_constructors
      decoration: BoxDecoration(
        // ignore: prefer_const_constructors
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [const Color(0xFF3FBFA0), Color(0xFF126172)],
        ),
        borderRadius:
            BorderRadius.circular(30).copyWith(topRight: Radius.circular(0)),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '${data.newsTitle}',
              //textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Text(
              '  ${data.postDate}',
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontSize: 12.0,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '${data.news}',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    ),
    margin: EdgeInsets.all(10),
  );
}
