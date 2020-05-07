import 'package:spend_book/core/spend_record.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'package:path/path.dart';

class DbProvider {
  DbProvider._();
  static final DbProvider db = DbProvider._();
  static Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }
    _database = await initDb();
    return _database;
  }

  initDb() async {
    return await openDatabase(
      join(await getDatabasesPath(), 'spend_book.db'),
      onCreate: (db, version) async {
        await db.execute('''
        CREATE TABLE spend_records (
          id INTEGER PRIMARY KEY,
          userId INTEGER,
          creationTime datetime,
          year INTEGER,
          month INTEGER,
          day INTEGER,
          bookingType INTEGER,
          type INTEGER,
          color INTEGER,
          amount double
        )
        ''');
      },
      version: 1
    );
  }

  createRecord(SpendRecord newRecord) async{
    final db=await database;
    var res =await db.rawInsert('''
    INSERT INTO spend_records(
      userId,
      amount
    ) VALUES(?,?)''',
    [newRecord.userId, newRecord.amount]);
    return res;
  }

  Future<dynamic> getRecord() async {
    final db=await database;
    var res =await db.query('spend_records');
    if (res.length==0) {
      return null;
    }
    return res;
  }

}
