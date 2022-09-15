import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';
import 'package:ibadah_apps/domain/usecase/surah/remove_surah.dart';
import 'package:ibadah_apps/domain/usecase/surah/save_surah.dart';

part 'surah_local_event.dart';
part 'surah_local_state.dart';

class SurahLocalBloc extends Bloc<SurahLocalEvent, SurahLocalState> {
  final SaveSurah _saveSurah;
  final RemoveSurah _removeSurah;
  SurahLocalBloc(this._saveSurah, this._removeSurah)
      : super(SurahLocalEmpty()) {
    on<SurahLocalEvent>((event, emit) async {
      if (event is AddSurahEvent) {
        final result =
            await _saveSurah.execute(event.surahDetail, event.verseSurah);

        result.fold(
          (failure) => emit(SaveSurahError(failure.message)),
          (data) => emit(SaveSurahHasData(data)),
        );
      }
      if (event is RemoveSurahEvent) {
        final result =
            await _removeSurah.execute(event.surahDetail, event.verseSurah);

        result.fold(
          (failure) => emit(RemoveSurahError(failure.message)),
          (data) => emit(RemoveSurahHasData(data)),
        );
      }
    });
  }
}
