import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibadah_apps/common/style_text_theme.dart';
import 'package:ibadah_apps/presentation/bloc/surah/surah_bloc.dart';

import '../../../common/color_theme.dart';

class SurahDetailPage extends StatelessWidget {
  const SurahDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<SurahBloc>(
      create: (context) =>
          context.read<SurahBloc>()..add(const FetchSurahDetailEvent(1)),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Surah',
            style: openSansMedium,
          ),
        ),
        body: BlocBuilder<SurahBloc, SurahState>(
          builder: (context, state) {
            if (state is SurahLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is SurahDetailHasData) {
              final juz = state.result.verses?.first;
              return Column(
                children: [
                  Container(
                    height: 32,
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 18,
                    ),
                    width: double.infinity,
                    color: blueColor,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${state.result.name?.transliteration?.id}",
                          style: openSansMedium.copyWith(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            color: whiteColor,
                          ),
                        ),
                        Text(
                          "Juz ${juz?.meta?.juz}",
                          style: openSansMedium.copyWith(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            color: whiteColor,
                          ),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [
                        if (state.result.preBismillah != null) ...[
                          Container(
                            color: Colors.transparent,
                            alignment: Alignment.center,
                            height: 54,
                            width: double.infinity,
                            child: Text(
                              state.result.preBismillah?.text?.arab ?? "",
                              style: arabicFont.copyWith(
                                fontSize: 30,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                        ListView.builder(
                          physics: const NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          itemCount: state.result.verses?.length,
                          itemBuilder: (context, int index) {
                            final data = state.result.verses?[index];
                            return Container(
                              padding: const EdgeInsets.only(
                                top: 12,
                                left: 20,
                                right: 20,
                                bottom: 16,
                              ),
                              color: index % 2 == 0
                                  ? const Color(0xFFF0F5FC)
                                  : Colors.white,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        flex: 1,
                                        child: Text(
                                          '${data?.number?.inSurah}.',
                                          style: robotMonoNormal.copyWith(
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 7,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: [
                                            Text(
                                              "${data?.text?.arab}",
                                              style: arabicFont.copyWith(
                                                fontSize: 30,
                                                letterSpacing: 0.3,
                                              ),
                                              textAlign: TextAlign.right,
                                            ),
                                            Text(
                                              data?.text?.transliteration?.en ??
                                                  "",
                                              style: openSansNormal.copyWith(
                                                fontSize: 14,
                                                letterSpacing: 0.3,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    data?.translation?.id ?? "",
                                    style: openSansNormal.copyWith(
                                      fontSize: 14,
                                      letterSpacing: 0.3,
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  )
                ],
              );
            } else if (state is SurahError) {
              return Center(
                child: Text(state.message),
              );
            } else {
              return Container();
            }
          },
        ),
      ),
    );
  }
}