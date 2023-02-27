// ignore_for_file: sized_box_for_whitespace

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/mongodb/connection/mongodb.dart';
import 'package:untitled/src/mongodb/stockData/Mongodbstocks.dart';
import 'package:untitled/src/mongodb/topgainer/topgainer.dart';
import 'package:untitled/src/mongodb/toplooser/toplooser.dart';
import 'package:untitled/src/pages/news.dart';
import 'package:untitled/src/mongodb/top10gainer/top10gainer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DocumentSnapshot? variable;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: PreferredSize(
      //   preferredSize: Size.fromHeight(0),
      //   child: AppBar(
      //     backgroundColor: Colors.white,
      //   ),
      // ),

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(250, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Align(
                      alignment: AlignmentDirectional(0, -0.7),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 70, 0),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: 
                        Image.network(
                          'https://pps.whatsapp.net/v/t61.24694-24/321233402_1275695943028531_3863014530715446454_n.jpg?ccb=11-4&oh=01_AdQAdxXYlu53wLpZ9UqnhGqTM8mVf3uFxyu2-X6LfDiHRg&oe=6409FFBC',
                          width: 50,
                          height: 50,
                          // fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-0.72, 0),
                child: Text(
                  'DSE Index',
                  style: GoogleFonts.poppins(
                    fontSize: 22.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                child: FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection('Graph')
                      .doc('MEeruEJPpeY02qfMFut5')
                      .get(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      variable = snapshot.data as DocumentSnapshot;
                      final Map<String, dynamic> quad =
                          variable!.data() as Map<String, dynamic>;
                      return Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Align(
                            alignment: const AlignmentDirectional(-0.72, 0),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  0, 1, 75, 0),
                              child: Text(
                                quad['Index'].toString(),
                                style: GoogleFonts.poppins(
                                  fontSize: 26.0,
                                  fontWeight: FontWeight.w700,
                                  color: const Color(0xFF3FBFA0),
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0.7, -0.25),
                            child: Text(
                              quad['gain/loose'].toString(),
                              style: GoogleFonts.poppins(
                                fontSize: 22.0,
                                fontWeight: FontWeight.w500,
                                color: const Color(0xFF8E8E8E),
                              ),
                            ),
                          ),
                          Text(
                            quad['percentage'].toString(),
                            style: GoogleFonts.poppins(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xFF3FBFA0),
                            ),
                          ),
                        ],
                      );
                    } else {
                      return const CircularProgressIndicator();
                    }
                  },
                ),
              ),
              SizedBox(
                height: 200,
                width: 350,
                child: FutureBuilder(
                    future: FirebaseFirestore.instance
                        .collection('Graph')
                        .doc('Lchs4Glk8uqc8BblQjlm')
                        .get(),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        variable = snapshot.data as DocumentSnapshot;
                        final Map<String, dynamic> quad =
                            variable!.data() as Map<String, dynamic>;

                        //get the spots from the firebase cloudstore
                        return LineChart(
                          LineChartData(
                            lineTouchData: LineTouchData(
                              enabled: false,
                            ),
                            gridData: FlGridData(
                              show: false,
                            ),
                            titlesData: FlTitlesData(
                              show: false,
                            ),
                            borderData: FlBorderData(
                              show: false,
                            ),
                            minX: 0,
                            maxX: 18,
                            minY: 6000,
                            maxY: 7000,
                            lineBarsData: [
                              LineChartBarData(
                                spots: [
                                  //get the spots from the firebase cloudstore

                                  FlSpot(quad['x1']!.toDouble(),
                                      quad['y1']!.toDouble()),
                                  FlSpot(quad['x2']!.toDouble(),
                                      quad['y2']!.toDouble()),
                                  FlSpot(quad['x3']!.toDouble(),
                                      quad['y3']!.toDouble()),
                                  FlSpot(quad['x4']!.toDouble(),
                                      quad['y4']!.toDouble()),
                                  FlSpot(quad['x5']!.toDouble(),
                                      quad['y5']!.toDouble()),
                                  FlSpot(quad['x6']!.toDouble(),
                                      quad['y6']!.toDouble()),
                                  FlSpot(quad['x7']!.toDouble(),
                                      quad['y7']!.toDouble()),
                                  FlSpot(quad['x8']!.toDouble(),
                                      quad['y8']!.toDouble()),
                                  FlSpot(quad['x9']!.toDouble(),
                                      quad['y9']!.toDouble()),
                                  FlSpot(quad['x10']!.toDouble(),
                                      quad['y10']!.toDouble()),

                                  // const FlSpot(2.6, 6579),
                                  // const FlSpot(4.9, 6109),
                                  // const FlSpot(6.8, 6259),
                                  // const FlSpot(8, 6629),
                                  // const FlSpot(9.5, 6500),
                                  // const FlSpot(11, 6245),
                                ],
                                isCurved: true,
                                color: const Color(0xFFA4FCBA),
                                barWidth: 1,
                                isStrokeCapRound: true,
                                dotData: FlDotData(
                                  show: false,
                                ),
                                belowBarData: BarAreaData(
                                  show: true,
                                  color: const Color(0xFFA4FCBA),
                                ),
                              ),
                            ],
                          ),
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    }),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: _createDataTable(),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  //mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(width: 6),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        height: 210,
                        width: 200,
                        decoration: const BoxDecoration(
                          //dcolor: Color(0xFFA4FCBA),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: FutureBuilder(
                          future: MongoDatabase.getTopGainer(),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
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
                                      return displaycard(TopGainer.fromJson(
                                          snapshot.data[index]));
                                    });
                              } else {
                                return Text("No Data Found");
                              }
                            }
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        alignment: Alignment.center,
                        height: 210,
                        width: 200,
                        decoration: const BoxDecoration(
                          //dcolor: Color(0xFFA4FCBA),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(20),
                            topLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: FutureBuilder(
                          future: MongoDatabase.getTopLooser(),
                          builder: (context, AsyncSnapshot snapshot) {
                            if (snapshot.connectionState ==
                                ConnectionState.waiting) {
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
                                      return displaycard2(TopLooser.fromJson(
                                          snapshot.data[index]));
                                    });
                              } else {
                                return Text("No Data Found");
                              }
                            }
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 340,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 109, 109, 109),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Top 10 List of Gainers',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                      color: const Color(0xFF3FBFA0),
                    ),
                  ),
                ),
                //box decoreation
              ),
              DataTable(
                headingRowHeight: 50,
                border: TableBorder.all(
                  color: Color.fromARGB(255, 109, 109, 109),
                  width: 4,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                columns: [
                  DataColumn(
                    label: Text(
                      '  Company   ',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 109, 109, 109),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Price',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 109, 109, 109),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      ' Change ',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 109, 109, 109),
                      ),
                    ),
                  ),
                ],
                rows: [],
              ),
              //table builder widget
              Align(
                //alignment: Alignment.bottomCenter,

                child: Container(
                  height: 340,
                  width: 377,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 109, 109, 109),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),

                  //alignment: FractionalOffset.center,

                  child: FutureBuilder(
                    future: MongoDatabase.getTop10Gainer(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        if (snapshot.hasData) {
                          var totalData = snapshot.data.length;
                          print("Total Data: " + totalData.toString());
                          print("Data :" + snapshot.data.toString());

                          return ListView.builder(
                              itemCount: totalData,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 175,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   color: Color(0xFF126172),
                                          //   width: 1,
                                          // ),
                                          ),
                                      child: Text(
                                        snapshot.data[index]['TRADING CODE'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   color: Color(0xFF126172),
                                          //   width: 1,
                                          // ),
                                          ),
                                      child: Text(
                                        snapshot.data[index]['HIGH'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: const Color(0xFF3FBFA0),
                                          width: 1,
                                        ),
                                        color: const Color(0xFF3FBFA0),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Text(
                                        snapshot.data[index]['% CHANGE'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                                SizedBox(height: 10);
                              });
                        } else {
                          return Text("No Data Found");
                        }
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 30),
              SizedBox(
                height: 40,
                width: 340,
                child: Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 109, 109, 109),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Top 10 List of Loosers',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w800,
                      color: Color.fromARGB(255, 97, 30, 30),
                    ),
                  ),
                ),
                //box decoreation
              ),
              DataTable(
                headingRowHeight: 50,
                border: TableBorder.all(
                  color: Color.fromARGB(255, 109, 109, 109),
                  width: 4,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                columns: [
                  DataColumn(
                    label: Text(
                      '  Company   ',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 109, 109, 109),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'Price',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 109, 109, 109),
                      ),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      ' Change ',
                      style: GoogleFonts.poppins(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 109, 109, 109),
                      ),
                    ),
                  ),
                ],
                rows: [],
              ),
              //table builder widget
              Align(
                //alignment: Alignment.bottomCenter,

                child: Container(
                  height: 340,
                  width: 377,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 109, 109, 109),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),

                  //alignment: FractionalOffset.center,

                  child: FutureBuilder(
                    future: MongoDatabase.getTop10Looser(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(
                          child: CircularProgressIndicator(),
                        );
                      } else {
                        if (snapshot.hasData) {
                          var totalData = snapshot.data.length;
                          print("Total Data: " + totalData.toString());
                          print("Data :" + snapshot.data.toString());

                          return ListView.builder(
                              itemCount: totalData,
                              itemBuilder: (context, index) {
                                return Row(
                                  children: [
                                    Container(
                                      height: 30,
                                      width: 175,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   color: Color(0xFF126172),
                                          //   width: 1,
                                          // ),
                                          ),
                                      child: Text(
                                        snapshot.data[index]['TRADING CODE'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Container(
                                      height: 30,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          // border: Border.all(
                                          //   color: Color(0xFF126172),
                                          //   width: 1,
                                          // ),
                                          ),
                                      child: Text(
                                        snapshot.data[index]['HIGH'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                    SizedBox(width: 20),
                                    Container(
                                      alignment: Alignment.center,
                                      width: 80,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color:
                                              Color.fromARGB(255, 191, 63, 63),
                                          width: 1,
                                        ),
                                        color: Color.fromARGB(255, 191, 63, 63),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: Text(
                                        snapshot.data[index]['% CHANGE'],
                                        textAlign: TextAlign.center,
                                        style: GoogleFonts.poppins(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.w500,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                                SizedBox(height: 10);
                              });
                        } else {
                          return Text("No Data Found");
                        }
                      }
                    },
                  ),
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  DataTable _createDataTable() {
    return DataTable(
      columns: _createColumns(),
      rows: _createRows(),
      columnSpacing: 18,
      dividerThickness: 0,
      dataRowHeight: 30,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15),
          topRight: Radius.circular(15),
          topLeft: Radius.circular(15),
        ), // this only make bottom rounded and not top
        color: Color(0xFF126172),
      ),
      showBottomBorder: true,
      border: TableBorder.symmetric(
          inside: const BorderSide(
              color: Color.fromARGB(255, 255, 255, 255), width: 1)),
      headingRowHeight: 30,
      headingTextStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.bold,
          fontSize: 16,
          color: Color.fromARGB(255, 0, 255, 170)),
      headingRowColor: MaterialStateProperty.resolveWith(
          (states) => const Color(0xFF126172)),
      dataTextStyle: const TextStyle(
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
          fontSize: 14,
          color: Color.fromARGB(255, 255, 255, 255)),
    );
  }

  List<DataColumn> _createColumns() {
    return [
      const DataColumn(label: Text('Index')),
      const DataColumn(label: Text('Value')),
      const DataColumn(label: Text('Change')),
      const DataColumn(label: Text('Change%'))
    ];
  }

  List<DataRow> _createRows() {
    return [
      const DataRow(cells: [
        DataCell(Text('DSEX')),
        DataCell(Text('6256.17307')),
        DataCell(Text('-14.69931')),
        DataCell(Text('-0.23441%'))
      ]),
      const DataRow(cells: [
        DataCell(Text('DSES')),
        DataCell(Text('1368.28323')),
        DataCell(Text('-3.37738')),
        DataCell(Text('-0.24623%'))
      ]),
      const DataRow(cells: [
        DataCell(Text('DS30')),
        DataCell(Text('2226.65884')),
        DataCell(Text('-5.43127')),
        DataCell(Text('-0.24333%'))
      ])
    ];
  }
}

Widget displaycard(TopGainer data) {
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
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    //shadowColor: const Color(0xFF126172),
    //elevation: 10,
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
        ],
      ),
    ),
    margin: EdgeInsets.all(10),
  );
}

Widget displaycard2(TopLooser data) {
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
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
    //shadowColor: const Color(0xFF126172),
    //elevation: 10,
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
        ],
      ),
    ),
    margin: EdgeInsets.all(10),
  );
}
