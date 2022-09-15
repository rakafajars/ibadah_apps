import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:ibadah_apps/data/datasources/db/database_helper.dart';
import 'package:ibadah_apps/data/datasources/surah_local_data_source.dart';
import 'package:ibadah_apps/data/datasources/surah_remote_data_source.dart';
import 'package:ibadah_apps/data/repositories/surah_repository_impl.dart';
import 'package:ibadah_apps/domain/repositories/surah_repository.dart';
import 'package:ibadah_apps/domain/usecase/surah/get_surah.dart';
import 'package:ibadah_apps/domain/usecase/surah/get_surah_detail.dart';
import 'package:ibadah_apps/domain/usecase/surah/remove_surah.dart';
import 'package:ibadah_apps/domain/usecase/surah/save_surah.dart';
import 'package:ibadah_apps/presentation/bloc/surah/surah_bloc.dart';
import 'package:ibadah_apps/presentation/bloc/surah_detail/surah_detail_bloc.dart';
import 'package:ibadah_apps/presentation/bloc/surah_local/surah_local_bloc.dart';

final locator = GetIt.instance;

Future<void> init() async {
  // repository
  locator.registerLazySingleton<SurahRepository>(
    () => SurahRepositoryImpl(
      remoteDataSource: locator(),
      localDataSource: locator(),
    ),
  );

  // data source
  locator.registerLazySingleton<SurahRemoteDataSource>(
    () => SurahRemoteDataSourceImpl(locator()),
  );
  locator.registerLazySingleton<SurahLocalDataSource>(
    () => SurahLocalDataSourceImpl(databaseHelper: locator()),
  );

  // bloc
  locator.registerLazySingleton<SurahBloc>(
    () => SurahBloc(locator()),
  );
  locator.registerLazySingleton<SurahDetailBloc>(
    () => SurahDetailBloc(locator()),
  );

  locator.registerLazySingleton<SurahLocalBloc>(
    () => SurahLocalBloc(locator(), locator()),
  );

  // usecase
  locator.registerLazySingleton<GetSurah>(() => GetSurah(locator()));
  locator
      .registerLazySingleton<GetSurahDetail>(() => GetSurahDetail(locator()));
  locator.registerLazySingleton<SaveSurah>(() => SaveSurah(locator()));
  locator.registerLazySingleton<RemoveSurah>(() => RemoveSurah(locator()));

  // helper
  locator.registerLazySingleton<Dio>(() => Dio());

  // helper
  locator.registerLazySingleton<DatabaseHelper>(() => DatabaseHelper());
}
