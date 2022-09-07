import 'package:flutter_test/flutter_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:ibadah_apps/domain/usecase/surah/get_surah.dart';
import 'package:mockito/mockito.dart';

import '../../../dummy_data/data_object.dart';
import '../../../helpers/test_helpers.mocks.dart';

void main() {
  late GetSurah getSurah;
  late MockSurahRepository mockSurahRepository;

  setUp(
    () {
      mockSurahRepository = MockSurahRepository();
      getSurah = GetSurah(mockSurahRepository);
    },
  );

  // dapatkan list surah dari repository yang ada di usecase
  test(
    'should get list of surah from the repository',
    () async {
      // arrange
      // konfigurasi pengujian
      when(mockSurahRepository.getSurah())
          .thenAnswer((_) async => Right(surahList));

      // act
      // pengujian skenario
      final result = await getSurah.execute();

      //assert
      // hasil expetasi dari skenario yang dibuat
      expect(result, Right(surahList));
    },
  );
}
