part of 'surah_bloc.dart';

abstract class SurahEvent extends Equatable {
  const SurahEvent();

  @override
  List<Object> get props => [];
}

class FetchSurahEvent extends SurahEvent {}

class FetchSurahDetailEvent extends SurahEvent {
  final int id;

  const FetchSurahDetailEvent(this.id);

  @override
  List<Object> get props => [id];
}
