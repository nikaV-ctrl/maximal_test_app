import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:max_app/app/routing/app_router.dart';
import 'package:max_app/app/ui/providers.dart';
import 'package:max_app/app/value/colors/app_colors.dart';
import 'package:max_app/generated/l10n.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    late final appRoute = AppRouter();

    return MultiBlocProvider(
      providers: [...providersList],
      child: MaterialApp.router(
        localizationsDelegates: const [
          S.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: S.delegate.supportedLocales,
        locale: S.delegate.supportedLocales
            .firstWhere((element) => element.languageCode == 'ru'),
        title: 'Maximal App',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          appBarTheme: const AppBarTheme(centerTitle: true),
          scaffoldBackgroundColor: AppColors.backgroundColor,
        ),
        routerConfig: appRoute.config(),
      ),
    );
  }
}
