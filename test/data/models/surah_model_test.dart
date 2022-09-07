import 'package:flutter_test/flutter_test.dart';
import 'package:ibadah_apps/data/models/surah_model.dart';
import 'package:ibadah_apps/domain/entities/surah.dart';

void main() {
  final surahModel = SurahModel(
    number: 1,
    sequence: 1,
    numberOfVerses: 1,
    name: Name(
      short: 'short',
      translation: Translation(id: 'id'),
      transliteration: Translation(
        id: 'id',
      ),
    ),
  );

  const surah = Surah(
    number: 1,
    numberOfVerse: 1,
    nameSurah: NameSurah('short'),
    transliterationSurah: TransliterationSurah('id'),
    translation: TranslationSurah('id'),
  );

  // menyamakan subkelas dari entitas surah
  test(
    'should be a subclass of Movie entity',
    () async {
      final result = surahModel.toEntity();
      expect(result, surah);
    },
  );
}
