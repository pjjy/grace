import 'dart:async';
import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class CheckData {
  static final CheckData _instance = CheckData._();
  Database? _database;

  CheckData._();

  factory CheckData() {
    return _instance;
  }

  Future<Database> get db async {
    if (_database != null) {
      return _database!;
    }

    _database = await init();

    return _database!;
  }

  Future<Database> init() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String dbPath = join(directory.path, 'check_data.db');
    var database = openDatabase(dbPath,
        version: 1,
        onCreate: _onCreate,
        onUpgrade: _onUpgrade, onConfigure: (Database db) async {
      await db.execute('PRAGMA cache_size = 10097152;');
    });

    return database;
  }

  void _onCreate(Database db, int version) {
    db.execute('''
      CREATE TABLE course(
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        courseName TEXT
        )''');

    print("Database was created!");
  }

  void _onUpgrade(Database db, int oldVersion, int newVersion) {
    // Run migration according database versions
  }

  Future<int> addHistory(course) async {
    var client = await db;
    return client.insert('course', {'courseName': course});
  }

  Future<List> fetcHistory() async {
    var client = await db;
    return await client.rawQuery('SELECT * FROM course');
  }

  Future deleteCourseHistory(id) async {
    var client = await db;
    client.rawQuery('DELETE FROM course WHERE id = ?', [id]);
  }
}
