// To parse this JSON data, do
//
//     final top10Gainer = top10GainerFromJson(jsonString);

import 'dart:convert';

Top10Gainer top10GainerFromJson(String str) =>
    Top10Gainer.fromJson(json.decode(str));

String top10GainerToJson(Top10Gainer data) => json.encode(data.toJson());

class Top10Gainer {
  Top10Gainer({
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

  factory Top10Gainer.fromJson(Map<String, dynamic> json) => Top10Gainer(
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
