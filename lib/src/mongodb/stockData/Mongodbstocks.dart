import 'dart:convert';

MongoDbStocks mongoDbStocksFromJson(String str) =>
    MongoDbStocks.fromJson(json.decode(str));

String mongoDbStocksToJson(MongoDbStocks data) => json.encode(data.toJson());

class MongoDbStocks {
  MongoDbStocks({
    required this.empty,
    required this.change,
    required this.closep,
    required this.high,
    required this.low,
    required this.ltp,
    required this.trade,
    required this.tradingCode,
    required this.valueMn,
    required this.volume,
    required this.ycp,
  });

  String empty;
  String change;
  String closep;
  String high;
  String low;
  String ltp;
  String trade;
  String tradingCode;
  String valueMn;
  String volume;
  String ycp;

  factory MongoDbStocks.fromJson(Map<String, dynamic> json) => MongoDbStocks(
        empty: json["#"],
        change: json["% CHANGE"],
        closep: json["CLOSEP*"],
        high: json["HIGH"],
        low: json["LOW"],
        ltp: json["LTP*"],
        trade: json["TRADE"],
        tradingCode: json["TRADING CODE"],
        valueMn: json["VALUE (mn)"],
        volume: json["VOLUME"],
        ycp: json["YCP*"],
      );

  Map<String, dynamic> toJson() => {
        "#": empty,
        "% CHANGE": change,
        "CLOSEP*": closep,
        "HIGH": high,
        "LOW": low,
        "LTP*": ltp,
        "TRADE": trade,
        "TRADING CODE": tradingCode,
        "VALUE (mn)": valueMn,
        "VOLUME": volume,
        "YCP*": ycp,
      };
}
