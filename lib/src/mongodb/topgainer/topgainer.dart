import 'dart:convert';

Topgainer topgainerFromJson(String str) => Topgainer.fromJson(json.decode(str));

String topgainerToJson(Topgainer data) => json.encode(data.toJson());

class Topgainer {
  Topgainer({
    required this.id,
    required this.empty,
    required this.tradingCode,
    required this.closep,
    required this.high,
    required this.low,
    required this.ycp,
    required this.change,
  });

  Id id;
  String empty;
  String tradingCode;
  String closep;
  String high;
  String low;
  String ycp;
  String change;

  factory Topgainer.fromJson(Map<String, dynamic> json) => Topgainer(
        id: Id.fromJson(json["_id"]),
        empty: json["#"],
        tradingCode: json["TRADING CODE"],
        closep: json["CLOSEP*"],
        high: json["HIGH"],
        low: json["LOW"],
        ycp: json["YCP*"],
        change: json["% CHANGE"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id.toJson(),
        "#": empty,
        "TRADING CODE": tradingCode,
        "CLOSEP*": closep,
        "HIGH": high,
        "LOW": low,
        "YCP*": ycp,
        "% CHANGE": change,
      };
}

class Id {
  Id({
    required this.oid,
  });

  String oid;

  factory Id.fromJson(Map<String, dynamic> json) => Id(
        oid: json["\u0024oid"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024oid": oid,
      };
}
