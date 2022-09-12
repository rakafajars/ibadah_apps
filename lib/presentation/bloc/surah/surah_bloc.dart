import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibadah_apps/domain/entities/surah.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';
import 'package:ibadah_apps/domain/usecase/surah/get_surah.dart';
import 'package:ibadah_apps/domain/usecase/surah/get_surah_detail.dart';

part 'surah_event.dart';
part 'surah_state.dart';

class SurahBloc extends Bloc<SurahEvent, SurahState> {
  final GetSurah _getSurah;
  final GetSurahDetail _getSurahDetail;
  SurahBloc(
    this._getSurah,
    this._getSurahDetail,
  ) : super(SurahEmpty()) {
    on<SurahEvent>(
      (event, emit) async {
        if (event is FetchSurahEvent) {
          emit(SurahLoading());
          final result = await _getSurah.execute();

          result.fold(
            (failure) => emit(SurahError(failure.message)),
            (data) {
              if (data.isEmpty) {
                emit(SurahEmpty());
              } else {
                emit(SurahHasData(data));
              }
            },
          );
        } else if (event is FetchSurahDetailEvent) {
          emit(SurahLoading());
          final result = await _getSurahDetail.execute(event.id);

          result.fold(
            (failure) => emit(SurahError(failure.message)),
            (data) => emit(SurahDetailHasData(data)),
          );
        }
      },
    );
  }
}
