import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:ibadah_apps/data/datasources/surah_local_data_source.dart';
import 'package:ibadah_apps/data/models/surah_table.dart';
import 'package:ibadah_apps/domain/entities/surah.dart';
import 'package:ibadah_apps/common/failure.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';
import 'package:ibadah_apps/domain/repositories/surah_repository.dart';

import '../../common/exception.dart';
import '../datasources/surah_remote_data_source.dart';

class SurahRepositoryImpl extends SurahRepository {
  final SurahRemoteDataSource remoteDataSource;
  final SurahLocalDataSource localDataSource;

  SurahRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  @override
  Future<Either<Failure, List<Surah>>> getSurah() async {
    try {
      final result = await remoteDataSource.getSurah();
      return Right(result.map((model) => model.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, SurahDetail>> getSurahDetail(int id) async {
    try {
      final result = await remoteDataSource.getSurahDetail(id);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure(''));
    } on SocketException {
      return const Left(ConnectionFailure('Failed to connect to the network'));
    }
  }

  @override
  Future<Either<Failure, String>> removeSurah(
    SurahDetail surahDetail,
    VerseSurah verseSurah,
  ) async {
    try {
      final result = await localDataSource
          .removeSurah(SurahTable.fromEntity(surahDetail, verseSurah));
      return Right(result);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, String>> saveSurah(
    SurahDetail surahDetail,
    VerseSurah verseSurah,
  ) async {
    try {
      final result = await localDataSource.insertSurah(SurahTable.fromEntity(
        surahDetail,
        verseSurah,
      ));
      return Right(result);
    } on DatabaseException catch (e) {
      return Left(DatabaseFailure(e.message));
    } catch (e) {
      throw e;
    }
  }
}
