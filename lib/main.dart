import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ibadah_apps/common/routes.dart';
import 'package:ibadah_apps/presentation/bloc/surah/surah_bloc.dart';
import 'package:ibadah_apps/presentation/bloc/surah_detail/surah_detail_bloc.dart';
import 'package:ibadah_apps/presentation/pages/home/home_page.dart';
import 'package:ibadah_apps/presentation/pages/qiblah/compass_qiblah_page.dart';
import 'package:ibadah_apps/presentation/pages/surah/surah_detail_page.dart';
import 'package:ibadah_apps/presentation/pages/surah/surah_page.dart';
import 'package:ibadah_apps/presentation/widget/scroll_web.dart';
import 'locator.dart' as di;

void main() async {
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.locator<SurahBloc>(),
        ),
        BlocProvider(
          create: (context) => di.locator<SurahDetailBloc>(),
        ),
      ],
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        title: 'Flutter Demo',
        navigatorObservers: [routeObserver],
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
        onGenerateRoute: (RouteSettings settings) {
          switch (settings.name) {
            case HOME_ROUTE:

            case SURAH_ROUTE:
              return CupertinoPageRoute(
                builder: (_) => const SurahPage(),
              );
            case SURAH_DETAIL_ROUTE:
              final id = settings.arguments as int;
              return CupertinoPageRoute(
                builder: (_) => SurahDetailPage(
                  id: id,
                ),
                settings: settings,
              );
            case ARAH_QIBLAT_ROUTE:
              return CupertinoPageRoute(
                builder: (_) => const CompassQiblahPage(),
              );

            default:
              return MaterialPageRoute(
                builder: (_) {
                  return const Scaffold(
                    body: Center(
                      child: Text('Page not found :('),
                    ),
                  );
                },
              );
          }
        },
      ),
    );
  }
}
