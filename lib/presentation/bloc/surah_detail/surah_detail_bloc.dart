import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';
import 'package:ibadah_apps/domain/usecase/surah/get_surah_detail.dart';

part 'surah_detail_event.dart';
part 'surah_detail_state.dart';

class SurahDetailBloc extends Bloc<SurahDetailEvent, SurahDetailState> {
  final GetSurahDetail _getSurahDetail;

  SurahDetailBloc(this._getSurahDetail) : super(SurahDetailEmpty()) {
    on<SurahDetailEvent>(
      (event, emit) async {
        if (event is FetchSurahDetailEvent) {
          emit(SurahDetailLoading());
          final result = await _getSurahDetail.execute(event.id);

          result.fold(
            (failure) => emit(SurahDetailError(failure.message)),
            (data) => emit(SurahDetailHasData(data)),
          );
        }
      },
    );
  }
}
