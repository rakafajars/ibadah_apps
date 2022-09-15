import 'package:ibadah_apps/data/datasources/db/database_helper.dart';
import 'package:ibadah_apps/data/models/surah_table.dart';

import '../../common/exception.dart';

abstract class SurahLocalDataSource {
  Future<String> insertSurah(SurahTable surahTable);
  Future<String> removeSurah(SurahTable surahTable);
}

class SurahLocalDataSourceImpl extends SurahLocalDataSource {
  final DatabaseHelper databaseHelper;

  SurahLocalDataSourceImpl({required this.databaseHelper});
  @override
  Future<String> insertSurah(SurahTable surahTable) async {
    try {
      await databaseHelper.insertSurah(surahTable);
      return 'Added to Surah';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }

  @override
  Future<String> removeSurah(SurahTable surahTable) async {
    try {
      await databaseHelper.removeSurah(surahTable);
      return 'Remove to Surah';
    } catch (e) {
      throw DatabaseException(e.toString());
    }
  }
}
