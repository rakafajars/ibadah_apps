import 'package:ibadah_apps/domain/entities/surah.dart';

const surah = Surah(
  number: 1,
  numberOfVerse: 1,
  nameSurah: nameSurah,
  transliterationSurah: transliterationSurah,
  translation: translationSurah,
);

const nameSurah = NameSurah('nameSurah');

const transliterationSurah = TransliterationSurah('transliterationSurah');

const translationSurah = TranslationSurah('translationSurah');

List<Surah> surahList = [surah];
