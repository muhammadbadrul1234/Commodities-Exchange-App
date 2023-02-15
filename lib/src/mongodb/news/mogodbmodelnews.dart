import 'dart:convert';

MongoDbModel mongoDbModelFromJson(String str) =>
    MongoDbModel.fromJson(json.decode(str));

String mongoDbModelToJson(MongoDbModel data) => json.encode(data.toJson());

class MongoDbModel {
  MongoDbModel({
    required this.tradingCode,
    required this.newsTitle,
    required this.news,
    required this.postDate,
  });

  String tradingCode;
  String newsTitle;
  String news;
  DateTime postDate;

  factory MongoDbModel.fromJson(Map<String, dynamic> json) => MongoDbModel(
        tradingCode: json["Trading Code"],
        newsTitle: json["News Title"],
        news: json["News"],
        postDate: DateTime.parse(json["Post Date"]),
      );

  Map<String, dynamic> toJson() => {
        "Trading Code": tradingCode,
        "News Title": newsTitle,
        "News": news,
        "Post Date":
            "${postDate.year.toString().padLeft(4, '0')}-${postDate.month.toString().padLeft(2, '0')}-${postDate.day.toString().padLeft(2, '0')}",
      };
}
