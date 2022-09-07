import 'package:fpdart/fpdart.dart';
import 'package:ibadah_apps/common/failure.dart';
import 'package:ibadah_apps/domain/entities/surah.dart';

abstract class SurahRepository {
  Future<Either<Failure, List<Surah>>> getSurah();
}
