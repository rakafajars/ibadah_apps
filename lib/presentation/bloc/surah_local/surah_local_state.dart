part of 'surah_local_bloc.dart';

abstract class SurahLocalState extends Equatable {
  const SurahLocalState();

  @override
  List<Object> get props => [];
}

class SurahLocalEmpty extends SurahLocalState {}

class SaveSurahHasData extends SurahLocalState {
  final String message;

  const SaveSurahHasData(this.message);

  @override
  List<Object> get props => [message];
}

class SaveSurahError extends SurahLocalState {
  final String message;

  const SaveSurahError(this.message);

  @override
  List<Object> get props => [message];
}

class RemoveSurahHasData extends SurahLocalState {
  final String message;

  const RemoveSurahHasData(this.message);

  @override
  List<Object> get props => [message];
}

class RemoveSurahError extends SurahLocalState {
  final String message;

  const RemoveSurahError(this.message);

  @override
  List<Object> get props => [message];
}
