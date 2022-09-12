import 'package:fpdart/fpdart.dart';
import 'package:ibadah_apps/common/failure.dart';
import 'package:ibadah_apps/domain/repositories/surah_repository.dart';

import '../../entities/surah_detail.dart';

class GetSurahDetail {
  final SurahRepository repository;

  GetSurahDetail(this.repository);

  Future<Either<Failure, SurahDetail>> execute(int id) {
    return repository.getSurahDetail(id);
  }
}
