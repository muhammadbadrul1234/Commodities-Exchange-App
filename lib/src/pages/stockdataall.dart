import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/mongodb/connection/mongodb.dart';
import '../mongodb/news/mogodbmodelnews.dart';
import '../mongodb/stockData/Mongodbstocks.dart';

class MongoDBStockDataPage extends StatefulWidget {
  const MongoDBStockDataPage({Key? key}) : super(key: key);
  @override
  _MongoDBStockDataPageState createState() => _MongoDBStockDataPageState();
}

class _MongoDBStockDataPageState extends State<MongoDBStockDataPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text(
            "All Stock Data",
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
          future: MongoDatabase.getStockData(),
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
                          MongoDbStocks.fromJson(snapshot.data[index]));
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

Widget displaycard(MongoDbStocks data) {
  getColor() {
    if (data.change == '--') {
      return Color.fromARGB(255, 167, 166, 166);
    }
    if (data.change.contains('-')) {
      return Color.fromARGB(255, 252, 126, 126);
    } else {
      return Color(0xFFA4FCBA);
    }
  }

  return Card(
    color: getColor(),
    shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(30).copyWith(topRight: Radius.circular(0))),
    shadowColor: const Color(0xFF126172),
    elevation: 10,
    // ignore: sort_child_properties_last
    child: Container(
      padding: const EdgeInsets.all(20.0),
      // ignore: prefer_const_constructors
      // decoration: BoxDecoration(
      //   // ignore: prefer_const_constructors

      //   gradient: LinearGradient(
      //     begin: Alignment.topLeft,
      //     end: Alignment.bottomRight,
      //     colors: [const Color(0xFF3FBFA0), Color(0xFF126172)],
      //   ),
      //   borderRadius:
      //       BorderRadius.circular(30).copyWith(topRight: Radius.circular(0)),
      // ),

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              '${data.tradingCode}',
              //textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 16.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Last Trade Price: ${data.ltp}         %Change: ${data.change}  ',
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Todays High: ${data.high}     Low: ${data.low}  ',
              textAlign: TextAlign.right,
              style: GoogleFonts.poppins(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Closing Price Today: ${data.closep}    Yesterday: ${data.ycp}',
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Value(mn): ${data.valueMn}        Trade: ${data.trade}',
              textAlign: TextAlign.right,
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
