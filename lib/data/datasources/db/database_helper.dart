import 'package:ibadah_apps/data/models/surah_table.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static DatabaseHelper? _databaseHelper;

  DatabaseHelper._instance() {
    _databaseHelper = this;
  }

  factory DatabaseHelper() => _databaseHelper ?? DatabaseHelper._instance();

  static Database? _database;

  Future<Database?> get database async {
    _database ??= await _initDb();
    return _database;
  }

  static const String _tblAyat = 'ayat';

  Future<Database> _initDb() async {
    final path = await getDatabasesPath();
    final databasePath = '$path/ibadahapp.db';

    var db = await openDatabase(
      databasePath,
      version: 1,
      onCreate: _onCreate,
    );

    return db;
  }

  void _onCreate(Database db, int version) async {
    await db.execute('''
      CREATE TABLE $_tblAyat (
        id INTEGER PRIMARY KEY,
        nameSurah TEXT,
        ayat TEXT,
        verseMeaning TEXT
      );
    ''');
  }

  Future<int> insertSurah(SurahTable surahTable) async {
    final db = await database;
    return await db!.insert(_tblAyat, surahTable.toJson());
  }

  Future<int> removeSurah(SurahTable surahTable) async {
    final db = await database;
    return await db!.delete(
      _tblAyat,
      where: "id = ?",
      whereArgs: [surahTable.id],
    );
  }

  Future<Map<String, dynamic>?> getSurahById(int id) async {
    final db = await database;
    final results = await db!.query(
      _tblAyat,
      where: 'id = ?',
      whereArgs: [id],
    );

    if (results.isNotEmpty) {
      return results.first;
    } else {
      return null;
    }
  }

  Future<List<Map<String, dynamic>>> getSurahListLocal() async {
    final db = await database;
    final List<Map<String, dynamic>> results = await db!.query(_tblAyat);

    return results;
  }
}
