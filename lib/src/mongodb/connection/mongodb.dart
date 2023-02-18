import 'dart:developer';
import 'package:mongo_dart/mongo_dart.dart';
import 'constant.dart';

class MongoDatabase {
  static var db, collection, stockcollection, topgainer, toplooser;
  static connect() async {
    db = await Db.create(
        'mongodb+srv://admin:admin@cluster0.qdcrwel.mongodb.net/AllStock?retryWrites=true&w=majority');
    await db.open();
    print(inspect(db));
    //print database name
    //print(db.databaseName);
    collection = db.collection('News');
    stockcollection = db.collection('StockData');
    topgainer = db.collection('TopGainer');
    toplooser = db.collection('TopLooser');
    return db;
  }

  static Future<List<Map<String, dynamic>>> getNews() async {
    final arrData = await collection.find().toList();
    return arrData;
  }

  static Future<List<Map<String, dynamic>>> getStockData() async {
    final arrData2 = await stockcollection.find().toList();
    return arrData2;
  }

  static Future<List<Map<String, dynamic>>> getTopGainer() async {
    final arrData3 = await topgainer.find().toList();
    return arrData3;
  }

  static Future<List<Map<String, dynamic>>> getTopLooser() async {
    final arrData4 = await toplooser.find().toList();
    return arrData4;
  }
}
