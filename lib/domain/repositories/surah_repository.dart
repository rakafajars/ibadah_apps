import 'package:fpdart/fpdart.dart';
import 'package:ibadah_apps/common/failure.dart';
import 'package:ibadah_apps/domain/entities/surah.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';

abstract class SurahRepository {
  Future<Either<Failure, List<Surah>>> getSurah();
  Future<Either<Failure, SurahDetail>> getSurahDetail(int id);
  Future<Either<Failure, String>> saveSurah(
      SurahDetail surahDetail, VerseSurah verseSurah);
  Future<Either<Failure, String>> removeSurah(
      SurahDetail surahDetail, VerseSurah verseSurah);
}
