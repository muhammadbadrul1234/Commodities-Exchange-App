// ignore_for_file: unnecessary_import

import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:fl_chart/fl_chart.dart';
import 'package:untitled/src/investment/dataset.dart';

class Investment extends StatelessWidget {
  const Investment({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xFF126172),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => Navigator.pop(context),
          ),
          title: const Text("Investment tools"),
        ),
        body: Stack(children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              color: const Color(0xFF126172),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height - 100,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
            ),
          ),
          Column(
            children: const [Market(), Recommended(), Return()],
          )
        ]));
  }
}

class Return extends StatelessWidget {
  const Return({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          Text("Return on Investment",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          SizedBox(
            height: 15,
          ),
          //Graph(),
        ],
      ),
    );
  }
}

class Graph extends StatelessWidget {
  const Graph({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: LineChart(LineChartData(
          minX: 0,
          maxX: 12,
          minY: 0,
          maxY: 12,
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          lineBarsData: [
            LineChartBarData(
                isCurved: true,
                barWidth: 5,
                isStrokeCapRound: true,
                dotData: FlDotData(show: false),
                belowBarData: BarAreaData(
                  show: true,
                ),
                aboveBarData: BarAreaData(
                  show: true,
                ),
                spots: [
                  const FlSpot(0, 0),
                  const FlSpot(1, 3),
                  const FlSpot(2, 4),
                  const FlSpot(3, 6),
                  const FlSpot(4, 4),
                  const FlSpot(5, 6),
                  const FlSpot(6, 7),
                  const FlSpot(7, 8),
                  const FlSpot(8, 7),
                  const FlSpot(9, 9),
                  const FlSpot(10, 6),
                  const FlSpot(11, 8),
                  const FlSpot(12, 9),
                ])
          ])),
    );
  }
}

class Recommended extends StatelessWidget {
  const Recommended({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Recommended for you",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(
                "See all",
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
          Column(
            children: [
              RecommendedItem(
                  name: recommendedList[0].name,
                  subtitle: recommendedList[0].subtitle,
                  value: recommendedList[0].value,
                  icon: recommendedList[0].icon),
              RecommendedItem(
                  name: recommendedList[1].name,
                  subtitle: recommendedList[1].subtitle,
                  value: recommendedList[1].value,
                  icon: recommendedList[1].icon),
              RecommendedItem(
                  name: recommendedList[2].name,
                  subtitle: recommendedList[2].subtitle,
                  value: recommendedList[2].value,
                  icon: recommendedList[2].icon)
            ],
          )
        ],
      ),
    );
  }
}

class RecommendedItem extends StatelessWidget {
  final String name;
  final String subtitle;
  final String value;
  final String icon;
  const RecommendedItem(
      {super.key,
      required this.name,
      required this.subtitle,
      required this.value,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.only(top: 20),
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(width: 0.2)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    image: DecorationImage(image: AssetImage(icon))),
              ),
              Container(
                margin: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      subtitle,
                      style: const TextStyle(color: Colors.black54),
                    )
                  ],
                ),
              )
            ],
          ),
          Text(
            value,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

class Market extends StatelessWidget {
  const Market({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Currency market",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              Text(
                "Open chart",
                style: TextStyle(color: Colors.black54),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                Currency(
                  currency: "EUR/USD",
                  value: "14,321",
                ),
                Currency(
                  currency: "USD/GBP",
                  value: "11,321",
                ),
                Currency(
                  currency: "USD/RUB",
                  value: "10,321",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Currency extends StatelessWidget {
  final String currency;
  final String value;
  const Currency({super.key, required this.currency, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15),
      width: 120,
      height: 90,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: const Color(0xFF333333).withOpacity(0.14),
                blurRadius: 2,
                offset: const Offset(0, 2))
          ],
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            currency,
            style: const TextStyle(color: Colors.black54),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            value,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
