import 'package:fpdart/fpdart.dart';

import '../../../common/failure.dart';
import '../../entities/surah.dart';
import '../../repositories/surah_repository.dart';

class GetSurah {
  final SurahRepository repository;

  GetSurah(this.repository);

  Future<Either<Failure, List<Surah>>> execute() {
    return repository.getSurah();
  }
}
