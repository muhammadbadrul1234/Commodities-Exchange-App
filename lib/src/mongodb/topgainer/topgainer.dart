// To parse this JSON data, do
//
//     final topGainer = topGainerFromJson(jsonString);

import 'dart:convert';

TopGainer topGainerFromJson(String str) => TopGainer.fromJson(json.decode(str));

String topGainerToJson(TopGainer data) => json.encode(data.toJson());

class TopGainer {
  TopGainer({
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

  factory TopGainer.fromJson(Map<String, dynamic> json) => TopGainer(
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
