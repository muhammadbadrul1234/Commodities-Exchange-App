import 'dart:developer';

import 'package:mongo_dart/mongo_dart.dart';
import 'constant.dart';

class MongoDatabase {
  static var db, collection;
  static connect() async {
    db = await Db.create(
        'mongodb+srv://admin:admin@cluster0.qdcrwel.mongodb.net/AllStock?retryWrites=true&w=majority');
    await db.open();
    print(inspect(db));
    //print database name
    //print(db.databaseName);
    collection = db.collection('News');
    return db;
  }

  static Future<List<Map<String, dynamic>>> getNews() async {
    final arrData = await collection.find().toList();
    return arrData;
  }

  
}
