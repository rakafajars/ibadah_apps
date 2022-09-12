import 'dart:io';

import 'package:fpdart/fpdart.dart';
import 'package:ibadah_apps/domain/entities/surah.dart';
import 'package:ibadah_apps/common/failure.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';
import 'package:ibadah_apps/domain/repositories/surah_repository.dart';

import '../../common/exception.dart';
import '../datasources/surah_remote_data_source.dart';

class SurahRepositoryImpl extends SurahRepository {
  final SurahRemoteDataSource remoteDataSource;

  SurahRepositoryImpl({required this.remoteDataSource});

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
}
