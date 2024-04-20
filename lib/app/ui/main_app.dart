import 'package:flutter/material.dart';
import 'package:max_app/app/value/colors/app_colors.dart';
import 'package:max_app/app/value/theme/app_text_theme.dart';
import 'package:max_app/app/view/main_view.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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