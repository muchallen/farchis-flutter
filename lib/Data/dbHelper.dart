import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'usermodel.dart';

class DBHelper {
  static Database _db;
  static const String ID = 'id';
  static const String FNAME='fullName';
  static const String MOBILE='mobile';
  static const String EMAIL='email';
  static const String NAME = 'photoName';
  static const String TABLE = 'userTable';
  static const String DB_NAME = 'users.db';

  Future<Database> get db async {
    if (null != _db) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $TABLE ($ID INTEGER, $FNAME TEXT,  $EMAIL TEXT, $MOBILE TEXT, $NAME TEXT)");
  }

  Future<User> save(User user) async {
    var dbClient = await db;
    user.id = await dbClient.insert(TABLE, user.toMap());
    print(user.fullName);
    print("added");
    return user;
  }

  Future<List<User>> getPhotos() async {

    if(null!=db) {
      var dbClient = await db;
      List<Map> maps = await dbClient.query(TABLE, columns: [ID, NAME]);
      List<User> users = [];
      if (maps.length > 0) {
        for (int i = 0; i < maps.length; i++) {
          users.add(User.fromMap(maps[i]));
        }
      }
      print(users);
      return users;
    }else{
      print("hapana");
      return null;
    }
  }

  Future close() async {
    var dbClient = await db;
    dbClient.close();
  }
}
