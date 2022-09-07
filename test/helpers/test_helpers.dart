import 'package:dio/dio.dart';
import 'package:ibadah_apps/data/datasources/surah_remote_data_source.dart';
import 'package:ibadah_apps/domain/repositories/surah_repository.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([
  SurahRepository,
  SurahRemoteDataSource,
], customMocks: [
  MockSpec<Dio>(as: #MockDio)
])
void main() {}
