part of 'surah_local_bloc.dart';

abstract class SurahLocalEvent extends Equatable {
  const SurahLocalEvent();
}

class AddSurahEvent extends SurahLocalEvent {
  final SurahDetail surahDetail;
  final VerseSurah verseSurah;

  const AddSurahEvent(this.surahDetail, this.verseSurah);

  @override
  List<Object> get props => [surahDetail, verseSurah];
}

class RemoveSurahEvent extends SurahLocalEvent {
  final SurahDetail surahDetail;
  final VerseSurah verseSurah;

  const RemoveSurahEvent(this.surahDetail, this.verseSurah);
  @override
  List<Object> get props => [surahDetail, verseSurah];
}
