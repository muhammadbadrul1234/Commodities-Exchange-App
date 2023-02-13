import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/src/widgets/linechart_1/linechart.dart';

class LCW extends StatefulWidget {
  const LCW({super.key});
  @override
  State<LCW> createState() => _LCWState();
}

class _LCWState extends State<LCW> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          height: 200,
          width: 300,
          child: LineChartWidget(),
        ),
      ),
    );
  }
}
