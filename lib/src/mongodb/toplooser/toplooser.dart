// To parse this JSON data, do
//
//     final topLooser = topLooserFromJson(jsonString);

import 'dart:convert';

TopLooser topLooserFromJson(String str) => TopLooser.fromJson(json.decode(str));

String topLooserToJson(TopLooser data) => json.encode(data.toJson());

class TopLooser {
  TopLooser({
    required this.empty,
    required this.tradingCode,
    required this.closep,
    required this.high,
    required this.low,
    required this.ycp,
    required this.change,
  });

  String empty;
  String tradingCode;
  String closep;
  String high;
  String low;
  String ycp;
  String change;

  factory TopLooser.fromJson(Map<String, dynamic> json) => TopLooser(
        empty: json["#"],
        tradingCode: json["TRADING CODE"],
        closep: json["CLOSEP*"],
        high: json["HIGH"],
        low: json["LOW"],
        ycp: json["YCP*"],
        change: json["% CHANGE"],
      );

  Map<String, dynamic> toJson() => {
        "#": empty,
        "TRADING CODE": tradingCode,
        "CLOSEP*": closep,
        "HIGH": high,
        "LOW": low,
        "YCP*": ycp,
        "% CHANGE": change,
      };
}
