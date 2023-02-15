import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            //mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(250, 20, 0, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    const Align(
                      alignment: AlignmentDirectional(0, -0.7),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(0, 0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.network(
                          'https://picsum.photos/seed/75/600',
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
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-0.72, 0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0, 1, 75, 0),
                        child: Text(
                          '6508.00',
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
                        '+51.39 ',
                        style: GoogleFonts.poppins(
                          fontSize: 22.0,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF8E8E8E),
                        ),
                      ),
                    ),
                    Text(
                      '(0.79%)',
                      style: GoogleFonts.poppins(
                        fontSize: 22.0,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xFF3FBFA0),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 200,
                width: 350,
                child: LineChart(
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
                    maxX: 11,
                    minY: 6000,
                    maxY: 7000,
                    lineBarsData: [
                      LineChartBarData(
                        spots: [
                          const FlSpot(0, 6500),
                          const FlSpot(2.6, 6579),
                          const FlSpot(4.9, 6109),
                          const FlSpot(6.8, 6259),
                          const FlSpot(8, 6629),
                          const FlSpot(9.5, 6500),
                          const FlSpot(11, 6245),
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
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: _createDataTable(),
              ),
              const SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(width: 10),
                    Container(
                      alignment: Alignment.center,
                      height: 120,
                      //width: 350,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 104, 255, 142),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            ' Top Gainer ',
                            style: GoogleFonts.poppins(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            ' Top Gainer ',
                            style: GoogleFonts.poppins(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      height: 120,
                      //width: 350,
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 104, 255, 142),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(20),
                          topLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Top Loser',
                            style: GoogleFonts.poppins(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Top Loser',
                            style: GoogleFonts.poppins(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
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
                Icons.notifications,
                color: Colors.white,
              ),
              label: 'Notification',
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
      const DataColumn(label: Text('Author')),
      const DataColumn(label: Text('Author'))
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
