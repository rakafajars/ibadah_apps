import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibadah_apps/common/color_theme.dart';
import 'package:ibadah_apps/common/style_text_theme.dart';
import 'package:ibadah_apps/presentation/bloc/surah/surah_bloc.dart';

class SurahPage extends StatelessWidget {
  const SurahPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SurahBloc>(
      create: (context) =>
          context.read<SurahBloc>()..add(const FetchSurahDetailEvent(1)),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Al-Quran'),
        ),
        body: BlocBuilder<SurahBloc, SurahState>(
          builder: (context, state) {
            if (state is SurahLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SurahHasData) {
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.result.length,
                itemBuilder: (context, int index) {
                  final surah = state.result[index];
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Card(
                          elevation: 0.0,
                          child: ListTile(
                            dense: true,
                            minLeadingWidth: 5,
                            leading: Container(
                              width: 36,
                              height: 36,
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: greyColor1,
                              ),
                              child: Text(
                                surah.number.toString(),
                                style: openSansMedium.copyWith(
                                  fontSize: 16,
                                  color: blueColor,
                                ),
                              ),
                            ),
                            title: Text(
                              surah.transliterationSurah.id,
                              style: openSansNormal.copyWith(
                                fontSize: 14,
                                color: blackColor,
                              ),
                            ),
                            subtitle: Text(
                              '${surah.translation.id} | ${surah.numberOfVerse} Ayat',
                              style: openSansNormal.copyWith(
                                fontSize: 12,
                                color: blackColor,
                              ),
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(
                                right: 24,
                              ),
                              child: Text(
                                surah.nameSurah.short,
                                textAlign: TextAlign.right,
                                style: arabicFont.copyWith(
                                  fontSize: 24,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const Divider(
                        thickness: 2,
                        color: greyColor1,
                      ),
                    ],
                  );
                },
              );
            } else if (state is SurahError) {
              return Center(
                child: Text(state.message),
              );
            } else if (state is SurahEmpty) {
              return Container();
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}
