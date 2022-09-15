import 'package:fpdart/fpdart.dart';
import 'package:ibadah_apps/common/failure.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';
import 'package:ibadah_apps/domain/repositories/surah_repository.dart';

class SaveSurah {
  final SurahRepository surahRepository;

  SaveSurah(this.surahRepository);

  Future<Either<Failure, String>> execute(
      SurahDetail surahDetail, VerseSurah verseSurah) {
    return surahRepository.saveSurah(surahDetail, verseSurah);
  }
}
