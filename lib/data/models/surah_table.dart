import 'package:equatable/equatable.dart';
import 'package:ibadah_apps/domain/entities/surah_detail.dart';

class SurahTable extends Equatable {
  final int id;
  final String arab;
  final String nameSurah;
  final String translationId;

  const SurahTable({
    required this.id,
    required this.arab,
    required this.translationId,
    required this.nameSurah,
  });

  factory SurahTable.fromEntity(
          SurahDetail surahDetail, VerseSurah verseSurah) =>
      SurahTable(
        id: verseSurah.number?.inQuran ?? -1,
        arab: verseSurah.text?.arab ?? "-",
        translationId: verseSurah.translation?.id ?? "-",
        nameSurah: surahDetail.name?.transliteration?.id ?? "",
      );

  factory SurahTable.fromMap(Map<String, dynamic> map) => SurahTable(
        id: map['id'],
        arab: map["arab"],
        translationId: map["translationId"],
        nameSurah: map["nameSurah"],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'arab': arab,
        'translationId': translationId,
        'nameSurah': nameSurah,
      };

  @override
  List<Object?> get props => [
        id,
        arab,
        translationId,
        nameSurah,
      ];
}
