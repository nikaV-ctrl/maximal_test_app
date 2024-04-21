import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:max_app/app/value/colors/app_colors.dart';
import 'package:max_app/app/value/theme/app_text_theme.dart';
import 'package:max_app/app/view/main_view.dart';
import 'package:max_app/generated/l10n.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        textTheme: AppTextTheme(),
      ),
      home: const MainView(),
    );
  }
}
