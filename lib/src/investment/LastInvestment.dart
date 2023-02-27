// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:untitled/src/investment/dataset.dart';

class LastInvestment extends StatelessWidget {
  const LastInvestment({Key? key}) : super(key: key);

  double calculatePie(int value) {
    int total = lastInvestment[0].value +
        lastInvestment[1].value +
        lastInvestment[2].value;
    double result = (value / total) * 100;
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 20),
      width: 350,
      height: 250,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(15)),
          boxShadow: [
            BoxShadow(
                color: Colors.black54.withOpacity(0.2),
                offset: const Offset(0, 0),
                blurRadius: 15)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Last investments",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              //Icon(Icons.arrow_forward_ios,size: 20,color: Colors.grey,)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                  width: 120,
                  height: 120,
                  child: Stack(
                    children: [
                      Positioned(
                        child: PieChart(PieChartData(sections: [
                          PieChartSectionData(
                              value: calculatePie(lastInvestment[0].value),
                              color: Colors.greenAccent,
                              radius: 16,
                              showTitle: false),
                          PieChartSectionData(
                              value: calculatePie(lastInvestment[1].value),
                              color: Colors.orangeAccent,
                              radius: 18,
                              showTitle: false),
                          PieChartSectionData(
                              value: calculatePie(lastInvestment[2].value),
                              color: Colors.blue,
                              radius: 14,
                              showTitle: false)
                        ], centerSpaceRadius: 30, sectionsSpace: 5)),
                      ),
                      Positioned(
                          child: Center(
                              child: Text(
                        "${lastInvestment[0].value + lastInvestment[1].value + lastInvestment[2].value}\$",
                        style: const TextStyle(fontSize: 12),
                      ))),
                    ],
                  )),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.trip_origin,
                        color: Colors.greenAccent,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lastInvestment[0].name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "+\$${lastInvestment[0].value}",
                            style: const TextStyle(color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.trip_origin,
                        color: Colors.orangeAccent,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lastInvestment[1].name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "+\$${lastInvestment[1].value}",
                            style: const TextStyle(color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.trip_origin,
                        color: Colors.blue,
                        size: 15,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            lastInvestment[2].name,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                          ),
                          const SizedBox(height: 3),
                          Text(
                            "+\$${lastInvestment[2].value}",
                            style: const TextStyle(color: Colors.black54),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
