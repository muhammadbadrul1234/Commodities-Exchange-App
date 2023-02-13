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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(0),
        child: AppBar(
          backgroundColor: Colors.white,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(250, 20, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.7),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.network(
                            'https://picsum.photos/seed/75/600',
                            width: 50,
                            height: 50,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(-0.72, 0),
                  child: Text(
                    'DSE Index',
                    style: GoogleFonts.poppins(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(35, 0, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: AlignmentDirectional(-0.72, 0),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 1, 75, 0),
                          child: Text(
                            '6508.00',
                            style: GoogleFonts.poppins(
                              fontSize: 26.0,
                              fontWeight: FontWeight.w700,
                              color: Color(0xFF3FBFA0),
                            ),
                          ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0.7, -0.25),
                        child: Text(
                          '+51.39 ',
                          style: GoogleFonts.poppins(
                            fontSize: 17.0,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF8E8E8E),
                          ),
                        ),
                      ),
                      Text(
                        '(0.79%)',
                        style: GoogleFonts.poppins(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF3FBFA0),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 200,
                  width: 300,
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
                            FlSpot(0, 6500),
                            FlSpot(2.6, 6579),
                            FlSpot(4.9, 6109),
                            FlSpot(6.8, 6259),
                            FlSpot(8, 6629),
                            FlSpot(9.5, 6500),
                            FlSpot(11, 6245),
                          ],
                          isCurved: true,
                          color: Color(0xFFA4FCBA),
                          barWidth: 1,
                          isStrokeCapRound: true,
                          dotData: FlDotData(
                            show: false,
                          ),
                          belowBarData: BarAreaData(
                            show: true,
                            color: Color(0xFFA4FCBA),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
