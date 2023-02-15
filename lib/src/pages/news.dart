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
    ));
  }

  Widget displaycard(MongoDbModel data) {
    return Card(
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '${data.newsTitle}',
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              '${data.postDate}',
              textAlign: TextAlign.justify,
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
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
