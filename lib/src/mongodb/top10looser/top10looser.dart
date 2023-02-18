// To parse this JSON data, do
//
//     final top10Looser = top10LooserFromJson(jsonString);

import 'dart:convert';

Top10Looser top10LooserFromJson(String str) =>
    Top10Looser.fromJson(json.decode(str));

String top10LooserToJson(Top10Looser data) => json.encode(data.toJson());

class Top10Looser {
  Top10Looser({
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

  factory Top10Looser.fromJson(Map<String, dynamic> json) => Top10Looser(
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
