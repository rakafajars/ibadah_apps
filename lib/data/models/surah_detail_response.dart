import 'package:equatable/equatable.dart';
import 'package:ibadah_apps/data/models/surah_detail_model.dart';

class SurahDetailResponse extends Equatable {
  final SurahDetailModel surahDetailModel;

  const SurahDetailResponse({required this.surahDetailModel});

  factory SurahDetailResponse.fromJson(Map<String, dynamic> json) =>
      SurahDetailResponse(
        surahDetailModel: SurahDetailModel.fromJson(
          json["data"],
        ),
      );

  @override
  List<Object?> get props => [surahDetailModel];
}
