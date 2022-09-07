import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:ibadah_apps/common/constant.dart';
import 'package:ibadah_apps/common/exception.dart';
import 'package:ibadah_apps/data/models/surah_model.dart';
import 'package:ibadah_apps/data/models/surah_response.dart';

abstract class SurahRemoteDataSource {
  Future<List<SurahModel>> getSurah();
}

class SurahRemoteDataSourceImpl implements SurahRemoteDataSource {
  final Dio dio;

  SurahRemoteDataSourceImpl(this.dio);

  @override
  Future<List<SurahModel>> getSurah() async {
    final response = await dio.get(
      '$BASE_URL_QURAN/surah',
    );

    if (response.statusCode == 200) {
      return SurahResponse.fromJson(response.data).surahList;
    } else {
      throw ServerException();
    }
  }
}
